// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef MEDIA_AUDIO_SOUNDS_SOUNDS_MANAGER_H_
#define MEDIA_AUDIO_SOUNDS_SOUNDS_MANAGER_H_

#include <vector>

#include "base/basictypes.h"
#include "base/strings/string_piece.h"
#include "base/threading/non_thread_safe.h"
#include "base/time/time.h"
#include "media/base/media_export.h"

namespace media {

// This class is used for reproduction of system sounds. All methods
// should be accessed from the Audio thread.
class MEDIA_EXPORT SoundsManager : public base::NonThreadSafe {
 public:
  // TODO(dalecurtis): Define elsewhere (belongs under chromeos). See
  // crbug.com/321335.
  enum Sound {
    SOUND_STARTUP = 0,
    SOUND_LOCK,
    SOUND_UNLOCK,
    SOUND_SHUTDOWN,
    SOUND_SPOKEN_FEEDBACK_ENABLED,
    SOUND_SPOKEN_FEEDBACK_DISABLED,
    SOUND_COUNT
  };

  // Creates a singleton instance of the SoundsManager.
  static void Create();

  // Removes a singleton instance of the SoundsManager.
  static void Shutdown();

  // Returns a pointer to a singleton instance of the SoundsManager.
  static SoundsManager* Get();

  // Initializes SoundsManager with the wav data for the system
  // sounds. Returns true if SoundsManager was successfully
  // initialized.
  virtual bool Initialize(const std::vector<base::StringPiece>& resources) = 0;

  // Plays |sound|, returns false if SoundsManager was not properly
  // initialized.
  virtual bool Play(Sound sound) = 0;

  // Returns duration of the |sound|. If SoundsManager was not
  // properly initialized returns an empty value.
  virtual base::TimeDelta GetDuration(Sound sound) = 0;

 protected:
  SoundsManager();
  virtual ~SoundsManager();

 private:
  DISALLOW_COPY_AND_ASSIGN(SoundsManager);
};

}  // namespace media

#endif  // MEDIA_AUDIO_SOUNDS_SOUNDS_MANAGER_H_
