package cn.sharesdk.framework;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.mob.tools.b.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class PlatformDb
{
  private static final String DB_NAME = "cn_sharesdk_weibodb";
  private SharedPreferences db;
  private String platformNname;
  private int platformVersion;

  public PlatformDb(Context paramContext, String paramString, int paramInt)
  {
    this.db = paramContext.getSharedPreferences("cn_sharesdk_weibodb_" + paramString + "_" + paramInt, 0);
    this.platformNname = paramString;
    this.platformVersion = paramInt;
  }

  public String exportData()
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.putAll(this.db.getAll());
      String str = new e().a(localHashMap);
      return str;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return null;
  }

  public String get(String paramString)
  {
    return this.db.getString(paramString, "");
  }

  public long getExpiresIn()
  {
    try
    {
      long l = this.db.getLong("expiresIn", 0L);
      return l;
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        int i = this.db.getInt("expiresIn", 0);
        return i;
      }
      catch (Throwable localThrowable2)
      {
      }
    }
    return 0L;
  }

  public long getExpiresTime()
  {
    return this.db.getLong("expiresTime", 0L) + 1000L * getExpiresIn();
  }

  public String getPlatformNname()
  {
    return this.platformNname;
  }

  public int getPlatformVersion()
  {
    return this.platformVersion;
  }

  public String getToken()
  {
    return this.db.getString("token", "");
  }

  public String getTokenSecret()
  {
    return this.db.getString("secret", "");
  }

  public String getUserGender()
  {
    String str = this.db.getString("gender", "2");
    if ("0".equals(str))
      return "m";
    if ("1".equals(str))
      return "f";
    return null;
  }

  public String getUserIcon()
  {
    return this.db.getString("icon", "");
  }

  public String getUserId()
  {
    return this.db.getString("weibo", "");
  }

  public String getUserName()
  {
    return this.db.getString("nickname", "");
  }

  public void importData(String paramString)
  {
    SharedPreferences.Editor localEditor;
    while (true)
    {
      Map.Entry localEntry;
      Object localObject;
      try
      {
        HashMap localHashMap = new e().a(paramString);
        if (localHashMap != null)
        {
          localEditor = this.db.edit();
          Iterator localIterator = localHashMap.entrySet().iterator();
          if (!localIterator.hasNext())
            break;
          localEntry = (Map.Entry)localIterator.next();
          localObject = localEntry.getValue();
          if (!(localObject instanceof Boolean))
            break label119;
          localEditor.putBoolean((String)localEntry.getKey(), ((Boolean)localObject).booleanValue());
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
      }
      return;
      label119: if ((localObject instanceof Float))
      {
        localEditor.putFloat((String)localEntry.getKey(), ((Float)localObject).floatValue());
        continue;
      }
      if ((localObject instanceof Integer))
      {
        localEditor.putInt((String)localEntry.getKey(), ((Integer)localObject).intValue());
        continue;
      }
      if ((localObject instanceof Long))
      {
        localEditor.putLong((String)localEntry.getKey(), ((Long)localObject).longValue());
        continue;
      }
      localEditor.putString((String)localEntry.getKey(), String.valueOf(localObject));
    }
    localEditor.commit();
  }

  public boolean isValid()
  {
    int i = 1;
    String str = getToken();
    if ((str == null) || (str.length() <= 0))
      i = 0;
    do
      return i;
    while ((getExpiresIn() == 0L) || (getExpiresTime() > System.currentTimeMillis()));
    return false;
  }

  public void put(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = this.db.edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  public void putExpiresIn(long paramLong)
  {
    SharedPreferences.Editor localEditor = this.db.edit();
    localEditor.putLong("expiresIn", paramLong);
    localEditor.putLong("expiresTime", System.currentTimeMillis());
    localEditor.commit();
  }

  public void putToken(String paramString)
  {
    SharedPreferences.Editor localEditor = this.db.edit();
    localEditor.putString("token", paramString);
    localEditor.commit();
  }

  public void putTokenSecret(String paramString)
  {
    SharedPreferences.Editor localEditor = this.db.edit();
    localEditor.putString("secret", paramString);
    localEditor.commit();
  }

  public void putUserId(String paramString)
  {
    SharedPreferences.Editor localEditor = this.db.edit();
    localEditor.putString("weibo", paramString);
    localEditor.commit();
  }

  public void removeAccount()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = this.db.getAll().entrySet().iterator();
    while (localIterator1.hasNext())
      localArrayList.add(((Map.Entry)localIterator1.next()).getKey());
    SharedPreferences.Editor localEditor = this.db.edit();
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
      localEditor.remove((String)localIterator2.next());
    localEditor.commit();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.PlatformDb
 * JD-Core Version:    0.6.0
 */