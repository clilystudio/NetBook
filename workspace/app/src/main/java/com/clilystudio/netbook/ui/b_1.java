package com.clilystudio.netbook.ui;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class b
        extends WebViewClient {
    private /* synthetic */ AdWebViewActivity a;

    b(AdWebViewActivity adWebViewActivity) {
        this.a = adWebViewActivity;
    }

    @Override
    public final void doUpdateVisitedHistory(WebView webView, String string, boolean bl) {
        AdWebViewActivity.b(this.a);
    }

    @Override
    public final void onPageFinished(WebView webView, String string) {
        AdWebViewActivity.d(this.a);
        AdWebViewActivity.b(this.a);
    }

    @Override
    public final void onPageStarted(WebView webView, String string, Bitmap bitmap) {
        AdWebViewActivity.c(this.a);
    }

    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, String string) {
        if (string.startsWith("http:") || string.startsWith("https:")) {
            webView.loadUrl(string);
        }
        return true;
    }
}
