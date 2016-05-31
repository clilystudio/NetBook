package com.clilystudio.app.netbook.ui;

import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class d extends WebChromeClient {
    d(AdWebViewActivity paramAdWebViewActivity) {
    }

    public final void onReceivedTitle(WebView paramWebView, String paramString) {
        super.onReceivedTitle(paramWebView, paramString);
        if (!TextUtils.isEmpty(paramString)) {
            AdWebViewActivity.c_initContentView(this.a, paramString);
            this.a.d(paramString);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.d
 * JD-Core Version:    0.6.2
 */