package com.e.a.a.e;

import android.os.Bundle;

public final class c extends com.e.a.a.d.a
{
  public String a;
  public String b;

  public final int a()
  {
    return 1;
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    paramBundle.putString("_wxapi_sendauth_req_scope", this.a);
    paramBundle.putString("_wxapi_sendauth_req_state", this.b);
  }

  public final void b(Bundle paramBundle)
  {
    super.b(paramBundle);
    this.a = paramBundle.getString("_wxapi_sendauth_req_scope");
    this.b = paramBundle.getString("_wxapi_sendauth_req_state");
  }

  public final boolean b()
  {
    if ((this.a == null) || (this.a.length() == 0) || (this.a.length() > 1024))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, scope is invalid");
      return false;
    }
    if ((this.b != null) && (this.b.length() > 1024))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, state is invalid");
      return false;
    }
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.e.a.a.e.c
 * JD-Core Version:    0.6.0
 */