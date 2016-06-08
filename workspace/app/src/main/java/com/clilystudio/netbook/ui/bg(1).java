package com.clilystudio.netbook.ui;

import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

final class bg extends WebChromeClient {
    bg(LuckyGameWebActivity paramLuckyGameWebActivity) {
    }

    public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage) {
        Log.i(LuckyGameWebActivity.b(), paramConsoleMessage.message().toString());
        return super.onConsoleMessage(paramConsoleMessage);
    }
}

