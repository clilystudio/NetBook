package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.b.e;
import java.util.HashMap;

public class g
{
  private String a;
  private String b;
  private cn.sharesdk.framework.a.a c;
  private Platform d;
  private int e;

  public g(Platform paramPlatform, int paramInt)
  {
    this.d = paramPlatform;
    this.e = paramInt;
    this.c = cn.sharesdk.framework.a.a.a();
  }

  private void a(String paramString)
  {
    cn.sharesdk.framework.utils.d.a().d("wechat getAuthorizeToken ==>>" + paramString, new Object[0]);
    HashMap localHashMap = new e().a(paramString);
    String str1 = String.valueOf(localHashMap.get("access_token"));
    String str2 = String.valueOf(localHashMap.get("refresh_token"));
    String str3 = String.valueOf(localHashMap.get("expires_in"));
    String str4 = String.valueOf(localHashMap.get("openid"));
    this.d.getDb().put("openid", str4);
    this.d.getDb().putExpiresIn(Long.valueOf(str3).longValue());
    this.d.getDb().putToken(str1);
    this.d.getDb().put("refresh_token", str2);
  }

  public void a(Bundle paramBundle, AuthorizeListener paramAuthorizeListener)
  {
    String str1 = paramBundle.getString("_wxapi_sendauth_resp_url");
    if (TextUtils.isEmpty(str1))
      if (paramAuthorizeListener != null)
        paramAuthorizeListener.onError(null);
    do
    {
      return;
      int i = str1.indexOf("://oauth?");
      if (i >= 0)
        str1 = str1.substring(i + 1);
      String str2 = com.arcsoft.hpay100.a.a.l(str1).getString("code");
      try
      {
        a(str2, paramAuthorizeListener);
        return;
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
      }
    }
    while (paramAuthorizeListener == null);
    paramAuthorizeListener.onError(localThrowable);
  }

  public void a(PlatformActionListener paramPlatformActionListener)
  {
    new i(this, paramPlatformActionListener).start();
  }

  public void a(String paramString, AuthorizeListener paramAuthorizeListener)
  {
    cn.sharesdk.framework.utils.d.a().d("getAuthorizeToken ==>> " + paramString, new Object[0]);
    new h(this, paramString, paramAuthorizeListener).start();
  }

  public void a(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.g
 * JD-Core Version:    0.6.0
 */