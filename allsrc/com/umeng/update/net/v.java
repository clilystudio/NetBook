package com.umeng.update.net;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import u.a.b;

public class v
{
  private static final String a = v.class.getName();
  private final Context b;

  public v(Context paramContext)
  {
    this.b = paramContext;
  }

  public final List<Integer> a()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      SharedPreferences localSharedPreferences = this.b.getSharedPreferences("UMENG_RUNTIME_CACHE", 0);
      Iterator localIterator = localSharedPreferences.getAll().keySet().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          localSharedPreferences.edit().clear().commit();
          return localArrayList;
        }
        String str = (String)localIterator.next();
        try
        {
          int i = Integer.parseInt(str);
          localArrayList.add(Integer.valueOf(i));
          b.a(a, "get nid [" + i + "]");
        }
        catch (NumberFormatException localNumberFormatException)
        {
        }
      }
    }
    catch (Exception localException)
    {
    }
    return localArrayList;
  }

  public final void a(int paramInt)
  {
    try
    {
      SharedPreferences localSharedPreferences = this.b.getSharedPreferences("UMENG_RUNTIME_CACHE", 0);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      monitorenter;
      try
      {
        localEditor.putString(String.valueOf(paramInt), "");
        localEditor.commit();
        monitorexit;
        b.a(a, "add nid [" + paramInt + "] to runtime cache.");
        return;
      }
      finally
      {
        monitorexit;
      }
    }
    catch (Exception localException)
    {
    }
  }

  public final void b(int paramInt)
  {
    try
    {
      SharedPreferences localSharedPreferences = this.b.getSharedPreferences("UMENG_RUNTIME_CACHE", 0);
      if (localSharedPreferences.contains(String.valueOf(paramInt)))
      {
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.remove(String.valueOf(paramInt));
        localEditor.commit();
      }
      b.a(a, "remove nid [" + paramInt + "] to runtime cache.");
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final boolean b()
  {
    int i = this.b.getSharedPreferences("UMENG_RUNTIME_CACHE", 0).getAll().size();
    int j = 0;
    if (i > 0)
      j = 1;
    return j;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.net.v
 * JD-Core Version:    0.6.0
 */