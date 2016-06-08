package com.clilystudio.netbook.ui;

import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class d extends WebChromeClient {
    d(AdWebViewActivity paramAdWebViewActivity) {
    }

    public final void onReceivedTitle(WebView paramWebView, String paramString) {
        super.onReceivedTitle(paramWebView, paramString);
        if (!TextUtils.isEmpty(paramString)) {
            AdWebViewActivity.c(this.a, paramString);
            this.a.d(paramString);
        }
    }
}

