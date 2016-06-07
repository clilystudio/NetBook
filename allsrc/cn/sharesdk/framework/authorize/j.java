package cn.sharesdk.framework.authorize;

import android.os.Message;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.b.a;

class j extends Thread
{
  j(g paramg)
  {
  }

  public void run()
  {
    try
    {
      Message localMessage = new Message();
      localMessage.what = 2;
      if ("none".equals(a.a(g.a(this.a)).i()))
      {
        localMessage.arg1 = 1;
        com.mob.tools.b.j.a(localMessage, this.a);
        return;
      }
      if (ShareSDK.isRemoveCookieOnAuthorize())
      {
        CookieSyncManager.createInstance(g.b(this.a));
        CookieManager.getInstance().removeAllCookie();
      }
      localMessage.obj = this.a.a.getAuthorizeUrl();
      com.mob.tools.b.j.a(localMessage, this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.authorize.j
 * JD-Core Version:    0.6.0
 */