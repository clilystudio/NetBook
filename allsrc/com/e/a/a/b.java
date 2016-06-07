package com.e.a.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class b
  implements SharedPreferences.Editor
{
  private Map<String, Object> a = new HashMap();
  private Set<String> b = new HashSet();
  private boolean c = false;
  private ContentResolver d;

  public b(ContentResolver paramContentResolver)
  {
    this.d = paramContentResolver;
  }

  public final void apply()
  {
  }

  public final SharedPreferences.Editor clear()
  {
    this.c = true;
    return this;
  }

  public final boolean commit()
  {
    ContentValues localContentValues = new ContentValues();
    if (this.c)
    {
      this.d.delete(com.e.a.a.c.a.a, null, null);
      this.c = false;
    }
    Iterator localIterator1 = this.b.iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      this.d.delete(com.e.a.a.c.a.a, "key = ?", new String[] { str });
    }
    Iterator localIterator2 = this.a.entrySet().iterator();
    label147: label326: label352: 
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      Object localObject = localEntry.getValue();
      int i;
      if (localObject == null)
      {
        com.e.a.a.b.a.a("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, null value");
        i = 0;
        if (i != 0)
          break label326;
      }
      for (int j = 0; ; j = 1)
      {
        if (j == 0)
          break label352;
        ContentResolver localContentResolver = this.d;
        Uri localUri = com.e.a.a.c.a.a;
        String[] arrayOfString = new String[1];
        arrayOfString[0] = ((String)localEntry.getKey());
        localContentResolver.update(localUri, localContentValues, "key = ?", arrayOfString);
        break;
        if ((localObject instanceof Integer))
        {
          i = 1;
          break label147;
        }
        if ((localObject instanceof Long))
        {
          i = 2;
          break label147;
        }
        if ((localObject instanceof String))
        {
          i = 3;
          break label147;
        }
        if ((localObject instanceof Boolean))
        {
          i = 4;
          break label147;
        }
        if ((localObject instanceof Float))
        {
          i = 5;
          break label147;
        }
        if ((localObject instanceof Double))
        {
          i = 6;
          break label147;
        }
        com.e.a.a.b.a.a("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, unknown type=" + localObject.getClass().toString());
        i = 0;
        break label147;
        localContentValues.put("type", Integer.valueOf(i));
        localContentValues.put("value", localObject.toString());
      }
    }
    return true;
  }

  public final SharedPreferences.Editor putBoolean(String paramString, boolean paramBoolean)
  {
    this.a.put(paramString, Boolean.valueOf(paramBoolean));
    this.b.remove(paramString);
    return this;
  }

  public final SharedPreferences.Editor putFloat(String paramString, float paramFloat)
  {
    this.a.put(paramString, Float.valueOf(paramFloat));
    this.b.remove(paramString);
    return this;
  }

  public final SharedPreferences.Editor putInt(String paramString, int paramInt)
  {
    this.a.put(paramString, Integer.valueOf(paramInt));
    this.b.remove(paramString);
    return this;
  }

  public final SharedPreferences.Editor putLong(String paramString, long paramLong)
  {
    this.a.put(paramString, Long.valueOf(paramLong));
    this.b.remove(paramString);
    return this;
  }

  public final SharedPreferences.Editor putString(String paramString1, String paramString2)
  {
    this.a.put(paramString1, paramString2);
    this.b.remove(paramString1);
    return this;
  }

  public final SharedPreferences.Editor putStringSet(String paramString, Set<String> paramSet)
  {
    return null;
  }

  public final SharedPreferences.Editor remove(String paramString)
  {
    this.b.add(paramString);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.e.a.a.b
 * JD-Core Version:    0.6.0
 */