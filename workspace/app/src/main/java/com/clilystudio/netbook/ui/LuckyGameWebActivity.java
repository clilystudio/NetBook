package com.clilystudio.netbook.ui;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.clilystudio.netbook.d;

public class LuckyGameWebActivity extends BaseActivity implements View.OnClickListener {
    private static final String a = LuckyGameWebActivity.class.getSimpleName();
    private WebView b;
    private View c;
    private View e;
    private View f;

    public static Intent a(Context context, String string, String string2) {
        return new d().a(context, LuckyGameWebActivity.class).a("extra_title", string).a("extra_url", string2).a();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(LuckyGameWebActivity luckyGameWebActivity) {
        boolean bl = true;
        View view = luckyGameWebActivity.e;
        boolean bl2 = luckyGameWebActivity.b != null && luckyGameWebActivity.b.canGoBack() ? bl : false;
        view.setEnabled(bl2);
        View view2 = luckyGameWebActivity.f;
        if (luckyGameWebActivity.b == null || !luckyGameWebActivity.b.canGoForward()) {
            bl = false;
        }
        view2.setEnabled(bl);
    }

    static /* synthetic */ String b() {
        return a;
    }

    static /* synthetic */ void b(LuckyGameWebActivity luckyGameWebActivity) {
        luckyGameWebActivity.c.setVisibility(0);
    }

    static /* synthetic */ void c(LuckyGameWebActivity luckyGameWebActivity) {
        luckyGameWebActivity.c.setVisibility(8);
    }

    static /* synthetic */ WebView d(LuckyGameWebActivity luckyGameWebActivity) {
        return luckyGameWebActivity.b;
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131494050: {
                this.b.goBack();
                return;
            }
            case 2131494051: {
                this.b.goForward();
                return;
            }
            case 2131494052:
        }
        this.b.reload();
    }

    @SuppressLint(value = {"JavascriptInterface"})
    @TargetApi(value = 9)
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903420);
        this.c(this.getIntent().getStringExtra("extra_title"));
        this.b = (WebView) this.findViewById(2131494048);
        this.c = this.findViewById(2131493085);
        this.e = this.findViewById(2131494050);
        this.f = this.findViewById(2131494051);
        View view = this.findViewById(2131494052);
        this.b.setVerticalScrollBarEnabled(true);
        WebSettings webSettings = this.b.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setAppCacheEnabled(true);
        this.b.setWebChromeClient((WebChromeClient) ((Object) new bg(this)));
        this.b.setWebViewClient((WebViewClient) ((Object) new bh(this)));
        this.b.setOnKeyListener((View.OnKeyListener) ((Object) new bi(this)));
        this.b.addJavascriptInterface(new cw(this, this.b), "ZssqAndroidApi");
        this.e.setOnClickListener(this);
        this.f.setOnClickListener(this);
        view.setOnClickListener(this);
        String string = this.getIntent().getStringExtra("extra_url");
        this.b.loadUrl(string);
    }
}
