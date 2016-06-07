package cn.sharesdk.wechat.utils;

import android.os.Bundle;

public class a extends m
{
  public String a;
  public String b;

  public int a()
  {
    return 1;
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    paramBundle.putString("_wxapi_sendauth_req_scope", this.a);
    paramBundle.putString("_wxapi_sendauth_req_state", this.b);
  }

  public boolean b()
  {
    if ((this.a == null) || (this.a.length() == 0) || (this.a.length() > 1024))
    {
      cn.sharesdk.framework.utils.d.a().w("MicroMsg.SDK.SendAuth.Req", new Object[] { "checkArgs fail, scope is invalid" });
      return false;
    }
    if ((this.b != null) && (this.b.length() > 1024))
    {
      cn.sharesdk.framework.utils.d.a().w("MicroMsg.SDK.SendAuth.Req", new Object[] { "checkArgs fail, state is invalid" });
      return false;
    }
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.a
 * JD-Core Version:    0.6.0
 */