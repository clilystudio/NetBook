package com.clilystudio.netbook.ui;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class bh extends WebViewClient {
    bh(LuckyGameWebActivity paramLuckyGameWebActivity) {
    }

    public final void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean) {
        LuckyGameWebActivity.a(this.a);
    }

    public final void onPageFinished(WebView paramWebView, String paramString) {
        LuckyGameWebActivity.c(this.a);
        LuckyGameWebActivity.a(this.a);
    }

    public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap) {
        LuckyGameWebActivity.b(this.a);
    }
}

