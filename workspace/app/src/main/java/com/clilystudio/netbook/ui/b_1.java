package com.clilystudio.netbook.ui;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class b extends WebViewClient {

    private AdWebViewActivity a;

    b(AdWebViewActivity AdWebViewActivity1) {
        a = AdWebViewActivity1;
    }

    public final void doUpdateVisitedHistory(WebView WebView1, String String2, boolean boolean3) {
        AdWebViewActivity.b(a);
    }

    public final void onPageFinished(WebView WebView1, String String2) {
        AdWebViewActivity.d(a);
        AdWebViewActivity.b(a);
    }

    public final void onPageStarted(WebView WebView1, String String2, Bitmap Bitmap3) {
        AdWebViewActivity.c(a);
    }

    public final boolean shouldOverrideUrlLoading(WebView WebView1, String String2) {
        if (String2.startsWith("http:") || String2.startsWith("https:"))
            WebView1.loadUrl(String2);
        return true;
    }
}
