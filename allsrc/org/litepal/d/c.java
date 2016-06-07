package org.litepal.d;

import android.database.sqlite.SQLiteDatabase;
import com.alipay.a.a.d;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class c
  implements com.alipay.a.a.c, d
{
  private static org.litepal.c.a a;
  private static g b;

  public static SQLiteDatabase a()
  {
    monitorenter;
    try
    {
      if (a == null)
      {
        org.litepal.c.c.a();
        a = org.litepal.c.a.a();
      }
      a.f();
      if (b == null)
        b = new g(a.c(), a.b());
      SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
      return localSQLiteDatabase;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private static Map<Object, Object> a(Type paramType)
  {
    for (Type localType = paramType; ; localType = ((ParameterizedType)localType).getRawType())
    {
      if (localType == Properties.class)
        return new Properties();
      if (localType == Hashtable.class)
        return new Hashtable();
      if (localType == IdentityHashMap.class)
        return new IdentityHashMap();
      if ((localType == SortedMap.class) || (localType == TreeMap.class))
        return new TreeMap();
      if ((localType == ConcurrentMap.class) || (localType == ConcurrentHashMap.class))
        return new ConcurrentHashMap();
      if ((localType == Map.class) || (localType == HashMap.class))
        return new HashMap();
      if (localType == LinkedHashMap.class)
        return new LinkedHashMap();
      if (!(localType instanceof ParameterizedType))
        break;
    }
    Class localClass = (Class)localType;
    if (localClass.isInterface())
      throw new IllegalArgumentException("unsupport type " + localType);
    try
    {
      Map localMap = (Map)localClass.newInstance();
      return localMap;
    }
    catch (Exception localException)
    {
    }
    throw new IllegalArgumentException("unsupport type " + localType, localException);
  }

  public Object a(Object paramObject)
  {
    TreeMap localTreeMap = new TreeMap();
    Iterator localIterator = ((Map)paramObject).entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (!(localEntry.getKey() instanceof String))
        throw new IllegalArgumentException("Map key must be String!");
      localTreeMap.put((String)localEntry.getKey(), com.alipay.a.a.b.b(localEntry.getValue()));
    }
    return localTreeMap;
  }

  public Object a(Object paramObject, Type paramType)
  {
    if (!paramObject.getClass().equals(org.json.alipay.b.class))
      return null;
    org.json.alipay.b localb = (org.json.alipay.b)paramObject;
    Map localMap = a(paramType);
    if ((paramType instanceof ParameterizedType))
    {
      ParameterizedType localParameterizedType = (ParameterizedType)paramType;
      Type localType1 = localParameterizedType.getActualTypeArguments()[0];
      Type localType2 = localParameterizedType.getActualTypeArguments()[1];
      if (String.class == localType1)
      {
        Iterator localIterator = localb.a();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (com.arcsoft.hpay100.a.a.a((Class)localType2))
          {
            localMap.put(str, localb.a(str));
            continue;
          }
          localMap.put(str, com.alipay.a.a.a.a(localb.a(str), localType2));
        }
      }
      throw new IllegalArgumentException("Deserialize Map Key must be String.class");
    }
    throw new IllegalArgumentException("Deserialize Map must be Generics!");
    return localMap;
  }

  public boolean a(Class<?> paramClass)
  {
    return Map.class.isAssignableFrom(paramClass);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.c
 * JD-Core Version:    0.6.0
 */