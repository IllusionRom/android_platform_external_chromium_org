// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "content/renderer/pepper/ppapi_unittest.h"

#include "base/message_loop/message_loop.h"
#include "content/renderer/pepper/gfx_conversion.h"
#include "content/renderer/pepper/host_globals.h"
#include "content/renderer/pepper/pepper_plugin_instance_impl.h"
#include "content/renderer/pepper/plugin_module.h"
#include "ppapi/c/pp_errors.h"
#include "ppapi/c/pp_var.h"
#include "ppapi/c/ppp_instance.h"
#include "ppapi/shared_impl/ppapi_globals.h"
#include "ppapi/shared_impl/ppapi_permissions.h"

namespace content {

namespace {

PpapiUnittest* current_unittest = NULL;

const void* MockGetInterface(const char* interface_name) {
  return current_unittest->GetMockInterface(interface_name);
}

int MockInitializeModule(PP_Module, PPB_GetInterface) {
  return PP_OK;
}

// PPP_Instance implementation ------------------------------------------------

PP_Bool Instance_DidCreate(PP_Instance pp_instance,
                           uint32_t argc,
                           const char* argn[],
                           const char* argv[]) {
  return PP_TRUE;
}

void Instance_DidDestroy(PP_Instance instance) {
}

void Instance_DidChangeView(PP_Instance pp_instance, PP_Resource view) {
}

void Instance_DidChangeFocus(PP_Instance pp_instance, PP_Bool has_focus) {
}

PP_Bool Instance_HandleDocumentLoad(PP_Instance pp_instance,
                                    PP_Resource pp_url_loader) {
  return PP_FALSE;
}

static PPP_Instance mock_instance_interface = {
  &Instance_DidCreate,
  &Instance_DidDestroy,
  &Instance_DidChangeView,
  &Instance_DidChangeFocus,
  &Instance_HandleDocumentLoad
};

}  // namespace

// PpapiUnittest --------------------------------------------------------------

PpapiUnittest::PpapiUnittest() {
  DCHECK(!current_unittest);
  current_unittest = this;
}

PpapiUnittest::~PpapiUnittest() {
  DCHECK(current_unittest == this);
  current_unittest = NULL;
}

void PpapiUnittest::SetUp() {
  message_loop_.reset(new base::MessageLoop());

  // Initialize the mock module.
  module_ = new PluginModule("Mock plugin", base::FilePath(),
                             ppapi::PpapiPermissions());
  ppapi::PpapiGlobals::Get()->ResetMainThreadMessageLoopForTesting();
  PepperPluginInfo::EntryPoints entry_points;
  entry_points.get_interface = &MockGetInterface;
  entry_points.initialize_module = &MockInitializeModule;
  ASSERT_TRUE(module_->InitAsInternalPlugin(entry_points));

  // Initialize the mock instance.
  instance_ = PepperPluginInstanceImpl::Create(NULL, module(), NULL, GURL());
}

void PpapiUnittest::TearDown() {
  instance_ = NULL;
  module_ = NULL;
  message_loop_.reset();
  PluginModule::ResetHostGlobalsForTest();
}

const void* PpapiUnittest::GetMockInterface(const char* interface_name) const {
  if (strcmp(interface_name, PPP_INSTANCE_INTERFACE_1_0) == 0)
    return &mock_instance_interface;
  return NULL;
}

void PpapiUnittest::ShutdownModule() {
  DCHECK(instance_->HasOneRef());
  instance_ = NULL;
  DCHECK(module_->HasOneRef());
  module_ = NULL;
}

void PpapiUnittest::SetViewSize(int width, int height) const {
  instance_->view_data_.rect = PP_FromGfxRect(gfx::Rect(0, 0, width, height));
  instance_->view_data_.clip_rect = instance_->view_data_.rect;
}

}  // namespace content