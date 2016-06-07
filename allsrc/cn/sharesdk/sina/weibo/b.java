package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.arcsoft.hpay100.a.a;

class b
  implements AuthorizeListener
{
  b(SinaWeibo paramSinaWeibo, f paramf)
  {
  }

  public void onCancel()
  {
    if (SinaWeibo.h(this.b) != null)
      SinaWeibo.i(this.b).onCancel(this.b, 1);
  }

  public void onComplete(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("uid");
    String str2 = paramBundle.getString("access_token");
    String str3 = paramBundle.getString("expires_in");
    SinaWeibo.a(this.b).put("nickname", paramBundle.getString("userName"));
    SinaWeibo.b(this.b).put("remind_in", paramBundle.getString("remind_in"));
    SinaWeibo.c(this.b).putToken(str2);
    try
    {
      long l2 = a.o(str3);
      l1 = l2;
      SinaWeibo.d(this.b).putExpiresIn(l1);
      SinaWeibo.e(this.b).putUserId(str1);
      this.a.b(str2);
      SinaWeibo.a(this.b, 1, null);
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        long l1 = 0L;
    }
  }

  public void onError(Throwable paramThrowable)
  {
    if (SinaWeibo.f(this.b) != null)
      SinaWeibo.g(this.b).onError(this.b, 1, paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.sina.weibo.b
 * JD-Core Version:    0.6.0
 */