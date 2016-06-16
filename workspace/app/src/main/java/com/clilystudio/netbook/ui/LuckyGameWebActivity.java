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
        luckyGameWebActivity.c.setVisibility(View.VISIBLE);
    }

    static /* synthetic */ void c(LuckyGameWebActivity luckyGameWebActivity) {
        luckyGameWebActivity.c.setVisibility(View.GONE);
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
            case R.id.btn_back: {
                this.b.goBack();
                return;
            }
            case R.id.btn_forward: {
                this.b.goForward();
                return;
            }
            case R.id.btn_reload:
        }
        this.b.reload();
    }

    @SuppressLint(value = {"JavascriptInterface"})
    @TargetApi(value = 9)
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.webview);
        this.c(this.getIntent().getStringExtra("extra_title"));
        this.b = (WebView) this.findViewById(R.id.wv_web_page);
        this.c = this.findViewById(R.id.pb_loading);
        this.e = this.findViewById(R.id.btn_back);
        this.f = this.findViewById(R.id.btn_forward);
        View view = this.findViewById(R.id.btn_reload);
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
