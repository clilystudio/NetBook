package org.apache.commons.lang3.a;

import com.alipay.a.a.c;
import com.alipay.a.a.d;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.TreeMap;

public class a
  implements c, d
{
  public static <T> T a(Class<T> paramClass, Object[] paramArrayOfObject)
  {
    Class[] arrayOfClass = new Class[1];
    for (int i = 0; i <= 0; i++)
      arrayOfClass[0] = paramArrayOfObject[0].getClass();
    if (paramArrayOfObject == null)
      paramArrayOfObject = org.apache.commons.lang3.a.a;
    Constructor localConstructor = a(paramClass, arrayOfClass);
    if (localConstructor == null)
      throw new NoSuchMethodException("No such accessible constructor on object: " + paramClass.getName());
    return localConstructor.newInstance(paramArrayOfObject);
  }

  public static Object a(Field paramField, Object paramObject, boolean paramBoolean)
  {
    if (paramField == null)
      throw new IllegalArgumentException("The field must not be null");
    if (!paramField.isAccessible())
      paramField.setAccessible(true);
    while (true)
    {
      return paramField.get(paramObject);
      b.a(paramField);
    }
  }

  private static <T> Constructor<T> a(Class<T> paramClass, Class<?>[] paramArrayOfClass)
  {
    Object localObject;
    Constructor[] arrayOfConstructor;
    int i;
    int j;
    do
      try
      {
        localObject = paramClass.getConstructor(paramArrayOfClass);
        b.a((AccessibleObject)localObject);
        return localObject;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        arrayOfConstructor = paramClass.getConstructors();
        i = arrayOfConstructor.length;
        j = 0;
        localObject = null;
      }
    while (j >= i);
    Constructor localConstructor = arrayOfConstructor[j];
    if (org.apache.commons.lang3.b.a(paramArrayOfClass, localConstructor.getParameterTypes(), true))
      if ((!b.a(localConstructor)) || (!Modifier.isPublic(localConstructor.getDeclaringClass().getModifiers())))
        break label121;
    while (true)
    {
      if (localConstructor != null)
      {
        b.a(localConstructor);
        if ((localObject == null) || (b.a(localConstructor.getParameterTypes(), ((Constructor)localObject).getParameterTypes(), paramArrayOfClass) < 0))
          localObject = localConstructor;
      }
      j++;
      break;
      label121: localConstructor = null;
    }
  }

  public static Field a(Class<?> paramClass, String paramString, boolean paramBoolean)
  {
    if (paramClass == null)
      throw new IllegalArgumentException("The class must not be null");
    if (paramString == null)
      throw new IllegalArgumentException("The field name must not be null");
    try
    {
      Field localField = paramClass.getDeclaredField(paramString);
      boolean bool = b.a(localField);
      if (!bool)
        return null;
      return localField;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
    }
    return null;
  }

  public static void a(Field paramField, Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    if (paramField == null)
      throw new IllegalArgumentException("The field must not be null");
    if (!paramField.isAccessible())
      paramField.setAccessible(true);
    while (true)
    {
      paramField.set(paramObject1, paramObject2);
      return;
      b.a(paramField);
    }
  }

  public Object a(Object paramObject)
  {
    TreeMap localTreeMap = new TreeMap();
    Class localClass = paramObject.getClass();
    for (Field[] arrayOfField = localClass.getDeclaredFields(); !localClass.equals(Object.class); arrayOfField = localClass.getDeclaredFields())
    {
      if ((arrayOfField != null) && (arrayOfField.length > 0))
      {
        int i = arrayOfField.length;
        int j = 0;
        if (j < i)
        {
          Field localField = arrayOfField[j];
          Object localObject1;
          if ((localField == null) || (paramObject == null))
            localObject1 = null;
          while (true)
          {
            if (localObject1 != null)
              localTreeMap.put(localField.getName(), localObject1);
            j++;
            break;
            if ("this$0".equals(localField.getName()))
            {
              localObject1 = null;
              continue;
            }
            boolean bool = localField.isAccessible();
            localField.setAccessible(true);
            Object localObject2 = localField.get(paramObject);
            if (localObject2 == null)
            {
              localObject1 = null;
              continue;
            }
            localField.setAccessible(bool);
            localObject1 = com.alipay.a.a.b.b(localObject2);
          }
        }
      }
      localClass = localClass.getSuperclass();
    }
    return localTreeMap;
  }

  public Object a(Object paramObject, Type paramType)
  {
    Object localObject;
    if (!paramObject.getClass().equals(org.json.alipay.b.class))
      localObject = null;
    while (true)
    {
      return localObject;
      org.json.alipay.b localb = (org.json.alipay.b)paramObject;
      Class localClass = (Class)paramType;
      localObject = localClass.newInstance();
      while (!localClass.equals(Object.class))
      {
        Field[] arrayOfField = localClass.getDeclaredFields();
        if ((arrayOfField != null) && (arrayOfField.length > 0))
        {
          int i = arrayOfField.length;
          for (int j = 0; j < i; j++)
          {
            Field localField = arrayOfField[j];
            String str = localField.getName();
            Type localType = localField.getGenericType();
            if (!localb.b(str))
              continue;
            localField.setAccessible(true);
            localField.set(localObject, com.alipay.a.a.a.a(localb.a(str), localType));
          }
        }
        localClass = localClass.getSuperclass();
      }
    }
  }

  public boolean a(Class<?> paramClass)
  {
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.a.a
 * JD-Core Version:    0.6.0
 */