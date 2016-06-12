package com.clilystudio.netbook.ui;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class bh extends WebViewClient {

    private LuckyGameWebActivity a;

    bh(LuckyGameWebActivity LuckyGameWebActivity1) {
        a = LuckyGameWebActivity1;
    }

    public final void doUpdateVisitedHistory(WebView WebView1, String String2, boolean boolean3) {
        LuckyGameWebActivity.a(a);
    }

    public final void onPageFinished(WebView WebView1, String String2) {
        LuckyGameWebActivity.c(a);
        LuckyGameWebActivity.a(a);
    }

    public final void onPageStarted(WebView WebView1, String String2, Bitmap Bitmap3) {
        LuckyGameWebActivity.b(a);
    }
}
