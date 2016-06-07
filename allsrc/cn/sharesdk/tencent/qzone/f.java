package cn.sharesdk.tencent.qzone;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.b;
import com.mob.tools.a.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

public class f extends cn.sharesdk.framework.e
{
  private static final String[] b = { "get_user_info", "get_simple_userinfo", "get_user_profile", "get_app_friends", "add_share", "list_album", "upload_pic", "add_album", "set_user_face", "get_vip_info", "get_vip_rich_info", "get_intimate_friends_weibo", "match_nick_tips_weibo", "add_t", "add_pic_t" };
  private static f c;
  private String d;
  private String e;
  private String f;
  private cn.sharesdk.framework.a.a g = cn.sharesdk.framework.a.a.a();
  private String[] h;

  private f(Platform paramPlatform)
  {
    super(paramPlatform);
  }

  public static f a(Platform paramPlatform)
  {
    if (c == null)
      c = new f(paramPlatform);
    return c;
  }

  private String b()
  {
    int i = 0;
    if (this.h == null);
    StringBuilder localStringBuilder;
    for (String[] arrayOfString = b; ; arrayOfString = this.h)
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

  public HashMap<String, Object> a(String paramString1, String paramString2)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new com.mob.tools.a.i("access_token", this.f));
    localArrayList1.add(new com.mob.tools.a.i("oauth_consumer_key", this.d));
    localArrayList1.add(new com.mob.tools.a.i("openid", this.e));
    localArrayList1.add(new com.mob.tools.a.i("format", "json"));
    if (!TextUtils.isEmpty(paramString2))
    {
      if (paramString2.length() > 200)
        paramString2 = paramString2.substring(0, 199) + "…";
      localArrayList1.add(new com.mob.tools.a.i("photodesc", paramString2));
    }
    localArrayList1.add(new com.mob.tools.a.i("mobile", "1"));
    com.mob.tools.a.i locali = new com.mob.tools.a.i("picture", paramString1);
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new com.mob.tools.a.i("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
    String str = this.g.a("https://graph.qq.com/photo/upload_pic", localArrayList1, locali, localArrayList2, "/photo/upload_pic", c());
    if ((str != null) && (str.length() > 0))
      return new com.mob.tools.b.e().a(str);
    return null;
  }

  public HashMap<String, Object> a(String paramString1, String paramString2, HashMap<String, Object> paramHashMap, HashMap<String, String> paramHashMap1)
  {
    if (paramString2 == null)
      return null;
    ArrayList localArrayList1 = new ArrayList();
    if ((paramHashMap != null) && (paramHashMap.size() > 0))
    {
      Iterator localIterator2 = paramHashMap.entrySet().iterator();
      while (localIterator2.hasNext())
      {
        Map.Entry localEntry2 = (Map.Entry)localIterator2.next();
        localArrayList1.add(new com.mob.tools.a.i((String)localEntry2.getKey(), String.valueOf(localEntry2.getValue())));
      }
    }
    localArrayList1.add(new com.mob.tools.a.i("access_token", this.f));
    localArrayList1.add(new com.mob.tools.a.i("oauth_consumer_key", this.d));
    localArrayList1.add(new com.mob.tools.a.i("openid", this.e));
    localArrayList1.add(new com.mob.tools.a.i("format", "json"));
    com.mob.tools.a.i locali2;
    if ((paramHashMap1 != null) && (paramHashMap1.size() > 0))
    {
      Iterator localIterator1 = paramHashMap1.entrySet().iterator();
      Map.Entry localEntry1;
      for (locali2 = null; localIterator1.hasNext(); locali2 = new com.mob.tools.a.i((String)localEntry1.getKey(), localEntry1.getValue()))
        localEntry1 = (Map.Entry)localIterator1.next();
    }
    for (com.mob.tools.a.i locali1 = locali2; ; locali1 = null)
      while (true)
      {
        ArrayList localArrayList2 = new ArrayList();
        localArrayList2.add(new com.mob.tools.a.i("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        try
        {
          String str2;
          if ("GET".equals(paramString2.toUpperCase()))
            str2 = new l().httpGet(paramString1, localArrayList1, localArrayList2, null);
          String str1;
          for (localObject = str2; (localObject != null) && (((String)localObject).length() > 0); localObject = str1)
          {
            return new com.mob.tools.b.e().a((String)localObject);
            if (!"POST".equals(paramString2.toUpperCase()))
              break label412;
            str1 = new l().httpPost(paramString1, localArrayList1, locali1, localArrayList2, null);
          }
        }
        catch (Throwable localThrowable)
        {
          while (true)
          {
            cn.sharesdk.framework.utils.d.a().w(localThrowable);
            label412: Object localObject = null;
          }
        }
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
    this.d = paramString;
  }

  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, PlatformActionListener paramPlatformActionListener)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("mqqapi://share/to_qzone?src_type=app&version=1&file_type=news");
    if (!TextUtils.isEmpty(paramString4))
      localStringBuilder.append("&image_url=").append(Base64.encodeToString(paramString4.getBytes("utf-8"), 2));
    if (!TextUtils.isEmpty(paramString1))
      localStringBuilder.append("&title=").append(Base64.encodeToString(paramString1.getBytes("utf-8"), 2));
    if (!TextUtils.isEmpty(paramString3))
      localStringBuilder.append("&description=").append(Base64.encodeToString(paramString3.getBytes("utf-8"), 2));
    localStringBuilder.append("&share_id=").append(this.d).append("&");
    if (!TextUtils.isEmpty(paramString2))
      localStringBuilder.append("&url=").append(Base64.encodeToString(paramString2.getBytes("utf-8"), 2));
    localStringBuilder.append("&app_name=").append(Base64.encodeToString(paramString5.getBytes("utf-8"), 2));
    localStringBuilder.append("&open_id=");
    String str1 = "1";
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString3)) && (!TextUtils.isEmpty(paramString4)) && (TextUtils.isEmpty(paramString2)))
      str1 = "6";
    localStringBuilder.append("&req_type=").append(Base64.encodeToString(str1.getBytes("utf-8"), 2));
    if (a());
    for (String str2 = "1"; ; str2 = "0")
    {
      localStringBuilder.append("&cflag=").append(Base64.encodeToString(str2.getBytes("utf-8"), 2));
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(localStringBuilder.toString()));
      if (this.a.getContext().getPackageManager().resolveActivity(localIntent, 1) != null)
        break;
      b(paramString1, paramString2, paramString3, paramString4, paramString5, paramPlatformActionListener);
      return;
    }
    i locali = new i();
    locali.a(localStringBuilder.toString(), true);
    locali.a(paramPlatformActionListener);
    locali.a(this.d);
    locali.show(this.a.getContext(), null);
  }

  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean, PlatformActionListener paramPlatformActionListener)
  {
    if (TextUtils.isEmpty(paramString3))
      throw new Throwable("text is needed");
    if (paramString3.length() > 600);
    for (String str1 = paramString3.substring(0, 600); ; str1 = paramString3)
    {
      if (TextUtils.isEmpty(paramString5))
        paramString5 = com.mob.tools.b.a.a(this.a.getContext()).l();
      if (paramString5.length() > 20);
      for (String str2 = paramString5.substring(0, 20) + "..."; ; str2 = paramString5)
      {
        if (TextUtils.isEmpty(paramString1))
        {
          int i = com.arcsoft.hpay100.a.a.e(this.a.getContext(), "ssdk_share_to_qzone_default");
          if (i > 0)
            paramString1 = this.a.getContext().getString(i, new Object[] { str2 });
        }
        else
        {
          if (paramString1.length() <= 200)
            break label230;
        }
        label230: for (String str3 = paramString1.substring(0, 200); ; str3 = paramString1)
        {
          if (paramBoolean)
          {
            a(str3, paramString2, str1, paramString4, str2, paramPlatformActionListener);
            return;
            paramString1 = str2;
            break;
          }
          if (TextUtils.isEmpty(paramString2))
            throw new Throwable("titleUrl is needed");
          b(str3, paramString2, str1, paramString4, str2, paramPlatformActionListener);
          return;
        }
      }
    }
  }

  public void a(String[] paramArrayOfString)
  {
    this.h = paramArrayOfString;
  }

  public boolean a()
  {
    int k;
    try
    {
      str = this.a.getContext().getPackageManager().getPackageInfo("com.tencent.mobileqq", 0).versionName;
      arrayOfString = str.split("\\.");
      arrayOfInt = new int[arrayOfString.length];
      i = 0;
      if (i >= arrayOfInt.length);
    }
    catch (Throwable localThrowable1)
    {
      int[] arrayOfInt;
      try
      {
        while (true)
        {
          String[] arrayOfString;
          arrayOfInt[i] = com.arcsoft.hpay100.a.a.n(arrayOfString[i]);
          i++;
        }
        localThrowable1 = localThrowable1;
        cn.sharesdk.framework.utils.d.a().w(localThrowable1);
        String str = "0";
      }
      catch (Throwable localThrowable2)
      {
        while (true)
        {
          int i;
          cn.sharesdk.framework.utils.d.a().w(localThrowable2);
          arrayOfInt[i] = 0;
        }
      }
      int j = arrayOfInt.length;
      k = 0;
      if (j > 1)
      {
        int m = arrayOfInt[1];
        k = 0;
        if (m >= 5)
          k = 1;
      }
    }
    return k;
  }

  public HashMap<String, Object> b(String paramString1, String paramString2)
  {
    int i;
    String str1;
    label18: String str2;
    ArrayList localArrayList;
    com.mob.tools.a.i locali;
    if (!TextUtils.isEmpty(paramString1))
    {
      i = 1;
      if (i == 0)
        break label235;
      str1 = "/t/add_pic_t";
      str2 = "https://graph.qq.com" + str1;
      localArrayList = new ArrayList();
      localArrayList.add(new com.mob.tools.a.i("oauth_consumer_key", this.d));
      localArrayList.add(new com.mob.tools.a.i("access_token", this.f));
      localArrayList.add(new com.mob.tools.a.i("openid", this.e));
      localArrayList.add(new com.mob.tools.a.i("format", "json"));
      localArrayList.add(new com.mob.tools.a.i("content", paramString2));
      if (i == 0)
        break label243;
      locali = new com.mob.tools.a.i("pic", paramString1);
    }
    HashMap localHashMap;
    label235: label243: for (String str3 = this.g.a(str2, localArrayList, locali, str1, c()); ; str3 = this.g.b(str2, localArrayList, str1, c()))
    {
      if ((str3 == null) || (str3.length() <= 0))
        break label268;
      localHashMap = new com.mob.tools.b.e().a(str3);
      if (((Integer)localHashMap.get("ret")).intValue() == 0)
        break label265;
      throw new Throwable(str3);
      i = 0;
      break;
      str1 = "/t/add_t";
      break label18;
    }
    label265: return localHashMap;
    label268: return null;
  }

  public void b(String paramString)
  {
    this.e = paramString;
  }

  public void b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, PlatformActionListener paramPlatformActionListener)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("http://openmobile.qq.com/api/check2?");
    localStringBuilder.append("page=qzshare.html&");
    localStringBuilder.append("loginpage=loginindex.html&");
    localStringBuilder.append("logintype=qzone&");
    localStringBuilder.append("action=shareToQQ&");
    localStringBuilder.append("sdkv=2.6&");
    localStringBuilder.append("sdkp=a&");
    com.mob.tools.b.a locala = com.mob.tools.b.a.a(this.a.getContext());
    localStringBuilder.append("status_os=").append(com.arcsoft.hpay100.a.a.f(Build.VERSION.RELEASE, "utf-8")).append("&");
    localStringBuilder.append("status_machine=").append(com.arcsoft.hpay100.a.a.f(Build.MODEL, "utf-8")).append("&");
    localStringBuilder.append("status_version=").append(com.arcsoft.hpay100.a.a.f(String.valueOf(Build.VERSION.SDK_INT), "utf-8")).append("&");
    localStringBuilder.append("appId=").append(this.d).append("&");
    String str = locala.l();
    if (!TextUtils.isEmpty(str))
      localStringBuilder.append("appName=").append(com.arcsoft.hpay100.a.a.f(str, "utf-8")).append("&");
    while (true)
    {
      if (paramString1.length() > 40)
        paramString1 = paramString1.substring(40) + "...";
      localStringBuilder.append("title=").append(com.arcsoft.hpay100.a.a.f(paramString1, "utf-8")).append("&");
      if (paramString1.length() > 80)
        new StringBuilder().append(paramString1.substring(80)).append("...");
      localStringBuilder.append("summary=").append(com.arcsoft.hpay100.a.a.f(paramString3, "utf-8")).append("&");
      localStringBuilder.append("targeturl=").append(com.arcsoft.hpay100.a.a.f(paramString2, "utf-8")).append("&");
      if (!TextUtils.isEmpty(paramString4))
        localStringBuilder.append("imageUrl=").append(com.arcsoft.hpay100.a.a.f(paramString4, "utf-8")).append("&");
      localStringBuilder.append("site=").append(com.arcsoft.hpay100.a.a.f(paramString5, "utf-8")).append("&");
      localStringBuilder.append("type=1");
      i locali = new i();
      locali.a(localStringBuilder.toString(), false);
      locali.a(paramPlatformActionListener);
      locali.a(this.d);
      locali.show(this.a.getContext(), null);
      return;
      localStringBuilder.append("appName=").append(com.arcsoft.hpay100.a.a.f(paramString5, "utf-8")).append("&");
    }
  }

  public void c(String paramString)
  {
    this.f = paramString;
  }

  public HashMap<String, Object> d(String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new com.mob.tools.a.i("access_token", this.f));
    localArrayList1.add(new com.mob.tools.a.i("oauth_consumer_key", this.d));
    localArrayList1.add(new com.mob.tools.a.i("openid", this.e));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new com.mob.tools.a.i("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
    String str = this.g.a("https://graph.qq.com/user/get_simple_userinfo", localArrayList1, localArrayList2, null, "/user/get_simple_userinfo", c());
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

  public HashMap<String, Object> e(String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new com.mob.tools.a.i("access_token", paramString));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new com.mob.tools.a.i("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
    String str = this.g.a("https://graph.qq.com/oauth2.0/me", localArrayList1, localArrayList2, null, "/oauth2.0/me", c());
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
    return new d(paramg);
  }

  public String getRedirectUri()
  {
    return "auth://tauth.qq.com/";
  }

  public cn.sharesdk.framework.authorize.f getSSOProcessor(cn.sharesdk.framework.authorize.e parame)
  {
    h localh = new h(parame);
    localh.a(5656);
    localh.a(this.d, b());
    return localh;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qzone.f
 * JD-Core Version:    0.6.0
 */