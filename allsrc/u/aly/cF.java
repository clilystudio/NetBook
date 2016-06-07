package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.arcsoft.hpay100.a.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class cF
{
  private final Map<String, Long> a = new HashMap();
  private final ArrayList<cE> b = new ArrayList();

  public static List<ay> a(SharedPreferences paramSharedPreferences)
  {
    String str1 = paramSharedPreferences.getString("activities", "");
    if ("".equals(str1));
    while (true)
    {
      return null;
      ArrayList localArrayList = new ArrayList();
      try
      {
        String[] arrayOfString = str1.split(";");
        for (int i = 0; ; i++)
        {
          int j = arrayOfString.length;
          if (i >= j)
          {
            if (localArrayList.size() <= 0)
              break;
            return localArrayList;
          }
          String str2 = arrayOfString[i];
          if (TextUtils.isEmpty(str2))
            continue;
          localArrayList.add(new ae(str2));
        }
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  public final void a()
  {
    synchronized (this.a)
    {
      Iterator localIterator = this.a.entrySet().iterator();
      String str = null;
      long l = 0L;
      Map.Entry localEntry;
      do
      {
        if (!localIterator.hasNext())
        {
          if (str != null)
            b(str);
          return;
        }
        localEntry = (Map.Entry)localIterator.next();
      }
      while (((Long)localEntry.getValue()).longValue() <= l);
      l = ((Long)localEntry.getValue()).longValue();
      str = (String)localEntry.getKey();
    }
  }

  public final void a(Context paramContext)
  {
    SharedPreferences localSharedPreferences = a.M(paramContext);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    StringBuilder localStringBuilder;
    if (this.b.size() > 0)
    {
      String str = localSharedPreferences.getString("activities", "");
      localStringBuilder = new StringBuilder();
      if (!TextUtils.isEmpty(str))
      {
        localStringBuilder.append(str);
        localStringBuilder.append(";");
      }
    }
    synchronized (this.b)
    {
      Iterator localIterator = this.b.iterator();
      if (!localIterator.hasNext())
      {
        this.b.clear();
        localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
        localEditor.remove("activities");
        localEditor.putString("activities", localStringBuilder.toString());
        localEditor.commit();
        return;
      }
      cE localcE = (cE)localIterator.next();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = localcE.a;
      arrayOfObject[1] = Long.valueOf(localcE.b);
      localStringBuilder.append(String.format("[\"%s\",%d]", arrayOfObject));
      localStringBuilder.append(";");
    }
  }

  public final void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      synchronized (this.a)
      {
        this.a.put(paramString, Long.valueOf(System.currentTimeMillis()));
        return;
      }
  }

  public final void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    Long localLong;
    synchronized (this.a)
    {
      localLong = (Long)this.a.remove(paramString);
      if (localLong == null)
      {
        bt.d("MobclickAgent", String.format("please call 'onPageStart(%s)' before onPageEnd", new Object[] { paramString }));
        return;
      }
    }
    long l = System.currentTimeMillis() - localLong.longValue();
    synchronized (this.b)
    {
      this.b.add(new cE(paramString, l));
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cF
 * JD-Core Version:    0.6.0
 */