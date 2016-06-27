package com.clilystudio.netbook.ui;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.ui.home.HomeActivity;

public class AdWebViewActivity extends BaseActivity implements View.OnClickListener {
    private WebView a;
    private View b;
    private View c;
    private View e;
    private String f;
    private DownloadManager g = null;

    static /* synthetic */ DownloadManager a(AdWebViewActivity adWebViewActivity) {
        return adWebViewActivity.g;
    }

    public static Intent a(Context context, String string, String string2) {
        return new com.clilystudio.netbook.d().a(context, AdWebViewActivity.class).a("extra_title", string).a("extra_url", string2).a();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final AdWebViewActivity adWebViewActivity, final String string) {
        boolean bl;
        DownloadManager.Query query = new DownloadManager.Query();
        Cursor cursor = adWebViewActivity.g.query(query);
        if (cursor != null) {
            while (cursor.moveToNext()) {
                String string2 = cursor.getString(cursor.getColumnIndex("uri"));
                int n = cursor.getInt(cursor.getColumnIndex("status"));
                if (!string2.equals(string) || n != 1 && n != 2) continue;
                bl = true;
                break;
            }
        } else {
            bl = false;
        }
        if (bl) {
            com.clilystudio.netbook.util.e.a((Activity) adWebViewActivity, (String) "\u5df2\u7ecf\u5728\u4e0b\u8f7d\u961f\u5217\u4e2d");
            return;
        }
        if (adWebViewActivity.isFinishing()) return;
        String string3 = com.clilystudio.netbook.hpay100.a.a.r(adWebViewActivity) == 1 ? "\u54c7\uff0c\u4f60\u6b63\u5904\u5728 Wi-Fi \u7f51\u7edc\u4e0b\uff0c\u4e0b\u8f7d\u65e0\u9700\u6d41\u91cf :)" : "\u5f53\u524d\u7f51\u7edc\u4e0b\u8f7d\u9700\u6d88\u8017\u6d41\u91cf\uff0c\u8bf7\u5c0f\u5fc3\u786e\u8ba4";
        h h2 = new h(adWebViewActivity).a(R.string.download);
        h2.e = string3;
        h2.a(R.string.ok, new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialog, int which) {
                com.clilystudio.netbook.util.e.a(adWebViewActivity, "开始下载");
                String string2 = com.clilystudio.netbook.hpay100.a.a.N(string);
                AdWebViewActivity.a(adWebViewActivity, string2);
            }
        }).b(R.string.cancel, null).b();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static /* synthetic */ void a(AdWebViewActivity adWebViewActivity, String string, String string2) {
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(string));
        request.setTitle(adWebViewActivity.f);
        if (com.clilystudio.netbook.hpay100.a.a.g()) {
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
        }
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, string2);
        try {
            adWebViewActivity.g.enqueue(request);
        } catch (Exception var6_4) {
            var6_4.printStackTrace();
        }
        MyApplication.a().h().add(string);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void b(AdWebViewActivity adWebViewActivity) {
        boolean bl = true;
        View view = adWebViewActivity.c;
        boolean bl2 = adWebViewActivity.a != null && adWebViewActivity.a.canGoBack() ? bl : false;
        view.setEnabled(bl2);
        View view2 = adWebViewActivity.e;
        if (adWebViewActivity.a == null || !adWebViewActivity.a.canGoForward()) {
            bl = false;
        }
        view2.setEnabled(bl);
    }

    static /* synthetic */ void b(AdWebViewActivity adWebViewActivity, String string) {
        am.a((Activity) adWebViewActivity, (String) string, (String) null);
    }

    static /* synthetic */ String c(AdWebViewActivity adWebViewActivity, String string) {
        adWebViewActivity.f = string;
        return string;
    }

    static /* synthetic */ void c(AdWebViewActivity adWebViewActivity) {
        adWebViewActivity.b.setVisibility(View.VISIBLE);
    }

    static /* synthetic */ void d(AdWebViewActivity adWebViewActivity) {
        adWebViewActivity.b.setVisibility(View.GONE);
    }

    static /* synthetic */ WebView e(AdWebViewActivity adWebViewActivity) {
        return adWebViewActivity.a;
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        if (this.getIntent().getBooleanExtra("from_splash", false)) {
            this.startActivity(new Intent(this, HomeActivity.class));
        }
        this.finish();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.btn_back: {
                this.a.goBack();
                return;
            }
            case R.id.btn_forward: {
                this.a.goForward();
                return;
            }
            case R.id.btn_reload:
        }
        this.a.reload();
    }

    @TargetApi(value = 9)
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.webview);
        this.f = this.getIntent().getStringExtra("extra_title");
        this.c(this.f);
        this.g = (DownloadManager) this.getSystemService("download");
        this.a = (WebView) this.findViewById(R.id.wv_web_page);
        this.b = this.findViewById(R.id.pb_loading);
        this.c = this.findViewById(R.id.btn_back);
        this.e = this.findViewById(R.id.btn_forward);
        View view = this.findViewById(R.id.btn_reload);
        this.a.getSettings().setUseWideViewPort(true);
        this.a.getSettings().setLoadWithOverviewMode(true);
        this.a.setVerticalScrollBarEnabled(false);
        WebSettings webSettings = this.a.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setAppCacheEnabled(true);
        this.a.setDownloadListener(new DownloadListener() {
            @Override
            public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
                if (AdWebViewActivity.this.b != null) {
                    AdWebViewActivity.a(AdWebViewActivity.this, url);
                 } else {
                    AdWebViewActivity.b(AdWebViewActivity.this, url);
                }
            }
        });
        this.a.setWebViewClient((WebViewClient) ((Object) new b(this)));
        this.a.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (keyCode == 4 && AdWebViewActivity.this.a.canGoBack()) {
                    AdWebViewActivity.this.a.goBack();
                    return true;
                }
                return false;
            }
        });
        this.a.setWebChromeClient(new WebChromeClient(){

            @Override
            public void onReceivedTitle(WebView view, String title) {
                super.onReceivedTitle(view, title);
                if (!TextUtils.isEmpty(title)) {
                    AdWebViewActivity.this.f = title;
                    AdWebViewActivity.this.d(title);
                }
            }
        });
        this.c.setOnClickListener(this);
        this.e.setOnClickListener(this);
        view.setOnClickListener(this);
        String string = this.getIntent().getStringExtra("extra_url");
        this.a.loadUrl(string);
    }
}
