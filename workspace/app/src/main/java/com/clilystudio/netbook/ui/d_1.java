package com.clilystudio.netbook.ui;

import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class d
        extends WebChromeClient {
    private /* synthetic */ AdWebViewActivity a;

    d(AdWebViewActivity adWebViewActivity) {
        this.a = adWebViewActivity;
    }

    @Override
    public final void onReceivedTitle(WebView webView, String string) {
        super.onReceivedTitle(webView, string);
        if (!TextUtils.isEmpty(string)) {
            AdWebViewActivity.c(this.a, string);
            this.a.d(string);
        }
    }
}
