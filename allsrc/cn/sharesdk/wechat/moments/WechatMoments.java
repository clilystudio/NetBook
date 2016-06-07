package cn.sharesdk.wechat.moments;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.statistics.b.f.a;
import cn.sharesdk.wechat.utils.WechatClientNotExistException;
import cn.sharesdk.wechat.utils.WechatHelper;
import cn.sharesdk.wechat.utils.WechatTimelineNotSupportedException;
import cn.sharesdk.wechat.utils.g;
import cn.sharesdk.wechat.utils.k;
import java.util.ArrayList;
import java.util.HashMap;

public class WechatMoments extends Platform
{
  public static final String NAME = WechatMoments.class.getSimpleName();
  private String a;
  private String b;
  private boolean c;

  public WechatMoments(Context paramContext)
  {
    super(paramContext);
  }

  protected boolean checkAuthorize(int paramInt, Object paramObject)
  {
    WechatHelper localWechatHelper = WechatHelper.a();
    localWechatHelper.a(this.context, this.a);
    if (!localWechatHelper.c())
      if (this.listener != null)
        this.listener.onError(this, paramInt, new WechatClientNotExistException());
    while (true)
    {
      return false;
      if (localWechatHelper.d())
        break;
      if (this.listener == null)
        continue;
      this.listener.onError(this, 1, new WechatTimelineNotSupportedException());
      return false;
    }
    if ((paramInt == 9) || (isAuthValid()))
      return true;
    TextUtils.isEmpty(getDb().get("refresh_token"));
    innerAuthorize(paramInt, paramObject);
    return false;
  }

  protected void doAuthorize(String[] paramArrayOfString)
  {
    if ((TextUtils.isEmpty(this.a)) || (TextUtils.isEmpty(this.b)))
      if (this.listener != null)
        this.listener.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
    do
    {
      WechatHelper localWechatHelper;
      while (true)
      {
        return;
        localWechatHelper = WechatHelper.a();
        localWechatHelper.a(this.context, this.a);
        if (!localWechatHelper.c())
        {
          if (this.listener == null)
            continue;
          this.listener.onError(this, 1, new WechatClientNotExistException());
          return;
        }
        if (localWechatHelper.d())
          break;
        if (this.listener == null)
          continue;
        this.listener.onError(this, 1, new WechatTimelineNotSupportedException());
        return;
      }
      g localg = new g(this, 23);
      localg.a(this.a, this.b);
      k localk = new k(this);
      localk.a(localg);
      localk.a(new a(this));
      try
      {
        localWechatHelper.a(localk);
        return;
      }
      catch (Throwable localThrowable)
      {
      }
    }
    while (this.listener == null);
    this.listener.onError(this, 1, localThrowable);
  }

  protected void doCustomerProtocol(String paramString1, String paramString2, int paramInt, HashMap<String, Object> paramHashMap, HashMap<String, String> paramHashMap1)
  {
    if (this.listener != null)
      this.listener.onCancel(this, paramInt);
  }

  protected void doShare(Platform.ShareParams paramShareParams)
  {
    paramShareParams.set("scene", Integer.valueOf(1));
    WechatHelper localWechatHelper = WechatHelper.a();
    localWechatHelper.a(this.context, this.a);
    k localk = new k(this);
    if (this.c);
    do
      while (true)
      {
        try
        {
          localWechatHelper.a(localk, paramShareParams, this.listener);
          return;
        }
        catch (Throwable localThrowable2)
        {
          if (this.listener == null)
            continue;
          this.listener.onError(this, 9, localThrowable2);
          return;
        }
        localk.a(paramShareParams, this.listener);
        try
        {
          localWechatHelper.b(localk);
          if ((this.listener == null) || (!localWechatHelper.b()))
            continue;
          HashMap localHashMap = new HashMap();
          localHashMap.put("ShareParams", paramShareParams);
          if (this.listener == null)
            continue;
          this.listener.onComplete(this, 9, localHashMap);
          return;
        }
        catch (Throwable localThrowable1)
        {
        }
      }
    while (this.listener == null);
    this.listener.onError(this, 9, localThrowable1);
  }

  protected HashMap<String, Object> filterFriendshipInfo(int paramInt, HashMap<String, Object> paramHashMap)
  {
    return null;
  }

  protected f.a filterShareContent(Platform.ShareParams paramShareParams, HashMap<String, Object> paramHashMap)
  {
    f.a locala = new f.a();
    String str1 = paramShareParams.getText();
    locala.b = str1;
    String str2 = paramShareParams.getImageUrl();
    String str3 = paramShareParams.getImagePath();
    Bitmap localBitmap = paramShareParams.getImageData();
    if (!TextUtils.isEmpty(str2))
      locala.d.add(str2);
    while (true)
    {
      String str4 = paramShareParams.getUrl();
      if (str4 != null)
        locala.c.add(str4);
      HashMap localHashMap = new HashMap();
      localHashMap.put("title", paramShareParams.getTitle());
      localHashMap.put("url", str4);
      localHashMap.put("extInfo", null);
      localHashMap.put("content", str1);
      localHashMap.put("image", locala.d);
      localHashMap.put("musicFileUrl", str4);
      locala.g = localHashMap;
      return locala;
      if (str3 != null)
      {
        locala.e.add(str3);
        continue;
      }
      if (localBitmap == null)
        continue;
      locala.f.add(localBitmap);
    }
  }

  protected void follow(String paramString)
  {
    if (this.listener != null)
      this.listener.onCancel(this, 6);
  }

  protected HashMap<String, Object> getBilaterals(int paramInt1, int paramInt2, String paramString)
  {
    return null;
  }

  protected HashMap<String, Object> getFollowers(int paramInt1, int paramInt2, String paramString)
  {
    return null;
  }

  protected HashMap<String, Object> getFollowings(int paramInt1, int paramInt2, String paramString)
  {
    return null;
  }

  protected void getFriendList(int paramInt1, int paramInt2, String paramString)
  {
    if (this.listener != null)
      this.listener.onCancel(this, 2);
  }

  public String getName()
  {
    return NAME;
  }

  public int getPlatformId()
  {
    return 23;
  }

  public int getVersion()
  {
    return 1;
  }

  public boolean hasShareCallback()
  {
    return !this.c;
  }

  protected void initDevInfo(String paramString)
  {
    this.a = getDevinfo("AppId");
    this.b = getDevinfo("AppSecret");
    this.c = "true".equals(getDevinfo("BypassApproval"));
    if ((this.a == null) || (this.a.length() <= 0))
    {
      this.a = getDevinfo("Wechat", "AppId");
      this.c = "true".equals(getDevinfo("Wechat", "BypassApproval"));
      if ((this.a == null) || (this.a.length() <= 0))
        break label157;
      copyDevinfo("Wechat", NAME);
      this.a = getDevinfo("AppId");
      this.c = "true".equals(getDevinfo("BypassApproval"));
      cn.sharesdk.framework.utils.d.a().d("Try to use the dev info of Wechat, this will cause Id and SortId field are always 0.", new Object[0]);
    }
    label157: 
    do
    {
      return;
      this.a = getDevinfo("WechatFavorite", "AppId");
    }
    while ((this.a == null) || (this.a.length() <= 0));
    copyDevinfo("WechatFavorite", NAME);
    this.a = getDevinfo("AppId");
    cn.sharesdk.framework.utils.d.a().d("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
  }

  public boolean isClientValid()
  {
    WechatHelper localWechatHelper = WechatHelper.a();
    localWechatHelper.a(this.context, this.a);
    return (localWechatHelper.c()) && (localWechatHelper.d());
  }

  @Deprecated
  public boolean isValid()
  {
    WechatHelper localWechatHelper = WechatHelper.a();
    localWechatHelper.a(this.context, this.a);
    return (localWechatHelper.c()) && (localWechatHelper.d()) && (super.isValid());
  }

  protected void setNetworkDevinfo()
  {
    this.a = getNetworkDevinfo("app_id", "AppId");
    this.b = getNetworkDevinfo("app_secret", "AppSecret");
    if ((this.a == null) || (this.a.length() <= 0))
    {
      this.a = getNetworkDevinfo(22, "app_id", "AppId");
      if ((this.a != null) && (this.a.length() > 0))
      {
        copyNetworkDevinfo(22, 23);
        this.a = getNetworkDevinfo("app_id", "AppId");
        cn.sharesdk.framework.utils.d.a().d("Try to use the dev info of Wechat, this will cause Id and SortId field are always 0.", new Object[0]);
      }
    }
    else if ((this.b == null) || (this.b.length() <= 0))
    {
      this.b = getNetworkDevinfo(22, "app_secret", "AppSecret");
      if ((this.b == null) || (this.b.length() <= 0))
        break label268;
      copyNetworkDevinfo(22, 23);
      this.b = getNetworkDevinfo("app_secret", "AppSecret");
      cn.sharesdk.framework.utils.d.a().d("Try to use the dev info of Wechat, this will cause Id and SortId field are always 0.", new Object[0]);
    }
    label268: 
    do
    {
      return;
      this.a = getNetworkDevinfo(37, "app_id", "AppId");
      if ((this.a == null) || (this.a.length() <= 0))
        break;
      copyNetworkDevinfo(23, 23);
      this.a = getNetworkDevinfo("app_id", "AppId");
      cn.sharesdk.framework.utils.d.a().d("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
      break;
      this.b = getNetworkDevinfo(37, "app_secret", "AppSecret");
    }
    while ((this.b == null) || (this.b.length() <= 0));
    copyNetworkDevinfo(23, 23);
    this.b = getNetworkDevinfo("app_secret", "AppSecret");
    cn.sharesdk.framework.utils.d.a().d("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
  }

  protected void timeline(int paramInt1, int paramInt2, String paramString)
  {
    if (this.listener != null)
      this.listener.onCancel(this, 7);
  }

  protected void userInfor(String paramString)
  {
    if ((TextUtils.isEmpty(this.a)) || (TextUtils.isEmpty(this.b)))
      if (this.listener != null)
        this.listener.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
    do
    {
      return;
      g localg = new g(this, 23);
      localg.a(this.a, this.b);
      try
      {
        localg.a(this.listener);
        return;
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
      }
    }
    while (this.listener == null);
    this.listener.onError(this, 8, localThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.moments.WechatMoments
 * JD-Core Version:    0.6.0
 */