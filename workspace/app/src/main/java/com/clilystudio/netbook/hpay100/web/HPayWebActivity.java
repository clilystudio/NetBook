package com.clilystudio.netbook.hpay100.web;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.y;

public class HPayWebActivity extends Activity
{
  private static y a;
  private static String i = "";
  private HPayWebView b;
  private ImageView c;
  private TextView d;
  private ProgressBar e;
  private LinearLayout f;
  private ImageView g;
  private HPaySMS h = null;
  private Handler j = new b(this);
  private m k = new c(this);

  public static void a(Activity paramActivity, HPaySMS paramHPaySMS, String paramString, y paramy)
  {
    a = paramy;
    i = paramString;
    if (paramActivity == null)
      return;
    Intent localIntent = new Intent(paramActivity, HPayWebActivity.class);
    localIntent.putExtra("hpaysms", paramHPaySMS);
    paramActivity.startActivity(localIntent);
    j.a(paramActivity, a.a(paramActivity.getApplicationContext(), "anim", "hapy_push_left_in"), a.a(paramActivity.getApplicationContext(), "anim", "hpay_push_left_out"));
  }

  public void finish()
  {
    super.finish();
    j.a(this, a.a(getApplicationContext(), "anim", "hpay_push_right_in"), a.a(getApplicationContext(), "anim", "hpay_push_right_out"));
  }

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    requestWindowFeature(2);
    getWindow().addFlags(128);
    setContentView(a.a(getApplicationContext(), "layout", "hpay_act_wap_full"));
    this.c = ((ImageView)findViewById(a.a(getApplicationContext(), "id", "hpay_btnback")));
    this.d = ((TextView)findViewById(a.a(getApplicationContext(), "id", "hpay_tvTitle")));
    this.d.setText("短信充值");
    this.b = ((HPayWebView)findViewById(a.a(getApplicationContext(), "id", "hpay_webview")));
    this.e = ((ProgressBar)findViewById(a.a(getApplicationContext(), "id", "hpay_progressbar")));
    this.f = ((LinearLayout)findViewById(a.a(getApplicationContext(), "id", "hpay_net_error")));
    this.f.setOnClickListener(null);
    this.g = ((ImageView)findViewById(a.a(getApplicationContext(), "id", "hpay_error_image_retry")));
    this.e.setVisibility(4);
    this.b.setOnLongClickListener(new d(this));
    this.b.setOnTouchListener(new e(this));
    this.c.setOnClickListener(new f(this));
    this.g.setOnClickListener(new g(this));
    HPayWebView.a = 0;
    Intent localIntent = getIntent();
    String str;
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if (localBundle != null)
      {
        this.h = ((HPaySMS)localBundle.getSerializable("hpaysms"));
        if (this.h != null)
          if (this.h.mSdkFeeType == 16)
            str = this.h.mOpenUrl;
      }
    }
    while (true)
    {
      if (this.b != null)
        this.b.a(this, this.j, this.h, i, a, this.k);
      this.b.clearHistory();
      this.b.loadUrl(str);
      com.clilystudio.netbook.hpay100.config.b.a(new h(this));
      return;
      str = this.h.mFeeUrl;
      continue;
      str = "";
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    a = null;
    i = "";
    com.clilystudio.netbook.hpay100.config.b.a(null);
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }

  protected void onStart()
  {
    super.onStart();
  }

  public void onStop()
  {
    super.onStop();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.web.HPayWebActivity
 * JD-Core Version:    0.6.0
 */