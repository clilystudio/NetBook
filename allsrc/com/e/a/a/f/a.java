package com.e.a.a.f;

import android.os.Bundle;

public final class a extends com.e.a.a.d.a
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  private String h;
  private b i;

  public final int a()
  {
    return 5;
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    paramBundle.putString("_wxapi_payreq_appid", this.a);
    paramBundle.putString("_wxapi_payreq_partnerid", this.b);
    paramBundle.putString("_wxapi_payreq_prepayid", this.c);
    paramBundle.putString("_wxapi_payreq_noncestr", this.d);
    paramBundle.putString("_wxapi_payreq_timestamp", this.e);
    paramBundle.putString("_wxapi_payreq_packagevalue", this.f);
    paramBundle.putString("_wxapi_payreq_sign", this.g);
    paramBundle.putString("_wxapi_payreq_extdata", this.h);
    if (this.i != null)
    {
      b localb = this.i;
      paramBundle.putString("_wxapi_payoptions_callback_classname", localb.a);
      paramBundle.putInt("_wxapi_payoptions_callback_flags", localb.b);
    }
  }

  public final void b(Bundle paramBundle)
  {
    super.b(paramBundle);
    this.a = paramBundle.getString("_wxapi_payreq_appid");
    this.b = paramBundle.getString("_wxapi_payreq_partnerid");
    this.c = paramBundle.getString("_wxapi_payreq_prepayid");
    this.d = paramBundle.getString("_wxapi_payreq_noncestr");
    this.e = paramBundle.getString("_wxapi_payreq_timestamp");
    this.f = paramBundle.getString("_wxapi_payreq_packagevalue");
    this.g = paramBundle.getString("_wxapi_payreq_sign");
    this.h = paramBundle.getString("_wxapi_payreq_extdata");
    this.i = new b();
    b localb = this.i;
    localb.a = paramBundle.getString("_wxapi_payoptions_callback_classname");
    localb.b = paramBundle.getInt("_wxapi_payoptions_callback_flags", -1);
  }

  public final boolean b()
  {
    if ((this.a == null) || (this.a.length() == 0))
    {
      com.e.a.a.b.a.a("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid appId");
      return false;
    }
    if ((this.b == null) || (this.b.length() == 0))
    {
      com.e.a.a.b.a.a("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid partnerId");
      return false;
    }
    if ((this.c == null) || (this.c.length() == 0))
    {
      com.e.a.a.b.a.a("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid prepayId");
      return false;
    }
    if ((this.d == null) || (this.d.length() == 0))
    {
      com.e.a.a.b.a.a("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid nonceStr");
      return false;
    }
    if ((this.e == null) || (this.e.length() == 0))
    {
      com.e.a.a.b.a.a("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid timeStamp");
      return false;
    }
    if ((this.f == null) || (this.f.length() == 0))
    {
      com.e.a.a.b.a.a("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid packageValue");
      return false;
    }
    if ((this.g == null) || (this.g.length() == 0))
    {
      com.e.a.a.b.a.a("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid sign");
      return false;
    }
    if ((this.h != null) && (this.h.length() > 1024))
    {
      com.e.a.a.b.a.a("MicroMsg.PaySdk.PayReq", "checkArgs fail, extData length too long");
      return false;
    }
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.e.a.a.f.a
 * JD-Core Version:    0.6.0
 */