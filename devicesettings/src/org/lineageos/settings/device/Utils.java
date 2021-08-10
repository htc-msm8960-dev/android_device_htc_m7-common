/*
 * Copyright (C) 2017 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.lineageos.settings.device;

import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import org.lineageos.internal.util.FileUtils;
import android.util.Log;

public class Utils {

    public static final String CONTROL_PATH = "/sys/android_touch/doubletap2wake";
    private static final String TAG = "HTC Gesture Utils";

    public static void broadcastTapToWakeEnabled(Context context, boolean enabled) {
        writeSysfsValue(enabled);
    }

    public static void writeSysfsValue(boolean enabled){
        String isEnabled = "0";

        if (enabled) {
            isEnabled = "2";
        } else {
            isEnabled = "0";
        }

        if (!FileUtils.isFileReadable(CONTROL_PATH) || !FileUtils.isFileWritable(CONTROL_PATH)) {
            Log.w(TAG, "Control path not accessible, unable to disable sensor");
            return;
        }

        if (!FileUtils.writeLine(CONTROL_PATH, isEnabled)) {
            Log.w(TAG, "Failed to write control path, unable to disable sensor");
            return;
        }
    }
}
