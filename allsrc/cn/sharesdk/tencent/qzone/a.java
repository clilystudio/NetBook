package cn.sharesdk.tencent.qzone;

import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.authorize.AuthorizeListener;

class a
  implements AuthorizeListener
{
  a(QZone paramQZone, f paramf)
  {
  }

  public void onCancel()
  {
    if (QZone.j(this.b) != null)
      QZone.k(this.b).onCancel(this.b, 1);
  }

  public void onComplete(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("open_id");
    String str2 = paramBundle.getString("access_token");
    String str3 = paramBundle.getString("expires_in");
    QZone.c(this.b).putToken(str2);
    QZone.d(this.b).putTokenSecret("");
    try
    {
      QZone.e(this.b).putExpiresIn(com.arcsoft.hpay100.a.a.o(str3));
      QZone.f(this.b).putUserId(str1);
      String str4 = paramBundle.getString("pf");
      String str5 = paramBundle.getString("pfkey");
      String str6 = paramBundle.getString("pay_token");
      QZone.g(this.b).put("pf", str4);
      QZone.h(this.b).put("pfkey", str5);
      QZone.i(this.b).put("pay_token", str6);
      this.a.b(str1);
      this.a.c(str2);
      QZone.a(this.b, 1, null);
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public void onError(Throwable paramThrowable)
  {
    if (QZone.a(this.b) != null)
      QZone.b(this.b).onError(this.b, 1, paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qzone.a
 * JD-Core Version:    0.6.0
 */