package com.clilystudio.app.netbook.ui;

import android.annotation.TargetApi;
import android.app.DownloadManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;

import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.ui.home.HomeActivity;

public class AdWebViewActivity extends BaseActivity
  implements View.OnClickListener
{
  private WebView a;
  private View b;
  private View c;
  private View e;
  private String f;
  private DownloadManager g = null;

  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    return new d_IntentFactory().a_setClass(paramContext, AdWebViewActivity.class).a_putExtra("extra_title", paramString1).a_putExtra("extra_url", paramString2).a();
  }

  public void onBackPressed()
  {
    super.onBackPressed();
    if (getIntent().getBooleanExtra("from_splash", false))
      startActivity(new Intent(this, HomeActivity.class));
    finish();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131494050:
      this.a.goBack();
      return;
    case 2131494051:
      this.a.goForward();
      return;
    case 2131494052:
    }
    this.a.reload();
  }

  @TargetApi(9)
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903420);
    this.f = getIntent().getStringExtra("extra_title");
    c(this.f);
    this.g = ((DownloadManager)getSystemService("download"));
    this.a = ((WebView)findViewById(2131494048));
    this.b = findViewById(2131493085);
    this.c = findViewById(2131494050);
    this.e = findViewById(2131494051);
    View localView = findViewById(2131494052);
    this.a.getSettings().setUseWideViewPort(true);
    this.a.getSettings().setLoadWithOverviewMode(true);
    this.a.setVerticalScrollBarEnabled(false);
    WebSettings localWebSettings = this.a.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setAppCacheEnabled(true);
    this.a.setDownloadListener(new a(this));
    this.a.setWebViewClient(new b(this));
    this.a.setOnKeyListener(new c(this));
    this.a.setWebChromeClient(new d(this));
    this.a.addJavascriptInterface(new cw(this, this.a), "ZssqAndroidApi");
    this.c.setOnClickListener(this);
    this.e.setOnClickListener(this);
    localView.setOnClickListener(this);
    String str = getIntent().getStringExtra("extra_url");
    this.a.loadUrl(str);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.AdWebViewActivity
 * JD-Core Version:    0.6.2
 */