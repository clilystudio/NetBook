package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.view.c;

import cn.sharesdk.framework.PlatformActionListener;

public final class cw {
    private Activity a;
    private WebView b;
    private PlatformActionListener c;

    public cw(Activity activity, WebView webView) {
        this.c = new cx(this);
        this.a = activity;
        this.b = webView;
    }

    static /* synthetic */ Activity a(cw cw2) {
        return cw2.a;
    }

    static /* synthetic */ void a(cw cw2, String string) {
        cw2.a.runOnUiThread(new cz(cw2, string));
    }

    static /* synthetic */ PlatformActionListener b(cw cw2) {
        return cw2.c;
    }

    static /* synthetic */ WebView c(cw cw2) {
        return cw2.b;
    }

    @JavascriptInterface
    public final void shareAll(String string, String string2, String string3) {
        this.shareAll("\u8ffd\u4e66\u795e\u5668", string, string2, string3);
    }

    @JavascriptInterface
    public final void shareAll(String string, String string2, String string3, String string4) {
        new c(this.a, new cy(this, string, string2, string3, string4)).a().show();
    }

    @JavascriptInterface
    public final void shareQZone(String string, String string2, String string3) {
        this.shareQZone("\u8ffd\u4e66\u795e\u5668", string, string2, string3);
    }

    @JavascriptInterface
    public final void shareQZone(String string, String string2, String string3, String string4) {
        T.a(this.a, string, string2, string3, string4, 4, this.c);
    }

    @JavascriptInterface
    public final void shareWeibo(String string, String string2, String string3) {
        this.shareWeibo("\u8ffd\u4e66\u795e\u5668", string, string2, string3);
    }

    @JavascriptInterface
    public final void shareWeibo(String string, String string2, String string3, String string4) {
        T.a(this.a, string, string2, string3, string4, 0, this.c);
    }

    @JavascriptInterface
    public final void shareWeixin(String string, String string2, String string3) {
        this.shareWeixin("\u8ffd\u4e66\u795e\u5668", string, string2, string3);
    }

    @JavascriptInterface
    public final void shareWeixin(String string, String string2, String string3, String string4) {
        T.a(this.a, string, string2, string3, string4, 2, this.c);
    }
}
