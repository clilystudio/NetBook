package cn.sharesdk.tencent.qq;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.statistics.b.f.a;
import java.util.ArrayList;
import java.util.HashMap;

public class QQ extends Platform
{
  public static final String NAME = QQ.class.getSimpleName();
  private String a;
  private boolean b;
  private boolean c = true;

  public QQ(Context paramContext)
  {
    super(paramContext);
  }

  protected boolean checkAuthorize(int paramInt, Object paramObject)
  {
    if ((isAuthValid()) || ((paramInt == 9) && (paramObject != null) && ((paramObject instanceof Platform.ShareParams)) && (!((Platform.ShareParams)paramObject).isShareTencentWeibo())))
    {
      e locale = e.a(this);
      locale.a(this.a);
      locale.b(this.db.getUserId());
      locale.d(this.db.getToken());
      return true;
    }
    innerAuthorize(paramInt, paramObject);
    return false;
  }

  protected void doAuthorize(String[] paramArrayOfString)
  {
    e locale = e.a(this);
    locale.a(this.a);
    locale.a(paramArrayOfString);
    locale.a(new a(this, locale), isSSODisable());
  }

  protected void doCustomerProtocol(String paramString1, String paramString2, int paramInt, HashMap<String, Object> paramHashMap, HashMap<String, String> paramHashMap1)
  {
    if (this.listener != null)
      this.listener.onCancel(this, paramInt);
  }

  protected void doShare(Platform.ShareParams paramShareParams)
  {
    String str1 = paramShareParams.getTitle();
    String str2 = paramShareParams.getText();
    String str3 = paramShareParams.getImagePath();
    String str4 = paramShareParams.getImageUrl();
    String str5 = paramShareParams.getMusicUrl();
    String str6 = paramShareParams.getTitleUrl();
    boolean bool = paramShareParams.isShareTencentWeibo();
    if ((TextUtils.isEmpty(str1)) && (TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str3)) && (TextUtils.isEmpty(str4)) && (TextUtils.isEmpty(str5)))
    {
      if (this.listener != null)
        this.listener.onError(this, 9, new Throwable("qq share must have one param at least"));
      return;
    }
    e locale = e.a(this);
    b localb = new b(this, paramShareParams);
    if (!TextUtils.isEmpty(str6))
      str6 = getShortLintk(str6, false);
    if (!TextUtils.isEmpty(str2))
      str2 = getShortLintk(str2, false);
    locale.a(str1, str6, str2, str3, str4, str5, this.b, localb, bool);
  }

  protected HashMap<String, Object> filterFriendshipInfo(int paramInt, HashMap<String, Object> paramHashMap)
  {
    return null;
  }

  protected f.a filterShareContent(Platform.ShareParams paramShareParams, HashMap<String, Object> paramHashMap)
  {
    f.a locala = new f.a();
    String str1 = paramShareParams.getTitleUrl();
    locala.c.add(str1);
    locala.a = this.a;
    String str2 = paramShareParams.getText();
    if (!TextUtils.isEmpty(str2))
      locala.b = str2;
    String str3 = paramShareParams.getImageUrl();
    String str4 = paramShareParams.getImagePath();
    if (!TextUtils.isEmpty(str4))
      locala.e.add(str4);
    while (true)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("title", paramShareParams.getTitle());
      localHashMap.put("url", str1);
      localHashMap.put("imageLocalUrl", str4);
      localHashMap.put("summary", str2);
      localHashMap.put("appName", com.mob.tools.b.a.a(this.context).l());
      locala.g = localHashMap;
      return locala;
      if (TextUtils.isEmpty(str3))
        continue;
      locala.d.add(str3);
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
    return 24;
  }

  public int getVersion()
  {
    return 2;
  }

  public boolean hasShareCallback()
  {
    return this.c;
  }

  protected void initDevInfo(String paramString)
  {
    this.a = getDevinfo("AppId");
    this.b = "true".equals(getDevinfo("ShareByAppClient"));
    if ((this.a == null) || (this.a.length() <= 0))
    {
      this.a = getDevinfo("QZone", "AppId");
      if ((this.a != null) && (this.a.length() > 0))
      {
        copyDevinfo("QZone", NAME);
        this.a = getDevinfo("AppId");
        this.b = "true".equals(getDevinfo("ShareByAppClient"));
        cn.sharesdk.framework.utils.d.a().d("Try to use the dev info of QZone, this will cause Id and SortId field are always 0.", new Object[0]);
      }
    }
  }

  public boolean isClientValid()
  {
    e locale = e.a(this);
    locale.a(this.a);
    return locale.a();
  }

  protected void setNetworkDevinfo()
  {
    this.a = getNetworkDevinfo("app_id", "AppId");
    if ((this.a == null) || (this.a.length() <= 0))
    {
      this.a = getNetworkDevinfo(6, "app_id", "AppId");
      if ((this.a != null) && (this.a.length() > 0))
      {
        copyNetworkDevinfo(6, 24);
        this.a = getNetworkDevinfo("app_id", "AppId");
        cn.sharesdk.framework.utils.d.a().d("Try to use the dev info of QZone, this will cause Id and SortId field are always 0.", new Object[0]);
      }
    }
  }

  protected void timeline(int paramInt1, int paramInt2, String paramString)
  {
    if (this.listener != null)
      this.listener.onCancel(this, 7);
  }

  protected String uploadImageToFileServer(String paramString)
  {
    return super.uploadImageToFileServer(paramString);
  }

  protected void userInfor(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 0))
      paramString = this.db.getUserId();
    if ((paramString == null) || (paramString.length() < 0))
      if (this.listener != null)
        this.listener.onError(this, 8, new RuntimeException("qq account is null"));
    label134: label328: label595: 
    while (true)
    {
      return;
      e locale = e.a(this);
      HashMap localHashMap;
      try
      {
        localHashMap = locale.e(paramString);
        if ((localHashMap != null) && (localHashMap.size() > 0))
          break label134;
        if (this.listener == null)
          continue;
        this.listener.onError(this, 8, new Throwable());
        return;
      }
      catch (Throwable localThrowable)
      {
      }
      if (this.listener == null)
        continue;
      this.listener.onError(this, 8, localThrowable);
      return;
      if (!localHashMap.containsKey("ret"))
      {
        if (this.listener == null)
          continue;
        this.listener.onError(this, 8, new Throwable());
        return;
      }
      if (((Integer)localHashMap.get("ret")).intValue() != 0)
      {
        if (this.listener == null)
          continue;
        String str2 = new com.mob.tools.b.e().a(localHashMap);
        this.listener.onError(this, 8, new Throwable(str2));
        return;
      }
      String str1;
      if (paramString == this.db.getUserId())
      {
        this.db.put("nickname", String.valueOf(localHashMap.get("nickname")));
        if (!localHashMap.containsKey("figureurl_qq_1"))
          break label449;
        this.db.put("icon", String.valueOf(localHashMap.get("figureurl_qq_1")));
        if (!localHashMap.containsKey("figureurl_2"))
          break label484;
        this.db.put("iconQzone", String.valueOf(localHashMap.get("figureurl_2")));
        this.db.put("secretType", String.valueOf(localHashMap.get("is_yellow_vip")));
        if (String.valueOf(localHashMap.get("is_yellow_vip")).equals("1"))
          this.db.put("snsUserLevel", String.valueOf(localHashMap.get("level")));
        str1 = String.valueOf(localHashMap.get("gender"));
        if (!str1.equals("男"))
          break label554;
        this.db.put("gender", "0");
      }
      while (true)
      {
        if (this.listener == null)
          break label595;
        this.listener.onComplete(this, 8, localHashMap);
        return;
        if (!localHashMap.containsKey("figureurl_qq_2"))
          break;
        this.db.put("icon", String.valueOf(localHashMap.get("figureurl_qq_2")));
        break;
        label484: if (localHashMap.containsKey("figureurl_1"))
        {
          this.db.put("iconQzone", String.valueOf(localHashMap.get("figureurl_1")));
          break label328;
        }
        if (!localHashMap.containsKey("figureurl"))
          break label328;
        this.db.put("iconQzone", String.valueOf(localHashMap.get("figureurl")));
        break label328;
        if (str1.equals("女"))
        {
          this.db.put("gender", "1");
          continue;
        }
        this.db.put("gender", "2");
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.QQ
 * JD-Core Version:    0.6.0
 */