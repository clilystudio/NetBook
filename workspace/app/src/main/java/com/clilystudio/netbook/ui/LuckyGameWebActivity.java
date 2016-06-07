package com.clilystudio.netbook.ui;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.clilystudio.netbook.d;

public class LuckyGameWebActivity extends BaseActivity
  implements View.OnClickListener
{
  private static final String a = LuckyGameWebActivity.class.getSimpleName();
  private WebView b;
  private View c;
  private View e;
  private View f;

  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    return new d().a(paramContext, LuckyGameWebActivity.class).a("extra_title", paramString1).a("extra_url", paramString2).a();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131494050:
      this.b.goBack();
      return;
    case 2131494051:
      this.b.goForward();
      return;
    case 2131494052:
    }
    this.b.reload();
  }

  @SuppressLint({"JavascriptInterface"})
  @TargetApi(9)
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903420);
    c(getIntent().getStringExtra("extra_title"));
    this.b = ((WebView)findViewById(2131494048));
    this.c = findViewById(2131493085);
    this.e = findViewById(2131494050);
    this.f = findViewById(2131494051);
    View localView = findViewById(2131494052);
    this.b.setVerticalScrollBarEnabled(true);
    WebSettings localWebSettings = this.b.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setAppCacheEnabled(true);
    this.b.setWebChromeClient(new bg(this));
    this.b.setWebViewClient(new bh(this));
    this.b.setOnKeyListener(new bi(this));
    this.b.addJavascriptInterface(new cw(this, this.b), "ZssqAndroidApi");
    this.e.setOnClickListener(this);
    this.f.setOnClickListener(this);
    localView.setOnClickListener(this);
    String str = getIntent().getStringExtra("extra_url");
    this.b.loadUrl(str);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.LuckyGameWebActivity
 * JD-Core Version:    0.6.0
 */