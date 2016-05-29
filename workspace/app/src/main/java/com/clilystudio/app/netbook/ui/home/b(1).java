package com.clilystudio.app.netbook.ui.home;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.b
 * JD-Core Version:    0.6.2
 */