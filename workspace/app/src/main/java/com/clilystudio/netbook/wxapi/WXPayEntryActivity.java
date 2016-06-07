package com.clilystudio.netbook.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.e.a.a.g.a;
import com.e.a.a.g.c;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.util.e;

public class WXPayEntryActivity extends Activity
  implements com.e.a.a.g.b
{
  private a a;

  public final void a(com.e.a.a.d.b paramb)
  {
    com.squareup.a.b localb = i.a();
    boolean bool;
    if (paramb.a == 0)
    {
      bool = true;
      localb.c(new y(bool));
      switch (paramb.a)
      {
      default:
        com.umeng.a.b.a(this, "charge_money_failed", "weixinpay");
        e.a(this, "支付失败！");
      case 0:
      case -1:
      case -2:
      }
    }
    while (true)
    {
      finish();
      return;
      bool = false;
      break;
      e.a(this, "支付成功！");
      com.umeng.a.b.a(this, "charge_complete", "weixinpay");
      continue;
      com.umeng.a.b.a(this, "charge_money_failed", "weixinpay");
      e.a(this, "签名错误！");
      continue;
      com.umeng.a.b.a(this, "charge_money_cancel", "weixinpay");
      e.a(this, "取消支付！");
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = c.a(this, "wx1e7c2477db57dc75");
    this.a.a(getIntent(), this);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    this.a.a(paramIntent, this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.wxapi.WXPayEntryActivity
 * JD-Core Version:    0.6.0
 */