package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.mob.tools.b.e;
import java.lang.reflect.Field;
import java.util.HashMap;

public class f
{
  private Platform a;
  private Context b;
  private PlatformDb c;
  private a d;
  private int e;
  private int f;
  private boolean g;
  private boolean h = true;
  private boolean i;

  public f(Platform paramPlatform, Context paramContext)
  {
    this.a = paramPlatform;
    this.b = paramContext;
    String str = paramPlatform.getName();
    this.c = new PlatformDb(paramContext, str, paramPlatform.getVersion());
    a(str);
    this.d = new a();
  }

  private boolean j()
  {
    if (!ShareSDK.a())
      return true;
    if (ShareSDK.b())
    {
      String str3 = a(this.a.getPlatformId(), "covert_url", null);
      if (str3 != null)
        str3.trim();
      boolean bool2 = "false".equals(str3);
      boolean bool3 = false;
      if (!bool2)
        bool3 = true;
      this.h = bool3;
      this.a.setNetworkDevinfo();
      return true;
    }
    while (true)
    {
      try
      {
        HashMap localHashMap = new HashMap();
        if (!ShareSDK.a(localHashMap))
          return false;
        if (ShareSDK.b(localHashMap))
          continue;
        String str2 = new e().a(localHashMap);
        cn.sharesdk.framework.utils.d.a().w("Failed to parse network dev-info: " + str2, new Object[0]);
        return false;
        String str1 = a(this.a.getPlatformId(), "covert_url", null);
        if (str1 == null)
          continue;
        str1.trim();
        if (!"false".equals(str1))
        {
          bool1 = true;
          this.h = bool1;
          this.a.setNetworkDevinfo();
          return true;
        }
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        return false;
      }
      boolean bool1 = false;
    }
  }

  private String k()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      if ("TencentWeibo".equals(this.a.getName()))
      {
        com.mob.tools.log.d locald = cn.sharesdk.framework.utils.d.a();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = g().getUserName();
        locald.i("user id %s ==>>", arrayOfObject);
        localStringBuilder.append(com.arcsoft.hpay100.a.a.f(g().getUserName(), "utf-8"));
      }
      while (true)
      {
        localStringBuilder.append("|").append(com.arcsoft.hpay100.a.a.f(g().get("secretType"), "utf-8"));
        localStringBuilder.append("|").append(com.arcsoft.hpay100.a.a.f(g().get("gender"), "utf-8"));
        localStringBuilder.append("|").append(com.arcsoft.hpay100.a.a.f(g().get("birthday"), "utf-8"));
        localStringBuilder.append("|").append(com.arcsoft.hpay100.a.a.f(g().get("educationJSONArrayStr"), "utf-8"));
        localStringBuilder.append("|").append(com.arcsoft.hpay100.a.a.f(g().get("workJSONArrayStr"), "utf-8"));
        return localStringBuilder.toString();
        localStringBuilder.append(com.arcsoft.hpay100.a.a.f(g().getUserId(), "utf-8"));
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public int a()
  {
    return this.e;
  }

  public String a(int paramInt, String paramString1, String paramString2)
  {
    String str = ShareSDK.a(paramInt, paramString1);
    if ((TextUtils.isEmpty(str)) || ("null".equals(str)))
      str = this.a.getDevinfo(this.a.getName(), paramString2);
    return str;
  }

  public String a(Bitmap paramBitmap)
  {
    return ShareSDK.a(paramBitmap);
  }

  public String a(String paramString, boolean paramBoolean)
  {
    long l = System.currentTimeMillis();
    if (!this.h)
    {
      cn.sharesdk.framework.utils.d.a().i("getShortLintk use time: " + (System.currentTimeMillis() - l), new Object[0]);
      return paramString;
    }
    if (TextUtils.isEmpty(paramString))
    {
      cn.sharesdk.framework.utils.d.a().i("getShortLintk use time: " + (System.currentTimeMillis() - l), new Object[0]);
      return paramString;
    }
    String str = ShareSDK.a(paramString, paramBoolean, this.a.getPlatformId(), k());
    cn.sharesdk.framework.utils.d.a().i("getShortLintk use time: " + (System.currentTimeMillis() - l), new Object[0]);
    return str;
  }

  public void a(int paramInt1, int paramInt2, String paramString)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = paramString;
    c(2, arrayOfObject);
  }

  public void a(int paramInt, Object paramObject)
  {
    this.d.a(this.a, paramInt, paramObject);
  }

  public void a(Platform.ShareParams paramShareParams)
  {
    if (paramShareParams == null)
    {
      if (this.d != null)
        this.d.onError(this.a, 9, new NullPointerException());
      return;
    }
    c(9, paramShareParams);
  }

  public void a(PlatformActionListener paramPlatformActionListener)
  {
    this.d.a(paramPlatformActionListener);
  }

  public void a(String paramString)
  {
    String str1 = ShareSDK.b(paramString, "Id");
    try
    {
      this.e = com.arcsoft.hpay100.a.a.n(String.valueOf(str1).trim());
      str2 = ShareSDK.b(paramString, "SortId");
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        do
        {
          String str2;
          this.f = com.arcsoft.hpay100.a.a.n(String.valueOf(str2).trim());
          str3 = ShareSDK.b(paramString, "Enable");
          if (str3 != null)
            break;
          this.i = true;
          if (!(this.a instanceof CustomPlatform))
            cn.sharesdk.framework.utils.d.a().d(this.a.getName() + " failed to parse Enable, this will cause platform always be enable", new Object[0]);
          this.a.initDevInfo(paramString);
          return;
          localThrowable1 = localThrowable1;
        }
        while ((this.a instanceof CustomPlatform));
        cn.sharesdk.framework.utils.d.a().d(this.a.getName() + " failed to parse Id, this will cause method getId() always returens 0", new Object[0]);
      }
      catch (Throwable localThrowable2)
      {
        while (true)
        {
          String str3;
          if ((this.a instanceof CustomPlatform))
            continue;
          cn.sharesdk.framework.utils.d.a().d(this.a.getName() + " failed to parse SortId, this won't cause any problem, don't worry", new Object[0]);
          continue;
          this.i = "true".equals(str3.trim());
        }
      }
    }
  }

  public void a(String paramString, int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = paramString;
    c(7, arrayOfObject);
  }

  public void a(String paramString1, String paramString2, short paramShort, HashMap<String, Object> paramHashMap, HashMap<String, String> paramHashMap1)
  {
    c(0xA0000 | paramShort, new Object[] { paramString1, paramString2, paramHashMap, paramHashMap1 });
  }

  public void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public void a(String[] paramArrayOfString)
  {
    new h(this, paramArrayOfString).start();
  }

  public int b()
  {
    return this.f;
  }

  protected void b(int paramInt, Object paramObject)
  {
    int j = 0;
    switch (paramInt)
    {
    case 3:
    case 4:
    case 5:
    default:
      Object[] arrayOfObject3 = (Object[])paramObject;
      String str2 = String.valueOf(arrayOfObject3[0]);
      String str3 = String.valueOf(arrayOfObject3[1]);
      HashMap localHashMap2 = (HashMap)arrayOfObject3[2];
      HashMap localHashMap3 = (HashMap)arrayOfObject3[3];
      this.a.doCustomerProtocol(str2, str3, paramInt, localHashMap2, localHashMap3);
    case 1:
      do
        return;
      while (this.d == null);
      this.d.onComplete(this.a, 1, null);
      return;
    case 6:
      this.a.follow((String)paramObject);
      return;
    case 7:
      Object[] arrayOfObject2 = (Object[])paramObject;
      this.a.timeline(((Integer)arrayOfObject2[0]).intValue(), ((Integer)arrayOfObject2[1]).intValue(), (String)arrayOfObject2[2]);
      return;
    case 8:
      Platform localPlatform = this.a;
      if (paramObject == null);
      for (String str1 = null; ; str1 = (String)paramObject)
      {
        localPlatform.userInfor(str1);
        return;
      }
    case 9:
      Platform.ShareParams localShareParams = (Platform.ShareParams)paramObject;
      HashMap localHashMap1 = localShareParams.toMap();
      Field[] arrayOfField = localShareParams.getClass().getFields();
      int k = arrayOfField.length;
      while (true)
        if (j < k)
        {
          Field localField = arrayOfField[j];
          if (localHashMap1.get(localField.getName()) == null)
            localField.setAccessible(true);
          try
          {
            Object localObject2 = localField.get(localShareParams);
            localObject1 = localObject2;
            if (localObject1 != null)
              localHashMap1.put(localField.getName(), localObject1);
            j++;
          }
          catch (Throwable localThrowable)
          {
            while (true)
            {
              cn.sharesdk.framework.utils.d.a().w(localThrowable);
              Object localObject1 = null;
            }
          }
        }
      if ((this.d instanceof a))
        this.d.a(this.a, localShareParams);
      this.a.doShare(localShareParams);
      return;
    case 2:
    }
    Object[] arrayOfObject1 = (Object[])paramObject;
    this.a.getFriendList(((Integer)arrayOfObject1[0]).intValue(), ((Integer)arrayOfObject1[1]).intValue(), (String)arrayOfObject1[2]);
  }

  public void b(String paramString)
  {
    c(6, paramString);
  }

  public PlatformActionListener c()
  {
    return this.d.a();
  }

  protected void c(int paramInt, Object paramObject)
  {
    new g(this, paramInt, paramObject).start();
  }

  public void c(String paramString)
  {
    c(8, paramString);
  }

  public String d(String paramString)
  {
    return ShareSDK.a(paramString);
  }

  public boolean d()
  {
    return this.c.isValid();
  }

  public boolean e()
  {
    return this.g;
  }

  public boolean f()
  {
    return this.i;
  }

  public PlatformDb g()
  {
    return this.c;
  }

  public void h()
  {
    this.c.removeAccount();
  }

  protected PlatformActionListener i()
  {
    return this.d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.f
 * JD-Core Version:    0.6.0
 */