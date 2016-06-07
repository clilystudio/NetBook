package com.arcsoft.hpay100;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextUtils;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.arcsoft.hpay100.c.c;
import com.arcsoft.hpay100.config.HPaySMS;
import com.arcsoft.hpay100.config.b;

public class HPaySdkActivity extends Activity
{
  private static String Q;
  public static y a;
  private static int c = 3;
  private TextView A = null;
  private TextView B = null;
  private TextView C = null;
  private EditText D = null;
  private Button E = null;
  private Button F = null;
  private TextView G = null;
  private TextView H = null;
  private TextView I = null;
  private ImageView J = null;
  private ImageView K = null;
  private boolean L = true;
  private String M = "";
  private x N;
  private HPaySMS O;
  private HPaySMS P;
  private String R = "";
  private String S = "";
  private String T = "";
  private int U = 0;
  private int V = 0;
  private Dialog b = null;
  private ImageView d = null;
  private TextView e = null;
  private TextView f = null;
  private TextView g = null;
  private TextView h = null;
  private TextView i = null;
  private TextView j = null;
  private TextView k = null;
  private Button l = null;
  private TextView m = null;
  private ImageView n = null;
  private TextView o = null;
  private ScrollView p = null;
  private ScrollView q = null;
  private TextView r = null;
  private EditText s = null;
  private Button t = null;
  private TextView u = null;
  private TextView v = null;
  private TextView w = null;
  private TextView x = null;
  private TextView y = null;
  private TextView z = null;

  static
  {
    Q = "";
  }

  public static void a(Activity paramActivity, int paramInt, HPaySMS paramHPaySMS, y paramy)
  {
    a = paramy;
    c = paramInt;
    Intent localIntent = new Intent(paramActivity, HPaySdkActivity.class);
    localIntent.putExtra("hpay_sms", paramHPaySMS);
    paramActivity.startActivity(localIntent);
    com.arcsoft.hpay100.c.j.a(paramActivity, com.arcsoft.hpay100.a.a.a(paramActivity.getApplicationContext(), "anim", "hapy_push_left_in"), com.arcsoft.hpay100.a.a.a(paramActivity.getApplicationContext(), "anim", "hpay_push_left_out"));
  }

  public static void a(Activity paramActivity, String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, int paramInt3, y paramy)
  {
    a = paramy;
    c = paramInt1;
    Intent localIntent = new Intent(paramActivity, HPaySdkActivity.class);
    localIntent.putExtra("hpay_orderid", paramString1);
    localIntent.putExtra("hpay_payid", paramString2);
    localIntent.putExtra("hpay_price", paramInt2);
    localIntent.putExtra("hpay_payname", paramString3);
    localIntent.putExtra("hpay_codetype", paramInt3);
    paramActivity.startActivity(localIntent);
    com.arcsoft.hpay100.c.j.a(paramActivity, com.arcsoft.hpay100.a.a.a(paramActivity.getApplicationContext(), "anim", "hapy_push_left_in"), com.arcsoft.hpay100.a.a.a(paramActivity.getApplicationContext(), "anim", "hpay_push_left_out"));
  }

  private static void a(ImageView paramImageView, boolean paramBoolean)
  {
    if (paramImageView != null)
      if (!paramBoolean)
        break label20;
    label20: for (String str = "#DFDFDF"; ; str = "#B93221")
    {
      paramImageView.setBackgroundColor(Color.parseColor(str));
      return;
    }
  }

  private void b()
  {
    this.p.setVisibility(0);
    this.q.setVisibility(4);
    this.s.setFocusableInTouchMode(true);
    this.s.requestFocus();
    this.o.setText("短信充值");
    this.r.setText("请输入本机或者其他手机号");
    this.t.setText("下一步");
    this.u.setText("温馨提示：由于运营商的相关规定，不同地区有充值次数的限制；若无法充值，请使用其他充值方式。");
  }

  private void c()
  {
    c.a(this, com.arcsoft.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_retain"), "您真的要放弃吗？", null, new i(this));
  }

  private void d()
  {
    c.a(this, com.arcsoft.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_retain"), "您真的要放弃吗？", null, new j(this));
  }

  private void e()
  {
    try
    {
      if (this.N != null)
      {
        this.N.cancel();
        this.N = null;
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void finish()
  {
    com.arcsoft.hpay100.a.a.b("dalongTest", "finsh");
    com.arcsoft.hpay100.c.j.a(this);
    super.finish();
    a = null;
    c = 3;
    b.a(null);
    e();
    com.arcsoft.hpay100.c.j.a(this, com.arcsoft.hpay100.a.a.a(getApplicationContext(), "anim", "hpay_push_right_in"), com.arcsoft.hpay100.a.a.a(getApplicationContext(), "anim", "hpay_push_right_out"));
  }

  public void onBackPressed()
  {
    if (c == 3)
    {
      c();
      return;
    }
    if (c == 1)
    {
      if (this.L)
      {
        d();
        return;
      }
      b.a(null);
      this.L = true;
      b();
      this.t.setEnabled(true);
      e();
      return;
    }
    super.onBackPressed();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.arcsoft.hpay100.a.a.b("dalongTest", "onCreate");
    requestWindowFeature(1);
    getWindow().addFlags(128);
    int i1 = com.arcsoft.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_dd");
    switch (c)
    {
    default:
      setContentView(i1);
      switch (c)
      {
      case 2:
      default:
      case 3:
      case 1:
      }
    case 3:
    case 2:
    case 1:
    }
    while (true)
    {
      return;
      i1 = com.arcsoft.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_dd");
      break;
      i1 = com.arcsoft.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_wap");
      break;
      i1 = com.arcsoft.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_dy");
      break;
      this.d = ((ImageView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_img_back_dd")));
      this.e = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_top_dd")));
      this.f = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_yymc_left_dd")));
      this.g = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_yymc_right_dd")));
      this.h = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_spmc_left_dd")));
      this.i = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_spmc_right_dd")));
      this.j = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_zfje_left_dd")));
      this.k = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_zfje_right_dd")));
      this.l = ((Button)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_btn_qdtj_dd")));
      this.l.setText("确认提交");
      this.m = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_wxts_bottom_dd")));
      this.l.setOnClickListener(new g(this));
      this.d.setOnClickListener(new l(this));
      Intent localIntent2 = getIntent();
      if (localIntent2 != null)
        this.P = ((HPaySMS)localIntent2.getSerializableExtra("hpay_sms"));
      com.arcsoft.hpay100.a.a.b("dalongTest", "mPaySMSDD:" + this.P);
      getApplicationContext();
      Q = com.arcsoft.hpay100.a.a.c();
      this.e.setText("短信充值");
      String str2 = com.arcsoft.hpay100.config.a.a(this.P.mAmount);
      this.f.setText("应用名称");
      this.g.setText(Q);
      this.h.setText("商品名称");
      this.i.setText(this.P.mPayName);
      this.j.setText("支付金额");
      this.k.setText(str2);
      getApplicationContext();
      String str3 = com.arcsoft.hpay100.a.a.b();
      String str4 = "温馨提示：本次支付金额" + str2 + "，不含通信费，由运营商代收。客服电话：" + str3;
      this.m.setText(str4);
      return;
      this.n = ((ImageView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_img_back_dy")));
      this.o = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_top_dy")));
      this.p = ((ScrollView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_scroll_inputphone_dy")));
      this.r = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_input_title_dy")));
      this.s = ((EditText)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_et_inputphone_dy")));
      this.t = ((Button)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_btn_input_next_dy")));
      this.u = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_input_wxts_bottom_dy")));
      this.q = ((ScrollView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_scroll_layout_ver_dy")));
      this.v = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_yyms_left_dy")));
      this.w = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_yyms_right_dy")));
      this.x = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_spmc_left_dy")));
      this.y = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_spmc_right_dy")));
      this.z = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_zfje_left_dy")));
      this.A = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_zfje_right_dy")));
      this.B = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_sjh_left_dy")));
      this.C = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_sjh_right_dy")));
      this.D = ((EditText)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_et_ver_yzm_dy")));
      this.E = ((Button)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_btn_ver_yzm_dy")));
      this.F = ((Button)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_btn_ver_tj_dy")));
      this.G = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_show_yzm_error_dy")));
      this.H = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_wxts_bottom_dy")));
      this.I = ((TextView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "tv_input_num_error")));
      this.J = ((ImageView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_view_line_inputphone_dy")));
      this.K = ((ImageView)findViewById(com.arcsoft.hpay100.a.a.a(getApplicationContext(), "id", "hpay_iv_ver_yzm_line_dy")));
      a(this.J, true);
      this.t.setOnClickListener(new m(this));
      this.F.setOnClickListener(new n(this));
      this.E.setOnClickListener(new o(this));
      this.n.setOnClickListener(new p(this));
      this.s.addTextChangedListener(new q(this));
      this.D.addTextChangedListener(new r(this));
      this.M = "";
      this.L = true;
      this.O = null;
      getApplicationContext();
      Q = com.arcsoft.hpay100.a.a.c();
      Intent localIntent1 = getIntent();
      if ((localIntent1 != null) && (localIntent1.getExtras() != null))
      {
        this.T = localIntent1.getExtras().getString("hpay_orderid");
        this.R = localIntent1.getExtras().getString("hpay_payid");
        this.S = localIntent1.getExtras().getString("hpay_payname");
        this.U = localIntent1.getExtras().getInt("hpay_price");
        this.V = localIntent1.getExtras().getInt("hpay_codetype");
      }
      b.a(null);
      b();
      this.t.setEnabled(false);
      String str1 = com.arcsoft.hpay100.config.l.e(getApplicationContext());
      if (TextUtils.isEmpty(str1))
        continue;
      this.s.setText(str1);
      try
      {
        this.s.setFocusableInTouchMode(true);
        this.s.requestFocus();
        this.s.setEnabled(true);
        Editable localEditable = this.s.getText();
        if (!(localEditable instanceof Spannable))
          continue;
        Selection.setSelection((Spannable)localEditable, localEditable.length());
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  protected void onDestroy()
  {
    com.arcsoft.hpay100.a.a.b("dalongTest", "onDestroy");
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
    com.arcsoft.hpay100.a.a.b("dalongTest", "onPause");
  }

  protected void onRestart()
  {
    super.onRestart();
    com.arcsoft.hpay100.a.a.b("dalongTest", "onRestart");
  }

  protected void onResume()
  {
    super.onResume();
    com.arcsoft.hpay100.a.a.b("dalongTest", "onResume");
  }

  protected void onStart()
  {
    super.onStart();
    com.arcsoft.hpay100.a.a.b("dalongTest", "onStart");
  }

  protected void onStop()
  {
    super.onStop();
    com.arcsoft.hpay100.a.a.b("dalongTest", "onStop");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.HPaySdkActivity
 * JD-Core Version:    0.6.0
 */