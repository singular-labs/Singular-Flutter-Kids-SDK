package com.singular.flutter_kids_sdk;

import android.content.Intent;

public class SingularBridge {
    public static void onNewIntent(Intent intent) {
        SingularSDK.onNewIntent(intent);
    }
}
