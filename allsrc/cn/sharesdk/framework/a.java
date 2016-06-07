package cn.sharesdk.framework;

import android.text.TextUtils;
import cn.sharesdk.framework.statistics.b.f;
import cn.sharesdk.framework.statistics.b.f.a;
import java.util.HashMap;

public class a
  implements PlatformActionListener
{
  private PlatformActionListener a;
  private HashMap<Platform, Platform.ShareParams> b = new HashMap();

  private String a(Platform paramPlatform)
  {
    PlatformDb localPlatformDb = paramPlatform.getDb();
    try
    {
      String str = a(localPlatformDb, new String[] { "nickname", "icon", "gender", "snsUserUrl", "resume", "secretType", "secret", "birthday", "followerCount", "favouriteCount", "shareCount", "snsregat", "snsUserLevel", "educationJSONArrayStr", "workJSONArrayStr" });
      return str;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return null;
  }

  private String a(PlatformDb paramPlatformDb, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    int i = paramArrayOfString.length;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      String str1 = paramArrayOfString[j];
      if (k > 0)
      {
        localStringBuilder2.append('|');
        localStringBuilder1.append('|');
      }
      k++;
      String str2 = paramPlatformDb.get(str1);
      if (!TextUtils.isEmpty(str2))
      {
        localStringBuilder1.append(str2);
        localStringBuilder2.append(com.arcsoft.hpay100.a.a.f(str2, "utf-8"));
      }
      j++;
    }
    cn.sharesdk.framework.utils.d.a().i("======UserData: " + localStringBuilder1.toString(), new Object[0]);
    return localStringBuilder2.toString();
  }

  private void a(int paramInt, Platform paramPlatform)
  {
  }

  private void a(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    this.a = new b(this, this.a, paramInt, paramHashMap);
    paramPlatform.showUser(null);
  }

  private String b(Platform paramPlatform)
  {
    PlatformDb localPlatformDb = paramPlatform.getDb();
    if ((("WechatMoments".equals(paramPlatform.getName())) || ("WechatFavorite".equals(paramPlatform.getName()))) && (TextUtils.isEmpty(localPlatformDb.getUserGender())))
    {
      Platform localPlatform = ShareSDK.getPlatform("Wechat");
      if (localPlatform != null)
        localPlatformDb = localPlatform.getDb();
    }
    try
    {
      String str = a(localPlatformDb, new String[] { "gender", "birthday", "secretType", "educationJSONArrayStr", "workJSONArrayStr" });
      return str;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return null;
  }

  private void b(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    Platform.ShareParams localShareParams1 = (Platform.ShareParams)this.b.remove(paramPlatform);
    if (paramHashMap != null);
    for (Platform.ShareParams localShareParams2 = (Platform.ShareParams)paramHashMap.remove("ShareParams"); ; localShareParams2 = localShareParams1)
      try
      {
        HashMap localHashMap = (HashMap)paramHashMap.clone();
        localObject = localHashMap;
        if (localShareParams2 != null)
        {
          f localf = new f();
          localf.o = localShareParams2.getCustomFlag();
          str = paramPlatform.getDb().getUserId();
          if ((("WechatMoments".equals(paramPlatform.getName())) || ("WechatFavorite".equals(paramPlatform.getName()))) && (TextUtils.isEmpty(str)))
          {
            Platform localPlatform = ShareSDK.getPlatform("Wechat");
            if (localPlatform != null)
              str = localPlatform.getDb().getUserId();
            localf.b = str;
            localf.a = paramPlatform.getPlatformId();
            f.a locala = paramPlatform.filterShareContent(localShareParams2, (HashMap)localObject);
            if (locala != null)
            {
              localf.c = locala.a;
              localf.d = locala;
            }
            localf.n = b(paramPlatform);
            cn.sharesdk.framework.statistics.d.a(paramPlatform.getContext()).a(localf);
          }
        }
        else if (this.a == null);
      }
      catch (Throwable localThrowable1)
      {
        try
        {
          do
            while (true)
            {
              this.a.onComplete(paramPlatform, paramInt, paramHashMap);
              a(9, paramPlatform);
              return;
              localThrowable1 = localThrowable1;
              cn.sharesdk.framework.utils.d.a().w(localThrowable1);
              Object localObject = paramHashMap;
            }
          while (!"TencentWeibo".equals(paramPlatform.getName()));
          String str = paramPlatform.getDb().get("name");
        }
        catch (Throwable localThrowable2)
        {
          while (true)
            cn.sharesdk.framework.utils.d.a().w(localThrowable2);
        }
      }
  }

  PlatformActionListener a()
  {
    return this.a;
  }

  void a(Platform paramPlatform, int paramInt, Object paramObject)
  {
    this.a = new c(this, this.a, paramInt, paramObject);
    paramPlatform.doAuthorize(null);
  }

  public void a(Platform paramPlatform, Platform.ShareParams paramShareParams)
  {
    this.b.put(paramPlatform, paramShareParams);
  }

  void a(PlatformActionListener paramPlatformActionListener)
  {
    this.a = paramPlatformActionListener;
  }

  public void onCancel(Platform paramPlatform, int paramInt)
  {
    if (this.a != null)
      this.a.onCancel(paramPlatform, paramInt);
  }

  public void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    if ((paramPlatform instanceof CustomPlatform))
      if (this.a != null)
        this.a.onComplete(paramPlatform, paramInt, paramHashMap);
    do
    {
      return;
      switch (paramInt)
      {
      default:
      case 1:
      case 9:
      }
    }
    while (this.a == null);
    this.a.onComplete(paramPlatform, paramInt, paramHashMap);
    return;
    a(paramPlatform, paramInt, paramHashMap);
    return;
    b(paramPlatform, paramInt, paramHashMap);
  }

  public void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
    if (this.a != null)
      this.a.onError(paramPlatform, paramInt, paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.a
 * JD-Core Version:    0.6.0
 */