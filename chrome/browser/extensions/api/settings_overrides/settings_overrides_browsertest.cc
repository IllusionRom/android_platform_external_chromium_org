// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "base/prefs/pref_service.h"
#include "base/run_loop.h"
#include "base/strings/utf_string_conversions.h"
#include "chrome/browser/extensions/extension_browsertest.h"
#include "chrome/browser/prefs/session_startup_pref.h"
#include "chrome/browser/profiles/profile.h"
#include "chrome/browser/search_engines/template_url.h"
#include "chrome/browser/search_engines/template_url_service.h"
#include "chrome/browser/search_engines/template_url_service_factory.h"
#include "chrome/common/pref_names.h"

namespace {

class TemplateURLServiceObserver {
 public:
  TemplateURLServiceObserver(TemplateURLService* service,
                             base::RunLoop* loop)
      : runner_(loop) {
    DCHECK(loop);
    template_url_sub_ = service->RegisterOnLoadedCallback(
        base::Bind(&TemplateURLServiceObserver::StopLoop,
                   base::Unretained(this)));
    service->Load();
  }
  ~TemplateURLServiceObserver() {}

 private:
  void StopLoop() {
    runner_->Quit();
  }
  base::RunLoop* runner_;
  scoped_ptr<TemplateURLService::Subscription> template_url_sub_;

  DISALLOW_COPY_AND_ASSIGN(TemplateURLServiceObserver);
};

testing::AssertionResult VerifyTemplateURLServiceLoad(
    TemplateURLService* service) {
  if (service->loaded())
    return testing::AssertionSuccess();
  base::RunLoop runner;
  TemplateURLServiceObserver observer(service, &runner);
  runner.Run();
  if (service->loaded())
    return testing::AssertionSuccess();
  return testing::AssertionFailure() << "TemplateURLService isn't loaded";
}

IN_PROC_BROWSER_TEST_F(ExtensionBrowserTest, OverrideSettings) {
  PrefService* prefs = profile()->GetPrefs();
  ASSERT_TRUE(prefs);
  prefs->SetString(prefs::kHomePage, "http://google.com/");
  prefs->SetBoolean(prefs::kHomePageIsNewTabPage, true);
  const GURL urls[] = {GURL("http://foo"), GURL("http://bar")};
  SessionStartupPref startup_pref(SessionStartupPref::LAST);
  startup_pref.urls.assign(urls, urls + arraysize(urls));
  SessionStartupPref::SetStartupPref(prefs, startup_pref);
  TemplateURLService* url_service =
      TemplateURLServiceFactory::GetForProfile(profile());
  ASSERT_TRUE(url_service);
  EXPECT_TRUE(VerifyTemplateURLServiceLoad(url_service));
  TemplateURL* default_provider = url_service->GetDefaultSearchProvider();
  ASSERT_TRUE(default_provider);
  EXPECT_EQ(TemplateURL::NORMAL, default_provider->GetType());

  const extensions::Extension* extension = LoadExtension(
      test_data_dir_.AppendASCII("settings_override"));
  ASSERT_TRUE(extension);
  EXPECT_EQ("http://www.homepage.com/", prefs->GetString(prefs::kHomePage));
  EXPECT_FALSE(prefs->GetBoolean(prefs::kHomePageIsNewTabPage));
  startup_pref = SessionStartupPref::GetStartupPref(prefs);
  EXPECT_EQ(SessionStartupPref::URLS, startup_pref.type);
  EXPECT_EQ(std::vector<GURL>(1, GURL("http://www.startup.com")),
            startup_pref.urls);
  TemplateURL* extension_provider = url_service->GetDefaultSearchProvider();
  EXPECT_EQ(TemplateURL::NORMAL_CONTROLLED_BY_EXTENSION,
            extension_provider->GetType());
  EXPECT_EQ(ASCIIToUTF16("first"), extension_provider->short_name());
  EXPECT_EQ(ASCIIToUTF16("firstkey"), extension_provider->keyword());
  EXPECT_EQ("http://www.foo.com/s?q={searchTerms}", extension_provider->url());
  EXPECT_EQ(GURL("http://www.foo.com/favicon.ico"),
            extension_provider->favicon_url());
  EXPECT_EQ("http://www.foo.com/suggest?q={searchTerms}",
            extension_provider->suggestions_url());
  EXPECT_EQ(std::vector<std::string>(1, "UTF-8"),
            extension_provider->input_encodings());

  UnloadExtension(extension->id());
  EXPECT_EQ("http://google.com/", prefs->GetString(prefs::kHomePage));
  EXPECT_TRUE(prefs->GetBoolean(prefs::kHomePageIsNewTabPage));
  startup_pref = SessionStartupPref::GetStartupPref(prefs);
  EXPECT_EQ(SessionStartupPref::LAST, startup_pref.type);
  EXPECT_EQ(std::vector<GURL>(urls, urls + arraysize(urls)), startup_pref.urls);
  EXPECT_EQ(default_provider, url_service->GetDefaultSearchProvider());
}

}  // namespace