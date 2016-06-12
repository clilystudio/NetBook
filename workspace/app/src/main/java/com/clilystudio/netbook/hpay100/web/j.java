package com.clilystudio.netbook.hpay100.web;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class j extends WebChromeClient {

    private HPayWebView a;

    j(HPayWebView HPayWebView1) {
        a = HPayWebView1;
    }

    public final void onProgressChanged(WebView WebView1, int int2) {
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("onProgressChanged:").append(int2).toString());
        if (HPayWebView.a(a) != null)
            HPayWebView.a(a).a(5, Integer.valueOf(int2));
    }

    public final void onReceivedTitle(WebView WebView1, String String2) {
        super.onReceivedTitle(WebView1, String2);
    }
}
