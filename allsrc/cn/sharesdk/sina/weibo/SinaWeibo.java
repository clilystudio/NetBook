package cn.sharesdk.sina.weibo;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.statistics.b.f.a;
import com.arcsoft.hpay100.a.a;
import com.mob.tools.b.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class SinaWeibo extends Platform
{
  public static final String NAME = SinaWeibo.class.getSimpleName();
  private String a;
  private String b;
  private String c;
  private boolean d;

  public SinaWeibo(Context paramContext)
  {
    super(paramContext);
  }

  protected boolean checkAuthorize(int paramInt, Object paramObject)
  {
    f localf = f.a(this);
    if ((paramInt == 9) && (this.d) && (localf.a()))
      return true;
    if (isAuthValid())
    {
      localf.a(this.a, this.b);
      localf.b(this.db.getToken());
      return true;
    }
    innerAuthorize(paramInt, paramObject);
    return false;
  }

  protected void doAuthorize(String[] paramArrayOfString)
  {
    f localf = f.a(this);
    localf.a(this.a, this.b);
    localf.a(this.c);
    localf.a(paramArrayOfString);
    localf.a(new b(this, localf), isSSODisable());
  }

  protected void doCustomerProtocol(String paramString1, String paramString2, int paramInt, HashMap<String, Object> paramHashMap, HashMap<String, String> paramHashMap1)
  {
    HashMap localHashMap;
    try
    {
      localHashMap = f.a(this).a(paramString1, paramString2, paramHashMap, paramHashMap1);
      if ((localHashMap == null) || (localHashMap.size() <= 0))
      {
        if (this.listener == null)
          return;
        this.listener.onError(this, paramInt, new Throwable());
        return;
      }
      if ((localHashMap.containsKey("error_code")) && (((Integer)localHashMap.get("error_code")).intValue() != 0))
      {
        if (this.listener == null)
          return;
        String str = new e().a(localHashMap);
        this.listener.onError(this, paramInt, new Throwable(str));
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      this.listener.onError(this, paramInt, localThrowable);
      return;
    }
    if (this.listener != null)
      this.listener.onComplete(this, paramInt, localHashMap);
  }

  protected void doShare(Platform.ShareParams paramShareParams)
  {
    String str1 = paramShareParams.getText();
    int i;
    if (TextUtils.isEmpty(str1))
    {
      i = a.e(getContext(), "ssdk_weibo_upload_content");
      if (i <= 0);
    }
    for (String str2 = getContext().getString(i); ; str2 = str1)
    {
      f localf = f.a(this);
      localf.a(this.a, this.b);
      String str3 = paramShareParams.getImagePath();
      String str4 = paramShareParams.getImageUrl();
      if ((this.d) && (localf.a()) && (localf.b()));
      HashMap localHashMap;
      do
      {
        while (true)
        {
          try
          {
            localf.a(paramShareParams, this.listener);
            return;
          }
          catch (Throwable localThrowable2)
          {
            this.listener.onError(this, 9, localThrowable2);
            return;
          }
          try
          {
            float f1 = paramShareParams.getLatitude();
            float f2 = paramShareParams.getLongitude();
            localHashMap = localf.a(getShortLintk(str2, false), str4, str3, f2, f1);
            if (localHashMap == null)
            {
              if (this.listener == null)
                continue;
              this.listener.onError(this, 9, new Throwable());
              return;
            }
          }
          catch (Throwable localThrowable1)
          {
            this.listener.onError(this, 9, localThrowable1);
            return;
          }
          if ((!localHashMap.containsKey("error_code")) || (((Integer)localHashMap.get("error_code")).intValue() == 0))
            break;
          if (this.listener == null)
            continue;
          String str5 = new e().a(localHashMap);
          this.listener.onError(this, 9, new Throwable(str5));
          return;
        }
        localHashMap.put("ShareParams", paramShareParams);
      }
      while (this.listener == null);
      this.listener.onComplete(this, 9, localHashMap);
      return;
    }
  }

  protected HashMap<String, Object> filterFriendshipInfo(int paramInt, HashMap<String, Object> paramHashMap)
  {
    HashMap localHashMap1 = new HashMap();
    switch (paramInt)
    {
    default:
      return null;
    case 2:
      localHashMap1.put("type", "FOLLOWING");
    case 11:
    case 10:
    }
    int i;
    int j;
    while (true)
    {
      localHashMap1.put("snsplat", Integer.valueOf(getPlatformId()));
      localHashMap1.put("snsuid", this.db.getUserId());
      i = Integer.parseInt(String.valueOf(paramHashMap.get("current_cursor")));
      j = Integer.parseInt(String.valueOf(paramHashMap.get("total_number")));
      if (j != 0)
        break;
      return null;
      localHashMap1.put("type", "FOLLOWERS");
      continue;
      localHashMap1.put("type", "FRIENDS");
    }
    Object localObject = paramHashMap.get("users");
    if (localObject == null)
      return null;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = (ArrayList)localObject;
    if (localArrayList2.size() <= 0)
      return null;
    Iterator localIterator = localArrayList2.iterator();
    while (localIterator.hasNext())
    {
      HashMap localHashMap2 = (HashMap)localIterator.next();
      if (localHashMap2 == null)
        continue;
      HashMap localHashMap3 = new HashMap();
      localHashMap3.put("snsuid", String.valueOf(localHashMap2.get("id")));
      localHashMap3.put("nickname", String.valueOf(localHashMap2.get("screen_name")));
      localHashMap3.put("icon", String.valueOf(localHashMap2.get("avatar_hd")));
      label317: String str3;
      if (String.valueOf(localHashMap2.get("verified")).equals("true"))
      {
        localHashMap3.put("secretType", "1");
        localHashMap3.put("secret", String.valueOf(localHashMap2.get("verified_reason")));
        str3 = String.valueOf(localHashMap2.get("gender"));
        if (!str3.equals("m"))
          break label541;
        localHashMap3.put("gender", "0");
      }
      while (true)
      {
        localHashMap3.put("snsUserUrl", "http://weibo.com/" + String.valueOf(localHashMap2.get("profile_url")));
        localHashMap3.put("resume", String.valueOf(localHashMap2.get("description")));
        localHashMap3.put("followerCount", String.valueOf(localHashMap2.get("followers_count")));
        localHashMap3.put("favouriteCount", String.valueOf(localHashMap2.get("friends_count")));
        localHashMap3.put("shareCount", String.valueOf(localHashMap2.get("statuses_count")));
        localHashMap3.put("snsregat", String.valueOf(a.k(String.valueOf(localHashMap2.get("created_at")))));
        localArrayList1.add(localHashMap3);
        break;
        localHashMap3.put("secretType", "0");
        break label317;
        label541: if (str3.equals("f"))
        {
          localHashMap3.put("gender", "1");
          continue;
        }
        localHashMap3.put("gender", "2");
      }
    }
    if (localArrayList1.size() <= 0)
      return null;
    if (10 == paramInt)
    {
      if (((Integer)paramHashMap.get("page_count")).intValue() * (i + 1) >= j);
      for (String str2 = i + "_true"; ; str2 = i + 1 + "_false")
      {
        localHashMap1.put("nextCursor", str2);
        localHashMap1.put("list", localArrayList1);
        return localHashMap1;
      }
    }
    int k = i + localArrayList1.size();
    if (k >= j);
    for (String str1 = j + "_true"; ; str1 = k + "_false")
    {
      localHashMap1.put("nextCursor", str1);
      break;
    }
  }

  protected f.a filterShareContent(Platform.ShareParams paramShareParams, HashMap<String, Object> paramHashMap)
  {
    f.a locala = new f.a();
    locala.b = paramShareParams.getText();
    if (paramHashMap != null)
    {
      locala.a = String.valueOf(paramHashMap.get("id"));
      locala.d.add(String.valueOf(paramHashMap.get("original_pic")));
      locala.g = paramHashMap;
    }
    return locala;
  }

  protected void follow(String paramString)
  {
    f localf = f.a(this);
    HashMap localHashMap;
    try
    {
      localHashMap = localf.d(paramString);
      if (localHashMap == null)
      {
        if (this.listener == null)
          return;
        this.listener.onError(this, 6, new Throwable());
        return;
      }
      if ((localHashMap.containsKey("error_code")) && (((Integer)localHashMap.get("error_code")).intValue() != 0))
      {
        if (this.listener == null)
          return;
        String str = new e().a(localHashMap);
        this.listener.onError(this, 6, new Throwable(str));
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      this.listener.onError(this, 6, localThrowable);
      return;
    }
    if (this.listener != null)
      this.listener.onComplete(this, 6, localHashMap);
  }

  protected HashMap<String, Object> getBilaterals(int paramInt1, int paramInt2, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.getUserId();
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.get("nickname");
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return null;
      f localf = f.a(this);
      try
      {
        HashMap localHashMap1 = localf.c(paramInt1, paramInt2, paramString);
        if ((localHashMap1 == null) || (localHashMap1.containsKey("error_code")))
          continue;
        localHashMap1.put("page_count", Integer.valueOf(paramInt1));
        localHashMap1.put("current_cursor", Integer.valueOf(paramInt2));
        HashMap localHashMap2 = filterFriendshipInfo(10, localHashMap1);
        return localHashMap2;
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
      }
    }
    return null;
  }

  protected HashMap<String, Object> getFollowers(int paramInt1, int paramInt2, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.getUserId();
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.get("nickname");
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return null;
      f localf = f.a(this);
      try
      {
        HashMap localHashMap1 = localf.d(paramInt1, paramInt2, paramString);
        if ((localHashMap1 == null) || (localHashMap1.containsKey("error_code")))
          continue;
        localHashMap1.put("current_cursor", Integer.valueOf(paramInt2));
        HashMap localHashMap2 = filterFriendshipInfo(11, localHashMap1);
        return localHashMap2;
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
      }
    }
    return null;
  }

  protected HashMap<String, Object> getFollowings(int paramInt1, int paramInt2, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.getUserId();
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.get("nickname");
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return null;
      f localf = f.a(this);
      try
      {
        HashMap localHashMap1 = localf.b(paramInt1, paramInt2, paramString);
        if ((localHashMap1 == null) || (localHashMap1.containsKey("error_code")))
          continue;
        localHashMap1.put("current_cursor", Integer.valueOf(paramInt2));
        HashMap localHashMap2 = filterFriendshipInfo(2, localHashMap1);
        return localHashMap2;
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
      }
    }
    return null;
  }

  protected void getFriendList(int paramInt1, int paramInt2, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.getUserId();
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.get("nickname");
    if (TextUtils.isEmpty(paramString))
      if (this.listener != null)
        this.listener.onError(this, 2, new RuntimeException("Both weibo id and screen_name are null"));
    HashMap localHashMap;
    do
      while (true)
      {
        return;
        f localf = f.a(this);
        try
        {
          localHashMap = localf.b(paramInt1, paramInt2, paramString);
          if (localHashMap == null)
          {
            if (this.listener == null)
              continue;
            this.listener.onError(this, 2, new Throwable());
            return;
          }
        }
        catch (Throwable localThrowable)
        {
          this.listener.onError(this, 2, localThrowable);
          return;
        }
        if ((!localHashMap.containsKey("error_code")) || (((Integer)localHashMap.get("error_code")).intValue() == 0))
          break;
        if (this.listener == null)
          continue;
        String str = new e().a(localHashMap);
        this.listener.onError(this, 2, new Throwable(str));
        return;
      }
    while (this.listener == null);
    this.listener.onComplete(this, 2, localHashMap);
  }

  public String getName()
  {
    return NAME;
  }

  protected int getPlatformId()
  {
    return 1;
  }

  public int getVersion()
  {
    return 1;
  }

  public boolean hasShareCallback()
  {
    return true;
  }

  protected void initDevInfo(String paramString)
  {
    this.a = getDevinfo("AppKey");
    this.b = getDevinfo("AppSecret");
    this.c = getDevinfo("RedirectUrl");
    this.d = "true".equals(getDevinfo("ShareByAppClient"));
  }

  public boolean isClientValid()
  {
    return f.a(this).a();
  }

  protected void setNetworkDevinfo()
  {
    this.a = getNetworkDevinfo("app_key", "AppKey");
    this.b = getNetworkDevinfo("app_secret", "AppSecret");
    this.c = getNetworkDevinfo("redirect_uri", "RedirectUrl");
  }

  protected void timeline(int paramInt1, int paramInt2, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.getUserId();
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.get("nickname");
    if (TextUtils.isEmpty(paramString))
      if (this.listener != null)
        this.listener.onError(this, 7, new RuntimeException("Both weibo id and screen_name are null"));
    HashMap localHashMap;
    do
      while (true)
      {
        return;
        f localf = f.a(this);
        try
        {
          localHashMap = localf.a(paramInt1, paramInt2, paramString);
          if (localHashMap == null)
          {
            if (this.listener == null)
              continue;
            this.listener.onError(this, 7, new Throwable());
            return;
          }
        }
        catch (Throwable localThrowable)
        {
          this.listener.onError(this, 7, localThrowable);
          return;
        }
        if ((!localHashMap.containsKey("error_code")) || (((Integer)localHashMap.get("error_code")).intValue() == 0))
          break;
        if (this.listener == null)
          continue;
        String str = new e().a(localHashMap);
        this.listener.onError(this, 7, new Throwable(str));
        return;
      }
    while (this.listener == null);
    this.listener.onComplete(this, 7, localHashMap);
  }

  protected void userInfor(String paramString)
  {
    int i = 1;
    boolean bool = TextUtils.isEmpty(paramString);
    int j = 0;
    if (bool)
    {
      paramString = this.db.getUserId();
      j = i;
    }
    if (TextUtils.isEmpty(paramString))
      paramString = this.db.get("nickname");
    while (true)
    {
      if (TextUtils.isEmpty(paramString))
        if (this.listener != null)
          this.listener.onError(this, 8, new RuntimeException("Both weibo id and screen_name are null"));
      HashMap localHashMap;
      while (true)
      {
        return;
        f localf = f.a(this);
        try
        {
          localHashMap = localf.c(paramString);
          if (localHashMap == null)
          {
            if (this.listener == null)
              continue;
            this.listener.onError(this, 8, new Throwable());
            return;
          }
        }
        catch (Throwable localThrowable)
        {
          this.listener.onError(this, 8, localThrowable);
          return;
        }
        if ((!localHashMap.containsKey("error_code")) || (((Integer)localHashMap.get("error_code")).intValue() == 0))
          break;
        if (this.listener == null)
          continue;
        String str2 = new e().a(localHashMap);
        this.listener.onError(this, 8, new Throwable(str2));
        return;
      }
      label309: String str1;
      if (i != 0)
      {
        this.db.putUserId(String.valueOf(localHashMap.get("id")));
        this.db.put("nickname", String.valueOf(localHashMap.get("screen_name")));
        this.db.put("icon", String.valueOf(localHashMap.get("avatar_hd")));
        if (!String.valueOf(localHashMap.get("verified")).equals("true"))
          break label541;
        this.db.put("secretType", "1");
        this.db.put("secret", String.valueOf(localHashMap.get("verified_reason")));
        str1 = String.valueOf(localHashMap.get("gender"));
        if (!str1.equals("m"))
          break label557;
        this.db.put("gender", "0");
      }
      while (true)
      {
        this.db.put("snsUserUrl", "http://weibo.com/" + String.valueOf(localHashMap.get("profile_url")));
        this.db.put("resume", String.valueOf(localHashMap.get("description")));
        this.db.put("followerCount", String.valueOf(localHashMap.get("followers_count")));
        this.db.put("favouriteCount", String.valueOf(localHashMap.get("friends_count")));
        this.db.put("shareCount", String.valueOf(localHashMap.get("statuses_count")));
        long l = a.k(String.valueOf(localHashMap.get("created_at")));
        this.db.put("snsregat", String.valueOf(l));
        if (this.listener == null)
          break;
        this.listener.onComplete(this, 8, localHashMap);
        return;
        label541: this.db.put("secretType", "0");
        break label309;
        label557: if (str1.equals("f"))
        {
          this.db.put("gender", "1");
          continue;
        }
        this.db.put("gender", "2");
      }
      i = j;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.sina.weibo.SinaWeibo
 * JD-Core Version:    0.6.0
 */