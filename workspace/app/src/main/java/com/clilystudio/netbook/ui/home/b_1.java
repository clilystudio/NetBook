package com.clilystudio.netbook.ui.home;

import android.webkit.WebView;
import android.webkit.WebViewClient;

final class b
        extends WebViewClient {
    b(HomeActivity homeActivity) {
    }

    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, String string) {
        webView.loadUrl(string);
        return true;
    }
}
