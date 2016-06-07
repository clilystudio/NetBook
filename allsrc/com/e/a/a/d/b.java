package com.e.a.a.d;

import android.os.Bundle;

public abstract class b
{
  public int a;

  public void a(Bundle paramBundle)
  {
    this.a = paramBundle.getInt("_wxapi_baseresp_errcode");
    paramBundle.getString("_wxapi_baseresp_errstr");
    paramBundle.getString("_wxapi_baseresp_transaction");
    paramBundle.getString("_wxapi_baseresp_openId");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.e.a.a.d.b
 * JD-Core Version:    0.6.0
 */