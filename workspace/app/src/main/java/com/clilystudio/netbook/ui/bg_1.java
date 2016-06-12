package com.clilystudio.netbook.ui;

import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

final class bg extends WebChromeClient {

    bg(LuckyGameWebActivity LuckyGameWebActivity1) {
    }

    public final boolean onConsoleMessage(ConsoleMessage ConsoleMessage1) {
        Log.i(LuckyGameWebActivity.b(), ConsoleMessage1.message().toString());
        return super.onConsoleMessage(ConsoleMessage1);
    }
}
