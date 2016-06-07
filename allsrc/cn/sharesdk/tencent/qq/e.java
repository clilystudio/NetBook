package cn.sharesdk.tencent.qq;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.b;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

public class e extends cn.sharesdk.framework.e
{
  private static final String[] b = { "get_user_info", "get_simple_userinfo", "get_user_profile", "get_app_friends", "add_share", "list_album", "upload_pic", "add_album", "set_user_face", "get_vip_info", "get_vip_rich_info", "get_intimate_friends_weibo", "match_nick_tips_weibo", "add_t", "add_pic_t" };
  private static e c;
  private String d;
  private String[] e;
  private String f;
  private String g;

  private e(Platform paramPlatform)
  {
    super(paramPlatform);
  }

  public static e a(Platform paramPlatform)
  {
    if (c == null)
      c = new e(paramPlatform);
    return c;
  }

  private void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, PlatformActionListener paramPlatformActionListener)
  {
    if ((paramString5 == null) && (paramString4 != null) && (new File(paramString4).exists()))
      paramString5 = ((QQ)this.a).uploadImageToFileServer(paramString4);
    while (true)
    {
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("http://openmobile.qq.com/api/check?");
        localStringBuilder.append("page=shareindex.html&");
        localStringBuilder.append("style=9&");
        localStringBuilder.append("action=shareToQQ&");
        localStringBuilder.append("sdkv=2.2.1&");
        localStringBuilder.append("sdkp=a&");
        localStringBuilder.append("appId=").append(this.d).append("&");
        com.mob.tools.b.a locala = com.mob.tools.b.a.a(this.a.getContext());
        localStringBuilder.append("status_os=").append(com.arcsoft.hpay100.a.a.f(Build.VERSION.RELEASE, "utf-8")).append("&");
        localStringBuilder.append("status_machine=").append(com.arcsoft.hpay100.a.a.f(Build.MODEL, "utf-8")).append("&");
        localStringBuilder.append("status_version=").append(com.arcsoft.hpay100.a.a.f(String.valueOf(Build.VERSION.SDK_INT), "utf-8")).append("&");
        String str1 = locala.l();
        if (TextUtils.isEmpty(str1))
          continue;
        localStringBuilder.append("site=").append(com.arcsoft.hpay100.a.a.f(str1, "utf-8")).append("&");
        if (TextUtils.isEmpty(paramString1))
          continue;
        if (paramString1.length() > 40)
        {
          str2 = paramString1.substring(40) + "...";
          if (str2.length() <= 80)
            continue;
          str2 = str2.substring(80) + "...";
          localStringBuilder.append("title=").append(com.arcsoft.hpay100.a.a.f(str2, "utf-8")).append("&");
          if (TextUtils.isEmpty(paramString3))
            continue;
          localStringBuilder.append("summary=").append(com.arcsoft.hpay100.a.a.f(paramString3, "utf-8")).append("&");
          if (TextUtils.isEmpty(paramString2))
            continue;
          localStringBuilder.append("targeturl=").append(com.arcsoft.hpay100.a.a.f(paramString2, "utf-8")).append("&");
          if (TextUtils.isEmpty(paramString5))
            continue;
          localStringBuilder.append("imageUrl=").append(com.arcsoft.hpay100.a.a.f(paramString5, "utf-8")).append("&");
          localStringBuilder.append("type=1");
          k localk = new k();
          localk.a(localStringBuilder.toString());
          localk.a(paramPlatformActionListener);
          localk.b(this.d);
          localk.show(this.a.getContext(), null);
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        if (paramPlatformActionListener == null)
          continue;
        paramPlatformActionListener.onError(this.a, 9, localThrowable);
        return;
      }
      String str2 = paramString1;
    }
  }

  private String b()
  {
    int i = 0;
    if (this.e == null);
    StringBuilder localStringBuilder;
    for (String[] arrayOfString = b; ; arrayOfString = this.e)
    {
      localStringBuilder = new StringBuilder();
      int j = arrayOfString.length;
      int k = 0;
      while (i < j)
      {
        String str = arrayOfString[i];
        if (k > 0)
          localStringBuilder.append(',');
        localStringBuilder.append(str);
        k++;
        i++;
      }
    }
    return localStringBuilder.toString();
  }

  private void b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, PlatformActionListener paramPlatformActionListener)
  {
    while (true)
    {
      try
      {
        if (!TextUtils.isEmpty(paramString4))
          continue;
        if (TextUtils.isEmpty(paramString5))
          break label346;
        continue;
        String str2 = "https://graph.qq.com" + str1;
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(new com.mob.tools.a.i("oauth_consumer_key", this.d));
        localArrayList.add(new com.mob.tools.a.i("access_token", this.g));
        localArrayList.add(new com.mob.tools.a.i("openid", this.f));
        localArrayList.add(new com.mob.tools.a.i("format", "json"));
        localArrayList.add(new com.mob.tools.a.i("content", paramString3));
        if (i == 0)
          continue;
        if (!TextUtils.isEmpty(paramString4))
          continue;
        paramString4 = com.arcsoft.hpay100.a.a.c(this.a.getContext(), paramString5);
        com.mob.tools.a.i locali = new com.mob.tools.a.i("pic", paramString4);
        String str3 = cn.sharesdk.framework.a.a.a().a(str2, localArrayList, locali, str1, c());
        if ((str3 != null) && (str3.length() > 0) && (paramPlatformActionListener != null))
        {
          HashMap localHashMap = new com.mob.tools.b.e().a(str3);
          if (((Integer)localHashMap.get("ret")).intValue() == 0)
            continue;
          paramPlatformActionListener.onError(this.a, 9, new Exception(str3));
          return;
          str3 = cn.sharesdk.framework.a.a.a().b(str2, localArrayList, str1, c());
          continue;
          paramPlatformActionListener.onComplete(this.a, 9, localHashMap);
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        if (paramPlatformActionListener != null)
        {
          paramPlatformActionListener.onError(this.a, 9, localThrowable);
          return;
          i = 1;
          if (i != 0)
            break label352;
          str1 = "/t/add_t";
          continue;
        }
      }
      return;
      label346: int i = 0;
      continue;
      label352: String str1 = "/t/add_pic_t";
    }
  }

  public void a(AuthorizeListener paramAuthorizeListener, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b(paramAuthorizeListener);
      return;
    }
    a(new f(this, paramAuthorizeListener));
  }

  public void a(String paramString)
  {
    this.d = paramString;
  }

  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, boolean paramBoolean1, PlatformActionListener paramPlatformActionListener, boolean paramBoolean2)
  {
    if (paramBoolean2)
    {
      b(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramPlatformActionListener);
      return;
    }
    if ((paramBoolean1) && (a()))
    {
      if (!TextUtils.isEmpty(paramString4))
      {
        File localFile = new File(paramString4);
        if ((localFile.exists()) && (paramString4.startsWith("/data/")))
        {
          String str = new File(com.arcsoft.hpay100.a.a.h(this.a.getContext(), "images"), System.currentTimeMillis() + localFile.getName()).getAbsolutePath();
          if (com.arcsoft.hpay100.a.a.g(paramString4, str))
            paramString4 = str;
        }
      }
      Intent localIntent = new Intent();
      localIntent.putExtra("title", paramString1);
      localIntent.putExtra("titleUrl", paramString2);
      localIntent.putExtra("summary", paramString3);
      localIntent.putExtra("imagePath", paramString4);
      localIntent.putExtra("imageUrl", paramString5);
      localIntent.putExtra("musicUrl", paramString6);
      localIntent.putExtra("appId", this.d);
      i locali = new i();
      locali.a(this.a, paramPlatformActionListener);
      locali.a(this.d);
      locali.show(this.a.getContext(), localIntent);
      return;
    }
    a(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramPlatformActionListener);
  }

  public void a(String[] paramArrayOfString)
  {
    this.e = paramArrayOfString;
  }

  public boolean a()
  {
    List localList = this.a.getContext().getPackageManager().getInstalledPackages(0);
    ArrayList localArrayList = new ArrayList();
    if (localList != null)
      for (int i = 0; i < localList.size(); i++)
        localArrayList.add(((PackageInfo)localList.get(i)).packageName);
    return (localArrayList.contains("com.tencent.mobileqq")) || (localArrayList.contains("com.tencent.mobileqqi")) || (localArrayList.contains("com.tencent.qqlite"));
  }

  public void b(String paramString)
  {
    this.f = paramString;
  }

  public HashMap<String, Object> c(String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new com.mob.tools.a.i("access_token", paramString));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new com.mob.tools.a.i("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
    String str = cn.sharesdk.framework.a.a.a().a("https://graph.qq.com/oauth2.0/me", localArrayList1, localArrayList2, null, "/oauth2.0/me", c());
    if (str.startsWith("callback"))
    {
      while ((!str.startsWith("{")) && (str.length() > 0))
        str = str.substring(1);
      while ((!str.endsWith("}")) && (str.length() > 0))
        str = str.substring(0, -1 + str.length());
    }
    HashMap localHashMap = null;
    if (str != null)
    {
      int i = str.length();
      localHashMap = null;
      if (i > 0)
        localHashMap = new com.mob.tools.b.e().a(str);
    }
    return localHashMap;
  }

  public void d(String paramString)
  {
    this.g = paramString;
  }

  public HashMap<String, Object> e(String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new com.mob.tools.a.i("access_token", this.g));
    localArrayList1.add(new com.mob.tools.a.i("oauth_consumer_key", this.d));
    localArrayList1.add(new com.mob.tools.a.i("openid", this.f));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new com.mob.tools.a.i("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
    String str = cn.sharesdk.framework.a.a.a().a("https://graph.qq.com/user/get_simple_userinfo", localArrayList1, localArrayList2, null, "/user/get_simple_userinfo", c());
    HashMap localHashMap = null;
    if (str != null)
    {
      int i = str.length();
      localHashMap = null;
      if (i > 0)
        localHashMap = new com.mob.tools.b.e().a(str);
    }
    return localHashMap;
  }

  public String getAuthorizeUrl()
  {
    ShareSDK.logApiEvent("/oauth2.0/authorize", c());
    String str1 = b();
    String str2 = getRedirectUri();
    try
    {
      String str4 = com.arcsoft.hpay100.a.a.f(str2, "utf-8");
      str3 = str4;
      return "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id=" + this.d + "&redirect_uri=" + str3 + "&display=mobile&" + "scope=" + str1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        String str3 = getRedirectUri();
      }
    }
  }

  public b getAuthorizeWebviewClient(cn.sharesdk.framework.authorize.g paramg)
  {
    return new c(paramg);
  }

  public String getRedirectUri()
  {
    return "auth://tauth.qq.com/";
  }

  public cn.sharesdk.framework.authorize.f getSSOProcessor(cn.sharesdk.framework.authorize.e parame)
  {
    g localg = new g(parame);
    localg.a(5656);
    localg.a(this.d, b());
    return localg;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.e
 * JD-Core Version:    0.6.0
 */