package com.clilystudio.netbook.ui;

import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

final class bg
        extends WebChromeClient {
    bg(LuckyGameWebActivity luckyGameWebActivity) {
    }

    @Override
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        Log.i(LuckyGameWebActivity.b(), consoleMessage.message().toString());
        return super.onConsoleMessage(consoleMessage);
    }
}
