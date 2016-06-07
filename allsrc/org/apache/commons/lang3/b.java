package org.apache.commons.lang3;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class b
{
  private static final Map<Class<?>, Class<?>> a;
  private static final Map<Class<?>, Class<?>> b;
  private static final Map<String, String> c;
  private static final Map<String, String> d;

  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put(Boolean.TYPE, Boolean.class);
    a.put(Byte.TYPE, Byte.class);
    a.put(Character.TYPE, Character.class);
    a.put(Short.TYPE, Short.class);
    a.put(Integer.TYPE, Integer.class);
    a.put(Long.TYPE, Long.class);
    a.put(Double.TYPE, Double.class);
    a.put(Float.TYPE, Float.class);
    a.put(Void.TYPE, Void.TYPE);
    b = new HashMap();
    Iterator localIterator = a.keySet().iterator();
    while (localIterator.hasNext())
    {
      Class localClass1 = (Class)localIterator.next();
      Class localClass2 = (Class)a.get(localClass1);
      if (localClass1.equals(localClass2))
        continue;
      b.put(localClass2, localClass1);
    }
    c = new HashMap();
    d = new HashMap();
    a("int", "I");
    a("boolean", "Z");
    a("float", "F");
    a("long", "J");
    a("short", "S");
    a("byte", "B");
    a("double", "D");
    a("char", "C");
  }

  public static Class<?> a(Class<?> paramClass)
  {
    return (Class)b.get(paramClass);
  }

  private static void a(String paramString1, String paramString2)
  {
    c.put(paramString1, paramString2);
    d.put(paramString2, paramString1);
  }

  public static boolean a(Class<?> paramClass1, Class<?> paramClass2)
  {
    return a(paramClass1, paramClass2, c.a(JavaVersion.JAVA_1_5));
  }

  private static boolean a(Class<?> paramClass1, Class<?> paramClass2, boolean paramBoolean)
  {
    if (paramClass2 == null)
      return false;
    if (paramClass1 == null)
      return !paramClass2.isPrimitive();
    if (paramBoolean)
    {
      if ((paramClass1.isPrimitive()) && (!paramClass2.isPrimitive()))
      {
        if ((paramClass1 != null) && (paramClass1.isPrimitive()))
          paramClass1 = (Class)a.get(paramClass1);
        if (paramClass1 == null)
          return false;
      }
      if ((paramClass2.isPrimitive()) && (!paramClass1.isPrimitive()))
      {
        paramClass1 = a(paramClass1);
        if (paramClass1 == null)
          return false;
      }
    }
    if (paramClass1.equals(paramClass2))
      return true;
    if (paramClass1.isPrimitive())
    {
      if (!paramClass2.isPrimitive())
        return false;
      if (Integer.TYPE.equals(paramClass1))
        return (Long.TYPE.equals(paramClass2)) || (Float.TYPE.equals(paramClass2)) || (Double.TYPE.equals(paramClass2));
      if (Long.TYPE.equals(paramClass1))
        return (Float.TYPE.equals(paramClass2)) || (Double.TYPE.equals(paramClass2));
      if (Boolean.TYPE.equals(paramClass1))
        return false;
      if (Double.TYPE.equals(paramClass1))
        return false;
      if (Float.TYPE.equals(paramClass1))
        return Double.TYPE.equals(paramClass2);
      if (Character.TYPE.equals(paramClass1))
        return (Integer.TYPE.equals(paramClass2)) || (Long.TYPE.equals(paramClass2)) || (Float.TYPE.equals(paramClass2)) || (Double.TYPE.equals(paramClass2));
      if (Short.TYPE.equals(paramClass1))
        return (Integer.TYPE.equals(paramClass2)) || (Long.TYPE.equals(paramClass2)) || (Float.TYPE.equals(paramClass2)) || (Double.TYPE.equals(paramClass2));
      if (Byte.TYPE.equals(paramClass1))
        return (Short.TYPE.equals(paramClass2)) || (Integer.TYPE.equals(paramClass2)) || (Long.TYPE.equals(paramClass2)) || (Float.TYPE.equals(paramClass2)) || (Double.TYPE.equals(paramClass2));
      return false;
    }
    return paramClass2.isAssignableFrom(paramClass1);
  }

  public static boolean a(Class<?>[] paramArrayOfClass1, Class<?>[] paramArrayOfClass2, boolean paramBoolean)
  {
    if (!a.a(paramArrayOfClass1, paramArrayOfClass2))
      return false;
    if (paramArrayOfClass1 == null)
      paramArrayOfClass1 = a.b;
    if (paramArrayOfClass2 == null)
      paramArrayOfClass2 = a.b;
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfClass1.length)
        break label53;
      if (!a(paramArrayOfClass1[i], paramArrayOfClass2[i], true))
        break;
    }
    label53: return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.b
 * JD-Core Version:    0.6.0
 */