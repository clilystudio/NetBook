package com.clilystudio.app.netbook.ui;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bg
 * JD-Core Version:    0.6.2
 */