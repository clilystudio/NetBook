package com.maxthon.utils;

import android.content.Context;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

public class MReflect
{
  private final boolean isClass;
  private final Object object;

  private MReflect(Class<?> paramClass)
  {
    this.object = paramClass;
    this.isClass = true;
  }

  private MReflect(Object paramObject)
  {
    this.object = paramObject;
    this.isClass = false;
  }

  public static <T extends AccessibleObject> T accessible(T paramT)
  {
    if (paramT == null)
      paramT = null;
    do
    {
      Member localMember;
      do
      {
        return paramT;
        if (!(paramT instanceof Member))
          break;
        localMember = (Member)paramT;
      }
      while ((Modifier.isPublic(localMember.getModifiers())) && (Modifier.isPublic(localMember.getDeclaringClass().getModifiers())));
    }
    while (paramT.isAccessible());
    paramT.setAccessible(true);
    return paramT;
  }

  private Method exactMethod(String paramString, Class<?>[] paramArrayOfClass)
  {
    Class localClass = type();
    try
    {
      Method localMethod2 = localClass.getMethod(paramString, paramArrayOfClass);
      return localMethod2;
    }
    catch (NoSuchMethodException localNoSuchMethodException1)
    {
      do
        try
        {
          Method localMethod1 = localClass.getDeclaredMethod(paramString, paramArrayOfClass);
          return localMethod1;
        }
        catch (NoSuchMethodException localNoSuchMethodException2)
        {
          localClass = localClass.getSuperclass();
        }
      while (localClass != null);
    }
    throw new NoSuchMethodException();
  }

  private Field field0(String paramString)
  {
    Class localClass1 = type();
    Object localObject;
    try
    {
      Field localField2 = localClass1.getField(paramString);
      return localField2;
    }
    catch (NoSuchFieldException localNoSuchFieldException1)
    {
      localObject = localClass1;
    }
    while (true)
      try
      {
        Field localField1 = (Field)accessible(((Class)localObject).getDeclaredField(paramString));
        return localField1;
      }
      catch (NoSuchFieldException localNoSuchFieldException2)
      {
        Class localClass2 = ((Class)localObject).getSuperclass();
        if (localClass2 != null)
          continue;
        throw new MReflectException(localNoSuchFieldException1);
        localObject = localClass2;
      }
  }

  private static Class<?> forName(String paramString)
  {
    try
    {
      Class localClass = Class.forName(paramString);
      return localClass;
    }
    catch (Exception localException)
    {
    }
    throw new MReflectException(localException);
  }

  private static Class<?> forName(String paramString, Context paramContext)
  {
    try
    {
      Class localClass = Class.forName(paramString, true, paramContext.getClassLoader());
      return localClass;
    }
    catch (Exception localException)
    {
    }
    throw new MReflectException(localException);
  }

  private boolean isSimilarSignature(Method paramMethod, String paramString, Class<?>[] paramArrayOfClass)
  {
    return (paramMethod.getName().equals(paramString)) && (match(paramMethod.getParameterTypes(), paramArrayOfClass));
  }

  private boolean match(Class<?>[] paramArrayOfClass1, Class<?>[] paramArrayOfClass2)
  {
    int i = paramArrayOfClass1.length;
    int j = paramArrayOfClass2.length;
    int k = 0;
    if (i == j);
    for (int m = 0; ; m++)
    {
      if (m >= paramArrayOfClass2.length)
        k = 1;
      boolean bool;
      do
      {
        return k;
        if (paramArrayOfClass2[m] == MReflect.NULL.class)
          break;
        bool = wrapper(paramArrayOfClass1[m]).isAssignableFrom(wrapper(paramArrayOfClass2[m]));
        k = 0;
      }
      while (!bool);
    }
  }

  public static MReflect on(Class<?> paramClass)
  {
    return new MReflect(paramClass);
  }

  public static MReflect on(Object paramObject)
  {
    return new MReflect(paramObject);
  }

  public static MReflect on(String paramString)
  {
    return on(forName(paramString));
  }

  public static MReflect on(String paramString, Context paramContext)
  {
    return on(forName(paramString, paramContext));
  }

  private static MReflect on(Constructor<?> paramConstructor, Object[] paramArrayOfObject)
  {
    try
    {
      MReflect localMReflect = on(((Constructor)accessible(paramConstructor)).newInstance(paramArrayOfObject));
      return localMReflect;
    }
    catch (Exception localException)
    {
    }
    throw new MReflectException(localException);
  }

  private static MReflect on(Method paramMethod, Object paramObject, Object[] paramArrayOfObject)
  {
    try
    {
      accessible(paramMethod);
      if (paramMethod.getReturnType() == Void.TYPE)
      {
        paramMethod.invoke(paramObject, paramArrayOfObject);
        return on(paramObject);
      }
      MReflect localMReflect = on(paramMethod.invoke(paramObject, paramArrayOfObject));
      return localMReflect;
    }
    catch (Exception localException)
    {
    }
    throw new MReflectException(localException);
  }

  private static String property(String paramString)
  {
    int i = paramString.length();
    if (i == 0)
      return "";
    if (i == 1)
      return paramString.toLowerCase();
    return paramString.substring(0, 1).toLowerCase() + paramString.substring(1);
  }

  private Method similarMethod(String paramString, Class<?>[] paramArrayOfClass)
  {
    Class localClass = type();
    Method[] arrayOfMethod1 = localClass.getMethods();
    int i = arrayOfMethod1.length;
    int j = 0;
    label26: Method[] arrayOfMethod2;
    int k;
    if (j >= i)
    {
      arrayOfMethod2 = localClass.getDeclaredMethods();
      k = arrayOfMethod2.length;
    }
    for (int m = 0; ; m++)
    {
      if (m >= k)
      {
        localClass = localClass.getSuperclass();
        if (localClass != null)
          break label26;
        throw new NoSuchMethodException("No similar method " + paramString + " with params " + Arrays.toString(paramArrayOfClass) + " could be found on type " + type() + ".");
        Method localMethod1 = arrayOfMethod1[j];
        if (isSimilarSignature(localMethod1, paramString, paramArrayOfClass))
          return localMethod1;
        j++;
        break;
      }
      Method localMethod2 = arrayOfMethod2[m];
      if (isSimilarSignature(localMethod2, paramString, paramArrayOfClass))
        return localMethod2;
    }
  }

  private static Class<?>[] types(Object[] paramArrayOfObject)
  {
    int i = 0;
    if (paramArrayOfObject == null)
      return new Class[0];
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    if (i >= paramArrayOfObject.length)
      return arrayOfClass;
    Object localObject1 = paramArrayOfObject[i];
    if (localObject1 == null);
    for (Object localObject2 = MReflect.NULL.class; ; localObject2 = localObject1.getClass())
    {
      arrayOfClass[i] = localObject2;
      i++;
      break;
    }
  }

  private static Object unwrap(Object paramObject)
  {
    if ((paramObject instanceof MReflect))
      paramObject = ((MReflect)paramObject).get();
    return paramObject;
  }

  public static Class<?> wrapper(Class<?> paramClass)
  {
    if (paramClass == null)
      paramClass = null;
    do
    {
      do
        return paramClass;
      while (!paramClass.isPrimitive());
      if (Boolean.TYPE == paramClass)
        return Boolean.class;
      if (Integer.TYPE == paramClass)
        return Integer.class;
      if (Long.TYPE == paramClass)
        return Long.class;
      if (Short.TYPE == paramClass)
        return Short.class;
      if (Byte.TYPE == paramClass)
        return Byte.class;
      if (Double.TYPE == paramClass)
        return Double.class;
      if (Float.TYPE == paramClass)
        return Float.class;
      if (Character.TYPE == paramClass)
        return Character.class;
    }
    while (Void.TYPE != paramClass);
    return Void.class;
  }

  public <P> P as(Class<P> paramClass)
  {
    MReflect.1 local1 = new MReflect.1(this, this.object instanceof Map);
    return Proxy.newProxyInstance(paramClass.getClassLoader(), new Class[] { paramClass }, local1);
  }

  public MReflect call(String paramString)
  {
    return call(paramString, new Object[0]);
  }

  public MReflect call(String paramString, Object[] paramArrayOfObject)
  {
    Class[] arrayOfClass = types(paramArrayOfObject);
    try
    {
      MReflect localMReflect2 = on(exactMethod(paramString, arrayOfClass), this.object, paramArrayOfObject);
      return localMReflect2;
    }
    catch (NoSuchMethodException localNoSuchMethodException1)
    {
      try
      {
        MReflect localMReflect1 = on(similarMethod(paramString, arrayOfClass), this.object, paramArrayOfObject);
        return localMReflect1;
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
      }
    }
    throw new MReflectException(localNoSuchMethodException2);
  }

  public MReflect create()
  {
    return create(new Object[0]);
  }

  public MReflect create(Object[] paramArrayOfObject)
  {
    Class[] arrayOfClass = types(paramArrayOfObject);
    Constructor[] arrayOfConstructor;
    int i;
    int j;
    try
    {
      MReflect localMReflect = on(type().getDeclaredConstructor(arrayOfClass), paramArrayOfObject);
      return localMReflect;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      arrayOfConstructor = type().getDeclaredConstructors();
      i = arrayOfConstructor.length;
      j = 0;
    }
    while (true)
    {
      if (j >= i)
        throw new MReflectException(localNoSuchMethodException);
      Constructor localConstructor = arrayOfConstructor[j];
      if (match(localConstructor.getParameterTypes(), arrayOfClass))
        return on(localConstructor, paramArrayOfObject);
      j++;
    }
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof MReflect))
      return this.object.equals(((MReflect)paramObject).get());
    return false;
  }

  public MReflect field(String paramString)
  {
    try
    {
      MReflect localMReflect = on(field0(paramString).get(this.object));
      return localMReflect;
    }
    catch (Exception localException)
    {
    }
    throw new MReflectException(localException);
  }

  public Map<String, MReflect> fields()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    Class localClass = type();
    Field[] arrayOfField;
    int j;
    while (true)
    {
      arrayOfField = localClass.getDeclaredFields();
      int i = arrayOfField.length;
      j = 0;
      if (j < i)
        break;
      localClass = localClass.getSuperclass();
      if (localClass == null)
        return localLinkedHashMap;
    }
    Field localField = arrayOfField[j];
    if (this.isClass);
    for (int k = 0; ; k = 1)
    {
      if ((k ^ Modifier.isStatic(localField.getModifiers())) != 0)
      {
        String str = localField.getName();
        if (!localLinkedHashMap.containsKey(str))
          localLinkedHashMap.put(str, field(str));
      }
      j++;
      break;
    }
  }

  public <T> T get()
  {
    return this.object;
  }

  public <T> T get(String paramString)
  {
    return field(paramString).get();
  }

  public int hashCode()
  {
    return this.object.hashCode();
  }

  public MReflect set(String paramString, Object paramObject)
  {
    try
    {
      field0(paramString).set(this.object, unwrap(paramObject));
      return this;
    }
    catch (Exception localException)
    {
    }
    throw new MReflectException(localException);
  }

  public String toString()
  {
    return this.object.toString();
  }

  public Class<?> type()
  {
    if (this.isClass)
      return (Class)this.object;
    return this.object.getClass();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.utils.MReflect
 * JD-Core Version:    0.6.0
 */