package cn.sharesdk.sina.weibo;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.b;
import com.mob.tools.a.l;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class f extends cn.sharesdk.framework.e
{
  private static f b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String[] g = { "follow_app_official_microblog" };
  private cn.sharesdk.framework.a.a h = cn.sharesdk.framework.a.a.a();
  private Context i;

  private f(Platform paramPlatform)
  {
    super(paramPlatform);
    this.i = paramPlatform.getContext();
  }

  public static f a(Platform paramPlatform)
  {
    monitorenter;
    try
    {
      if (b == null)
        b = new f(paramPlatform);
      f localf = b;
      return localf;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private HashMap<String, Object> a(String paramString, float paramFloat1, float paramFloat2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
    localArrayList.add(new com.mob.tools.a.i("status", paramString));
    localArrayList.add(new com.mob.tools.a.i("long", String.valueOf(paramFloat1)));
    localArrayList.add(new com.mob.tools.a.i("lat", String.valueOf(paramFloat2)));
    String str = this.h.b("https://api.weibo.com/2/statuses/update.json", localArrayList, "/2/statuses/update.json", c());
    if (str != null)
      return new com.mob.tools.b.e().a(str);
    return null;
  }

  private HashMap<String, Object> a(String paramString1, String paramString2, float paramFloat1, float paramFloat2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
    localArrayList.add(new com.mob.tools.a.i("status", paramString1));
    localArrayList.add(new com.mob.tools.a.i("long", String.valueOf(paramFloat1)));
    localArrayList.add(new com.mob.tools.a.i("lat", String.valueOf(paramFloat2)));
    localArrayList.add(new com.mob.tools.a.i("url", paramString2));
    String str = this.h.b("https://api.weibo.com/2/statuses/upload_url_text.json", localArrayList, "/2/statuses/upload_url_text.json", c());
    if (str != null)
      return new com.mob.tools.b.e().a(str);
    return null;
  }

  private HashMap<String, Object> b(String paramString1, String paramString2, float paramFloat1, float paramFloat2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
    localArrayList.add(new com.mob.tools.a.i("status", paramString2));
    localArrayList.add(new com.mob.tools.a.i("long", String.valueOf(paramFloat1)));
    localArrayList.add(new com.mob.tools.a.i("lat", String.valueOf(paramFloat2)));
    com.mob.tools.a.i locali = new com.mob.tools.a.i("pic", paramString1);
    String str = this.h.a("https://api.weibo.com/2/statuses/upload.json", localArrayList, locali, "/2/statuses/upload.json", c());
    if (str != null)
      return new com.mob.tools.b.e().a(str);
    return null;
  }

  public String a(Context paramContext, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("client_id", this.c));
    localArrayList.add(new com.mob.tools.a.i("client_secret", this.d));
    localArrayList.add(new com.mob.tools.a.i("redirect_uri", this.e));
    localArrayList.add(new com.mob.tools.a.i("grant_type", "authorization_code"));
    localArrayList.add(new com.mob.tools.a.i("code", paramString));
    String str = this.h.b("https://api.weibo.com/oauth2/access_token", localArrayList, "/oauth2/access_token", c());
    ShareSDK.logApiEvent("/oauth2/access_token", c());
    return str;
  }

  public HashMap<String, Object> a(int paramInt1, int paramInt2, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    int j = 1;
    try
    {
      com.arcsoft.hpay100.a.a.o(paramString);
      if (j != 0)
      {
        localArrayList.add(new com.mob.tools.a.i("uid", paramString));
        localArrayList.add(new com.mob.tools.a.i("count", String.valueOf(paramInt1)));
        localArrayList.add(new com.mob.tools.a.i("page", String.valueOf(paramInt2)));
        String str = this.h.a("https://api.weibo.com/2/statuses/user_timeline.json", localArrayList, "/2/statuses/user_timeline.json", c());
        if (str == null)
          break label159;
        return new com.mob.tools.b.e().a(str);
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        j = 0;
        continue;
        localArrayList.add(new com.mob.tools.a.i("screen_name", paramString));
      }
    }
    label159: return null;
  }

  public HashMap<String, Object> a(String paramString1, String paramString2, String paramString3, float paramFloat1, float paramFloat2)
  {
    if ((TextUtils.isEmpty(paramString1)) && (TextUtils.isEmpty(paramString2)) && (TextUtils.isEmpty(paramString3)))
      throw new Throwable("weibo content can not be null!");
    if (!TextUtils.isEmpty(paramString3))
      return b(paramString3, paramString1, paramFloat1, paramFloat2);
    if (!TextUtils.isEmpty(paramString2))
      return a(paramString1, paramString2, paramFloat1, paramFloat2);
    return a(paramString1, paramFloat1, paramFloat2);
  }

  public HashMap<String, Object> a(String paramString1, String paramString2, HashMap<String, Object> paramHashMap, HashMap<String, String> paramHashMap1)
  {
    if (paramString2 == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    if ((paramHashMap != null) && (paramHashMap.size() > 0))
    {
      Iterator localIterator2 = paramHashMap.entrySet().iterator();
      while (localIterator2.hasNext())
      {
        Map.Entry localEntry2 = (Map.Entry)localIterator2.next();
        localArrayList.add(new com.mob.tools.a.i((String)localEntry2.getKey(), String.valueOf(localEntry2.getValue())));
      }
    }
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    if (this.f != null)
      localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
    com.mob.tools.a.i locali2;
    if ((paramHashMap1 != null) && (paramHashMap1.size() > 0))
    {
      Iterator localIterator1 = paramHashMap1.entrySet().iterator();
      Map.Entry localEntry1;
      for (locali2 = null; localIterator1.hasNext(); locali2 = new com.mob.tools.a.i((String)localEntry1.getKey(), localEntry1.getValue()))
        localEntry1 = (Map.Entry)localIterator1.next();
    }
    for (com.mob.tools.a.i locali1 = locali2; ; locali1 = null)
      try
      {
        String str2;
        if ("GET".equals(paramString2.toUpperCase()))
          str2 = new l().httpGet(paramString1, localArrayList, null, null);
        String str1;
        for (localObject = str2; (localObject != null) && (((String)localObject).length() > 0); localObject = str1)
        {
          return new com.mob.tools.b.e().a((String)localObject);
          if (!"POST".equals(paramString2.toUpperCase()))
            break label331;
          str1 = new l().httpPost(paramString1, localArrayList, locali1, null, null);
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          cn.sharesdk.framework.utils.d.a().w(localThrowable);
          label331: Object localObject = null;
        }
      }
  }

  public void a(Platform.ShareParams paramShareParams, PlatformActionListener paramPlatformActionListener)
  {
    if ((paramShareParams.getImageData() == null) && (TextUtils.isEmpty(paramShareParams.getImagePath())) && (!TextUtils.isEmpty(paramShareParams.getImageUrl())));
    try
    {
      File localFile = new File(com.arcsoft.hpay100.a.a.c(this.i, paramShareParams.getImageUrl()));
      if (localFile.exists())
        paramShareParams.setImagePath(localFile.getAbsolutePath());
      String str = paramShareParams.getText();
      if (!TextUtils.isEmpty(str))
        paramShareParams.setText(getPlatform().getShortLintk(str, false));
      h localh = new h(this, paramPlatformActionListener, paramShareParams);
      a locala = new a();
      locala.a(this.c);
      locala.a(paramShareParams);
      locala.a(localh);
      locala.show(this.i, null);
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public void a(AuthorizeListener paramAuthorizeListener, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b(paramAuthorizeListener);
      return;
    }
    a(new g(this, paramAuthorizeListener));
  }

  public void a(String paramString)
  {
    this.e = paramString;
  }

  public void a(String paramString1, String paramString2)
  {
    this.c = paramString1;
    this.d = paramString2;
  }

  public void a(String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
      this.g = paramArrayOfString;
  }

  public boolean a()
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setPackage("com.sina.weibo");
    localIntent.setType("image/*");
    ResolveInfo localResolveInfo = this.a.getContext().getPackageManager().resolveActivity(localIntent, 0);
    int j = 0;
    if (localResolveInfo != null)
      j = 1;
    return j;
  }

  public HashMap<String, Object> b(int paramInt1, int paramInt2, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    if (this.f != null)
      localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
    int j = 1;
    try
    {
      com.arcsoft.hpay100.a.a.o(paramString);
      if (j != 0)
      {
        localArrayList.add(new com.mob.tools.a.i("uid", paramString));
        localArrayList.add(new com.mob.tools.a.i("count", String.valueOf(paramInt1)));
        localArrayList.add(new com.mob.tools.a.i("cursor", String.valueOf(paramInt2)));
        String str = this.h.a("https://api.weibo.com/2/friendships/friends.json", localArrayList, "/2/friendships/friends.json", c());
        if (str == null)
          break label188;
        return new com.mob.tools.b.e().a(str);
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        j = 0;
        continue;
        localArrayList.add(new com.mob.tools.a.i("screen_name", paramString));
      }
    }
    label188: return null;
  }

  public void b(String paramString)
  {
    this.f = paramString;
  }

  public boolean b()
  {
    return i.a(this.i).b() >= 10350;
  }

  public HashMap<String, Object> c(int paramInt1, int paramInt2, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    if (this.f != null)
      localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
    int j = 1;
    try
    {
      com.arcsoft.hpay100.a.a.o(paramString);
      if (j != 0)
      {
        localArrayList.add(new com.mob.tools.a.i("uid", paramString));
        localArrayList.add(new com.mob.tools.a.i("count", String.valueOf(paramInt1)));
        localArrayList.add(new com.mob.tools.a.i("page", String.valueOf(paramInt2)));
        String str = this.h.a("https://api.weibo.com/2/friendships/friends/bilateral.json", localArrayList, "/2/friendships/friends/bilateral.json", c());
        if (str == null)
          break label187;
        return new com.mob.tools.b.e().a(str);
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        j = 0;
        continue;
        localArrayList.add(new com.mob.tools.a.i("screen_name", paramString));
      }
    }
    label187: return null;
  }

  public HashMap<String, Object> c(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    if (this.f != null)
      localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
    int j = 1;
    try
    {
      com.arcsoft.hpay100.a.a.o(paramString);
      if (j != 0)
      {
        localArrayList.add(new com.mob.tools.a.i("uid", paramString));
        String str = this.h.a("https://api.weibo.com/2/users/show.json", localArrayList, "/2/users/show.json", c());
        if (str == null)
          break label143;
        return new com.mob.tools.b.e().a(str);
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        j = 0;
        continue;
        localArrayList.add(new com.mob.tools.a.i("screen_name", paramString));
      }
    }
    label143: return null;
  }

  public HashMap<String, Object> d(int paramInt1, int paramInt2, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    if (this.f != null)
      localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
    int j = 1;
    try
    {
      com.arcsoft.hpay100.a.a.o(paramString);
      if (j != 0)
      {
        localArrayList.add(new com.mob.tools.a.i("uid", paramString));
        localArrayList.add(new com.mob.tools.a.i("count", String.valueOf(paramInt1)));
        localArrayList.add(new com.mob.tools.a.i("cursor", String.valueOf(paramInt2)));
        String str = this.h.a("https://api.weibo.com/2/friendships/followers.json", localArrayList, "/2/friendships/followers.json", c());
        if (str == null)
          break label188;
        return new com.mob.tools.b.e().a(str);
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        j = 0;
        continue;
        localArrayList.add(new com.mob.tools.a.i("screen_name", paramString));
      }
    }
    label188: return null;
  }

  public HashMap<String, Object> d(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("source", this.c));
    localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
    int j = 1;
    try
    {
      com.arcsoft.hpay100.a.a.o(paramString);
      if (j != 0)
      {
        localArrayList.add(new com.mob.tools.a.i("uid", paramString));
        String str = this.h.b("https://api.weibo.com/2/friendships/create.json", localArrayList, "/2/friendships/create.json", c());
        if (str == null)
          break label136;
        return new com.mob.tools.b.e().a(str);
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        j = 0;
        continue;
        localArrayList.add(new com.mob.tools.a.i("screen_name", paramString));
      }
    }
    label136: return null;
  }

  public String getAuthorizeUrl()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.mob.tools.a.i("client_id", this.c));
    localArrayList.add(new com.mob.tools.a.i("response_type", "code"));
    localArrayList.add(new com.mob.tools.a.i("redirect_uri", this.e));
    if ((this.g != null) && (this.g.length > 0))
      localArrayList.add(new com.mob.tools.a.i("scope", TextUtils.join(",", this.g)));
    localArrayList.add(new com.mob.tools.a.i("display", "mobile"));
    String str = "https://open.weibo.cn/oauth2/authorize?" + com.arcsoft.hpay100.a.a.a(localArrayList);
    ShareSDK.logApiEvent("/oauth2/authorize", c());
    return str;
  }

  public b getAuthorizeWebviewClient(cn.sharesdk.framework.authorize.g paramg)
  {
    return new c(paramg);
  }

  public String getRedirectUri()
  {
    if (TextUtils.isEmpty(this.e))
      return "https://api.weibo.com/oauth2/default.html";
    return this.e;
  }

  public cn.sharesdk.framework.authorize.f getSSOProcessor(cn.sharesdk.framework.authorize.e parame)
  {
    e locale = new e(parame);
    locale.a(32973);
    locale.a(this.c, this.e, this.g);
    return locale;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.sina.weibo.f
 * JD-Core Version:    0.6.0
 */