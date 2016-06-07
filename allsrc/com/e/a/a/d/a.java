package com.e.a.a.d;

import android.os.Bundle;

public abstract class a
{
  private String a;
  private String b;

  public abstract int a();

  public void a(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", a());
    paramBundle.putString("_wxapi_basereq_transaction", this.a);
    paramBundle.putString("_wxapi_basereq_openid", this.b);
  }

  public void b(Bundle paramBundle)
  {
    this.a = paramBundle.getString("_wxapi_basereq_transaction");
    this.b = paramBundle.getString("_wxapi_basereq_openid");
  }

  public abstract boolean b();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.e.a.a.d.a
 * JD-Core Version:    0.6.0
 */