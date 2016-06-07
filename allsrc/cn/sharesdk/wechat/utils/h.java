package cn.sharesdk.wechat.utils;

import android.text.TextUtils;
import cn.sharesdk.framework.a.a;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.a.i;
import java.util.ArrayList;

class h extends Thread
{
  h(g paramg, String paramString, AuthorizeListener paramAuthorizeListener)
  {
  }

  public void run()
  {
    String str;
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new i("appid", g.d(this.c)));
      localArrayList.add(new i("secret", g.e(this.c)));
      localArrayList.add(new i("code", this.a));
      localArrayList.add(new i("grant_type", "authorization_code"));
      try
      {
        str = g.c(this.c).a("https://api.weixin.qq.com/sns/oauth2/access_token", localArrayList, "/sns/oauth2/access_token", g.b(this.c));
        if (TextUtils.isEmpty(str))
        {
          this.b.onError(new Throwable("Authorize token is empty"));
          return;
        }
      }
      catch (Throwable localThrowable2)
      {
        this.b.onError(localThrowable2);
        return;
      }
    }
    catch (Throwable localThrowable1)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable1);
      return;
    }
    if (str.contains("errcode"))
    {
      if (this.b != null)
      {
        this.b.onError(new Throwable(str));
        return;
      }
    }
    else
    {
      g.a(this.c, str);
      this.b.onComplete(null);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.h
 * JD-Core Version:    0.6.0
 */