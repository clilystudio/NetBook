package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.b.e;
import java.util.HashMap;

class d extends Thread
{
  d(c paramc, Platform paramPlatform, String paramString)
  {
  }

  public void run()
  {
    try
    {
      f localf = f.a(this.a);
      try
      {
        String str2 = localf.a(this.a.getContext(), this.b);
        str1 = str2;
        if (str1 == null)
        {
          c.b(this.c).onError(new Throwable("Authorize token is empty"));
          return;
        }
      }
      catch (Throwable localThrowable2)
      {
        String str1;
        while (true)
        {
          c.a(this.c).onError(localThrowable2);
          str1 = null;
        }
        HashMap localHashMap = new e().a(str1);
        Bundle localBundle = new Bundle();
        localBundle.putString("uid", String.valueOf(localHashMap.get("uid")));
        localBundle.putString("remind_in", String.valueOf(localHashMap.get("remind_in")));
        localBundle.putString("expires_in", String.valueOf(localHashMap.get("expires_in")));
        localBundle.putString("access_token", String.valueOf(localHashMap.get("access_token")));
        c.c(this.c).onComplete(localBundle);
        return;
      }
    }
    catch (Throwable localThrowable1)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable1);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.sina.weibo.d
 * JD-Core Version:    0.6.0
 */