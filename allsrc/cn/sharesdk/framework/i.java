package cn.sharesdk.framework;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Handler;
import dalvik.system.DexFile;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class i
{
  private static boolean a = true;

  private ArrayList<Platform> a(PackageInfo paramPackageInfo, Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      DexFile localDexFile = new DexFile(paramPackageInfo.applicationInfo.sourceDir);
      Enumeration localEnumeration = localDexFile.entries();
      try
      {
        localDexFile.close();
        while ((localEnumeration != null) && (localEnumeration.hasMoreElements()))
        {
          String str = (String)localEnumeration.nextElement();
          if ((!str.startsWith("cn.sharesdk")) || (str.contains("$")))
            continue;
          try
          {
            Class localClass = Class.forName(str);
            if ((localClass == null) || (!Platform.class.isAssignableFrom(localClass)) || (CustomPlatform.class.isAssignableFrom(localClass)))
              continue;
            Constructor localConstructor = localClass.getConstructor(new Class[] { Context.class });
            localConstructor.setAccessible(true);
            localArrayList.add((Platform)localConstructor.newInstance(new Object[] { paramContext }));
          }
          catch (Throwable localThrowable3)
          {
            cn.sharesdk.framework.utils.d.a().w(localThrowable3);
          }
        }
      }
      catch (Throwable localThrowable2)
      {
        while (true)
          cn.sharesdk.framework.utils.d.a().w(localThrowable2);
      }
    }
    catch (Throwable localThrowable1)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable1);
      return null;
    }
    return localArrayList;
  }

  private PackageInfo c(Context paramContext)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      String str = paramContext.getPackageName();
      Iterator localIterator = localPackageManager.getInstalledPackages(8192).iterator();
      while (localIterator.hasNext())
      {
        PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
        boolean bool = str.equals(localPackageInfo.packageName);
        if (bool)
          return localPackageInfo;
      }
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
      return null;
    }
    return null;
  }

  private ArrayList<Platform> d(Context paramContext)
  {
    String[] arrayOfString = { "cn.sharesdk.douban.Douban", "cn.sharesdk.evernote.Evernote", "cn.sharesdk.facebook.Facebook", "cn.sharesdk.renren.Renren", "cn.sharesdk.sina.weibo.SinaWeibo", "cn.sharesdk.kaixin.KaiXin", "cn.sharesdk.linkedin.LinkedIn", "cn.sharesdk.system.email.Email", "cn.sharesdk.system.text.ShortMessage", "cn.sharesdk.tencent.qq.QQ", "cn.sharesdk.tencent.qzone.QZone", "cn.sharesdk.tencent.weibo.TencentWeibo", "cn.sharesdk.twitter.Twitter", "cn.sharesdk.wechat.friends.Wechat", "cn.sharesdk.wechat.moments.WechatMoments", "cn.sharesdk.wechat.favorite.WechatFavorite", "cn.sharesdk.youdao.YouDao", "cn.sharesdk.google.GooglePlus", "cn.sharesdk.foursquare.FourSquare", "cn.sharesdk.pinterest.Pinterest", "cn.sharesdk.flickr.Flickr", "cn.sharesdk.tumblr.Tumblr", "cn.sharesdk.dropbox.Dropbox", "cn.sharesdk.vkontakte.VKontakte", "cn.sharesdk.instagram.Instagram", "cn.sharesdk.yixin.friends.Yixin", "cn.sharesdk.yixin.moments.YixinMoments", "cn.sharesdk.mingdao.Mingdao", "cn.sharesdk.line.Line", "cn.sharesdk.kakao.story.KakaoStory", "cn.sharesdk.kakao.talk.KakaoTalk", "cn.sharesdk.system.bluetooth.Bluetooth", "cn.sharesdk.whatsapp.WhatsApp", "cn.sharesdk.pocket.Pocket", "cn.sharesdk.instapaper.Instapaper", "cn.sharesdk.facebookmessenger.FacebookMessenger", "cn.sharesdk.alipay.share.Alipay" };
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (true)
      if (i < 37)
      {
        String str = arrayOfString[i];
        try
        {
          Constructor localConstructor = Class.forName(str).getConstructor(new Class[] { Context.class });
          localConstructor.setAccessible(true);
          localArrayList.add((Platform)localConstructor.newInstance(new Object[] { paramContext }));
          i++;
        }
        catch (Throwable localThrowable)
        {
          while (true)
            cn.sharesdk.framework.utils.d.a().d(localThrowable);
        }
      }
    return localArrayList;
  }

  public String a()
  {
    return "2.6.5";
  }

  public String a(int paramInt, String paramString, HashMap<Integer, HashMap<String, Object>> paramHashMap)
  {
    HashMap localHashMap = (HashMap)paramHashMap.get(Integer.valueOf(paramInt));
    if (localHashMap == null)
      return null;
    Object localObject = localHashMap.get(paramString);
    if (localObject == null)
      return null;
    return String.valueOf(localObject);
  }

  public String a(Context paramContext, Bitmap paramBitmap)
  {
    return cn.sharesdk.framework.statistics.a.a(paramContext).a(paramBitmap);
  }

  public String a(Context paramContext, String paramString)
  {
    return cn.sharesdk.framework.statistics.a.a(paramContext).e(paramString);
  }

  public String a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, int paramInt, String paramString3)
  {
    return cn.sharesdk.framework.statistics.a.a(paramContext).a(paramString2, paramString1, paramInt, paramBoolean, paramString3);
  }

  public ArrayList<Platform> a(Context paramContext)
  {
    if (a);
    PackageInfo localPackageInfo;
    for (ArrayList localArrayList = d(paramContext); ; localArrayList = a(localPackageInfo, paramContext))
    {
      a(localArrayList);
      return localArrayList;
      localPackageInfo = c(paramContext);
      if (localPackageInfo == null)
        return null;
    }
  }

  public void a(int paramInt1, int paramInt2, HashMap<Integer, HashMap<String, Object>> paramHashMap)
  {
    HashMap localHashMap = (HashMap)paramHashMap.get(Integer.valueOf(paramInt1));
    paramHashMap.put(Integer.valueOf(paramInt2), localHashMap);
  }

  public void a(int paramInt, Platform paramPlatform)
  {
    cn.sharesdk.framework.statistics.b.d locald = new cn.sharesdk.framework.statistics.b.d();
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      if (paramPlatform != null)
        locald.b = paramPlatform.getPlatformId();
      cn.sharesdk.framework.statistics.d locald1 = cn.sharesdk.framework.statistics.d.a(null);
      if (locald1 != null)
        locald1.a(locald);
      return;
      locald.a = "SHARESDK_ENTER_SHAREMENU";
      continue;
      locald.a = "SHARESDK_CANCEL_SHAREMENU";
      continue;
      locald.a = "SHARESDK_EDIT_SHARE";
      continue;
      locald.a = "SHARESDK_FAILED_SHARE";
      continue;
      locald.a = "SHARESDK_CANCEL_SHARE";
    }
  }

  public void a(Context paramContext, String paramString, Handler paramHandler, boolean paramBoolean, int paramInt)
  {
    cn.sharesdk.framework.statistics.d locald = cn.sharesdk.framework.statistics.d.a(paramContext);
    locald.a(paramString);
    locald.a(paramHandler);
    locald.a(paramBoolean);
    locald.a(paramInt);
    locald.startThread();
  }

  public void a(k paramk)
  {
  }

  public void a(String paramString, int paramInt)
  {
    cn.sharesdk.framework.statistics.d locald = cn.sharesdk.framework.statistics.d.a(null);
    if (locald == null)
      return;
    cn.sharesdk.framework.statistics.b.a locala = new cn.sharesdk.framework.statistics.b.a();
    locala.b = paramString;
    locala.a = paramInt;
    locald.a(locala);
  }

  public void a(ArrayList<Platform> paramArrayList)
  {
    if (paramArrayList == null)
      return;
    Collections.sort(paramArrayList, new j(this));
  }

  public boolean a(HashMap<String, Object> paramHashMap, HashMap<Integer, HashMap<String, Object>> paramHashMap1)
  {
    if ((paramHashMap == null) || (paramHashMap.size() <= 0))
      return false;
    ArrayList localArrayList = (ArrayList)paramHashMap.get("fakelist");
    if (localArrayList == null)
      return false;
    Iterator localIterator = localArrayList.iterator();
    while (true)
      if (localIterator.hasNext())
      {
        HashMap localHashMap = (HashMap)localIterator.next();
        if (localHashMap == null)
          continue;
        String str = String.valueOf(localHashMap.get("snsplat"));
        try
        {
          int j = com.arcsoft.hpay100.a.a.n(str);
          i = j;
          if (i == -1)
            continue;
          paramHashMap1.put(Integer.valueOf(i), localHashMap);
        }
        catch (Throwable localThrowable)
        {
          while (true)
          {
            cn.sharesdk.framework.utils.d.a().w(localThrowable);
            int i = -1;
          }
        }
      }
    return true;
  }

  public int b()
  {
    return 56;
  }

  public void b(Context paramContext)
  {
    cn.sharesdk.framework.statistics.d.a(paramContext).stopThread();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.i
 * JD-Core Version:    0.6.0
 */