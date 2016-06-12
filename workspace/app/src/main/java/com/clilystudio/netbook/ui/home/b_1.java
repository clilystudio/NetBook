package com.clilystudio.netbook.ui.home;

import android.webkit.WebView;
import android.webkit.WebViewClient;

final class b extends WebViewClient {

    b(HomeActivity HomeActivity1) {
    }

    public final boolean shouldOverrideUrlLoading(WebView WebView1, String String2) {
        WebView1.loadUrl(String2);
        return true;
    }
}
