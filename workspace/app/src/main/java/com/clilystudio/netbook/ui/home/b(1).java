package com.clilystudio.netbook.ui.home;

import android.webkit.WebView;
import android.webkit.WebViewClient;

final class b extends WebViewClient {
    b(HomeActivity paramHomeActivity) {
    }

    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString) {
        paramWebView.loadUrl(paramString);
        return true;
    }
}

