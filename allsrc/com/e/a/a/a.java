package com.e.a.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.database.Cursor;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class a
  implements SharedPreferences
{
  private final ContentResolver a;
  private final String[] b = { "_id", "key", "type", "value" };
  private final HashMap<String, Object> c = new HashMap();
  private b d = null;

  public a(Context paramContext)
  {
    this.a = paramContext.getContentResolver();
  }

  private Object a(String paramString)
  {
    while (true)
    {
      try
      {
        Cursor localCursor = this.a.query(com.e.a.a.c.a.a, this.b, "key = ?", new String[] { paramString }, null);
        if (localCursor == null)
          return null;
        int i = localCursor.getColumnIndex("type");
        int j = localCursor.getColumnIndex("value");
        if (localCursor.moveToFirst())
        {
          localObject = com.arcsoft.hpay100.a.a.a(localCursor.getInt(i), localCursor.getString(j));
          localCursor.close();
          return localObject;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      Object localObject = null;
    }
  }

  public final boolean contains(String paramString)
  {
    return a(paramString) != null;
  }

  public final SharedPreferences.Editor edit()
  {
    if (this.d == null)
      this.d = new b(this.a);
    return this.d;
  }

  public final Map<String, ?> getAll()
  {
    Cursor localCursor;
    try
    {
      localCursor = this.a.query(com.e.a.a.c.a.a, this.b, null, null, null);
      if (localCursor == null)
        return null;
      int i = localCursor.getColumnIndex("key");
      int j = localCursor.getColumnIndex("type");
      int k = localCursor.getColumnIndex("value");
      while (localCursor.moveToNext())
      {
        Object localObject = com.arcsoft.hpay100.a.a.a(localCursor.getInt(j), localCursor.getString(k));
        this.c.put(localCursor.getString(i), localObject);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return this.c;
    }
    localCursor.close();
    HashMap localHashMap = this.c;
    return localHashMap;
  }

  public final boolean getBoolean(String paramString, boolean paramBoolean)
  {
    Object localObject = a(paramString);
    if ((localObject != null) && ((localObject instanceof Boolean)))
      paramBoolean = ((Boolean)localObject).booleanValue();
    return paramBoolean;
  }

  public final float getFloat(String paramString, float paramFloat)
  {
    Object localObject = a(paramString);
    if ((localObject != null) && ((localObject instanceof Float)))
      paramFloat = ((Float)localObject).floatValue();
    return paramFloat;
  }

  public final int getInt(String paramString, int paramInt)
  {
    Object localObject = a(paramString);
    if ((localObject != null) && ((localObject instanceof Integer)))
      paramInt = ((Integer)localObject).intValue();
    return paramInt;
  }

  public final long getLong(String paramString, long paramLong)
  {
    Object localObject = a(paramString);
    if ((localObject != null) && ((localObject instanceof Long)))
      paramLong = ((Long)localObject).longValue();
    return paramLong;
  }

  public final String getString(String paramString1, String paramString2)
  {
    Object localObject = a(paramString1);
    if ((localObject != null) && ((localObject instanceof String)))
      return (String)localObject;
    return paramString2;
  }

  public final Set<String> getStringSet(String paramString, Set<String> paramSet)
  {
    return null;
  }

  public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
  }

  public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.e.a.a.a
 * JD-Core Version:    0.6.0
 */