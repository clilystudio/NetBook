package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnKeyListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class LuckyGameWebActivity extends BaseActivity implements View$OnClickListener {
// Error: Internal #201: 
// The following method may not be correct.

    private static final String a = null;

    static {
    }

    private WebView b;
    private View c;
    private View e;
    private View f;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3) {
    }

    static void a(LuckyGameWebActivity LuckyGameWebActivity1) {
        boolean boolean2 = true;
        View View3 = LuckyGameWebActivity1.e;
        boolean boolean4;
        View View5;

        if (LuckyGameWebActivity1.b != null && LuckyGameWebActivity1.b.canGoBack())
            boolean4 = boolean2;
        else
            boolean4 = false;
        View3.setEnabled(boolean4);
        View5 = LuckyGameWebActivity1.f;
        if (LuckyGameWebActivity1.b == null || !LuckyGameWebActivity1.b.canGoForward())
            boolean2 = false;
        View5.setEnabled(boolean2);
    }

    static String b() {
        return a;
    }

    static void b(LuckyGameWebActivity LuckyGameWebActivity1) {
        LuckyGameWebActivity1.c.setVisibility(0);
    }

    static void c(LuckyGameWebActivity LuckyGameWebActivity1) {
        LuckyGameWebActivity1.c.setVisibility(8);
    }

    static WebView d(LuckyGameWebActivity LuckyGameWebActivity1) {
        return LuckyGameWebActivity1.b;
    }

    public void onClick(View View1) {
        switch (View1.getId()) {
            default:
                return;
            case 1186:
                b.goBack();
                return;
            case 1187:
                b.goForward();
                return;
            case 1188:
                b.reload();
                return;
        }
    }

    protected void onCreate(Bundle Bundle1) {
        View View2;
        WebSettings WebSettings3;
        String String4;

        super.onCreate(Bundle1);
        setContentView(2130903420);
        c(getIntent().getStringExtra("extra_title"));
        b = (WebView) findViewById(2131494048);
        c = findViewById(2131493085);
        e = findViewById(2131494050);
        f = findViewById(2131494051);
        View2 = findViewById(2131494052);
        b.setVerticalScrollBarEnabled(true);
        WebSettings3 = b.getSettings();
        WebSettings3.setJavaScriptEnabled(true);
        WebSettings3.setDomStorageEnabled(true);
        WebSettings3.setAppCacheEnabled(true);
        b.setWebChromeClient((WebChromeClient) new bg(this));
        b.setWebViewClient((WebViewClient) new bh(this));
        b.setOnKeyListener((View$OnKeyListener) new bi(this));
        b.addJavascriptInterface(new cw((Activity) this, b), "ZssqAndroidApi");
        e.setOnClickListener(this);
        f.setOnClickListener(this);
        View2.setOnClickListener(this);
        String4 = getIntent().getStringExtra("extra_url");
        b.loadUrl(String4);
    }
}
