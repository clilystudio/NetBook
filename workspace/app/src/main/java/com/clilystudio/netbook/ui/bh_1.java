package com.clilystudio.netbook.ui;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class bh extends WebViewClient {
    private /* synthetic */ LuckyGameWebActivity a;

    bh(LuckyGameWebActivity luckyGameWebActivity) {
        this.a = luckyGameWebActivity;
    }

    @Override
    public final void doUpdateVisitedHistory(WebView webView, String string, boolean bl) {
        LuckyGameWebActivity.a(this.a);
    }

    @Override
    public final void onPageFinished(WebView webView, String string) {
        LuckyGameWebActivity.c(this.a);
        LuckyGameWebActivity.a(this.a);
    }

    @Override
    public final void onPageStarted(WebView webView, String string, Bitmap bitmap) {
        LuckyGameWebActivity.b(this.a);
    }
}
