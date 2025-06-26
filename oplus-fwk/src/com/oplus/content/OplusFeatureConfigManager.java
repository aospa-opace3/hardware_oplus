/*
 * Copyright (C) 2024 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package com.oplus.content;

import android.text.TextUtils;

import java.util.List;

public class OplusFeatureConfigManager {
    public static OplusFeatureConfigManager sInstance = null;

    public static OplusFeatureConfigManager getInstance() {
        if (sInstance == null) {
            sInstance = new OplusFeatureConfigManager();
        }
        return sInstance;
    }

    public boolean hasFeature(String featureName) {
        if ("oplus.hardware.type.rear_IR".equals(name)) {
            return true;
        }
        return false;
    }

    public interface OnFeatureObserver {
        default void onFeatureUpdate(List<String> features) {}
    }
}
