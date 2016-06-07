package cn.sharesdk.wechat.utils;

import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import com.mob.tools.b.e;
import java.util.ArrayList;
import java.util.HashMap;

class i extends Thread
{
  i(g paramg, PlatformActionListener paramPlatformActionListener)
  {
  }

  public void run()
  {
    HashMap localHashMap;
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new com.mob.tools.a.i("access_token", g.a(this.b).getDb().getToken()));
      localArrayList.add(new com.mob.tools.a.i("openid", g.a(this.b).getDb().get("openid")));
      String str1 = g.c(this.b).a("https://api.weixin.qq.com/sns/userinfo", localArrayList, "/sns/userinfo", g.b(this.b));
      if (TextUtils.isEmpty(str1))
      {
        if (this.a == null)
          return;
        this.a.onError(g.a(this.b), 8, new Throwable());
        return;
      }
      cn.sharesdk.framework.utils.d.a().d("getUserInfo ==>>" + str1, new Object[0]);
      localHashMap = new e().a(str1);
      if ((localHashMap.containsKey("errcode")) && (((Integer)localHashMap.get("errcode")).intValue() != 0))
      {
        if (this.a == null)
          return;
        String str9 = new e().a(localHashMap);
        this.a.onError(g.a(this.b), 8, new Throwable(str9));
        return;
      }
    }
    catch (Throwable localThrowable1)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable1);
      return;
    }
    String str2 = String.valueOf(localHashMap.get("openid"));
    String str3 = String.valueOf(localHashMap.get("nickname"));
    try
    {
      int j = com.arcsoft.hpay100.a.a.n(String.valueOf(localHashMap.get("sex")));
      i = j;
      String str4 = String.valueOf(localHashMap.get("province"));
      String str5 = String.valueOf(localHashMap.get("city"));
      String str6 = String.valueOf(localHashMap.get("country"));
      String str7 = String.valueOf(localHashMap.get("headimgurl"));
      String str8 = String.valueOf(localHashMap.get("unionid"));
      g.a(this.b).getDb().put("nickname", str3);
      if (i == 1)
      {
        g.a(this.b).getDb().put("gender", "0");
        g.a(this.b).getDb().putUserId(str2);
        g.a(this.b).getDb().put("icon", str7);
        g.a(this.b).getDb().put("province", str4);
        g.a(this.b).getDb().put("city", str5);
        g.a(this.b).getDb().put("country", str6);
        g.a(this.b).getDb().put("openid", str2);
        g.a(this.b).getDb().put("unionid", str8);
        this.a.onComplete(g.a(this.b), 8, localHashMap);
        return;
      }
    }
    catch (Throwable localThrowable2)
    {
      while (true)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable2);
        int i = 2;
        continue;
        if (i == 2)
        {
          g.a(this.b).getDb().put("gender", "1");
          continue;
        }
        g.a(this.b).getDb().put("gender", "2");
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.i
 * JD-Core Version:    0.6.0
 */