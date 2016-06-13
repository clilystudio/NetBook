package com.clilystudio.netbook.reader;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class dd
        extends WebViewClient {
    private /* synthetic */ WebPageFragment a;

    dd(WebPageFragment webPageFragment) {
        this.a = webPageFragment;
    }

    @Override
    public final void doUpdateVisitedHistory(WebView webView, String string, boolean bl) {
        WebPageFragment.a(this.a);
    }

    @Override
    public final void onPageFinished(WebView webView, String string) {
        WebPageFragment.c(this.a);
        WebPageFragment.a(this.a);
    }

    @Override
    public final void onPageStarted(WebView webView, String string, Bitmap bitmap) {
        WebPageFragment.b(this.a);
    }

    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, String string) {
        if (!"semob://hidetypesetView".equals(string)) {
            webView.loadUrl(string);
        }
        return true;
    }
}
