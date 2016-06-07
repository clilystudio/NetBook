package org.apache.commons.lang3.a;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;

abstract class b
{
  private static final Class<?>[] a;

  static
  {
    Class[] arrayOfClass = new Class[7];
    arrayOfClass[0] = Byte.TYPE;
    arrayOfClass[1] = Short.TYPE;
    arrayOfClass[2] = Character.TYPE;
    arrayOfClass[3] = Integer.TYPE;
    arrayOfClass[4] = Long.TYPE;
    arrayOfClass[5] = Float.TYPE;
    arrayOfClass[6] = Double.TYPE;
    a = arrayOfClass;
  }

  private static float a(Class<?>[] paramArrayOfClass1, Class<?>[] paramArrayOfClass2)
  {
    int i = 0;
    float f1 = 0.0F;
    Class<?> localClass1;
    Class<?> localClass2;
    Object localObject2;
    float f2;
    if (i < paramArrayOfClass1.length)
    {
      localClass1 = paramArrayOfClass1[i];
      localClass2 = paramArrayOfClass2[i];
      if (localClass2.isPrimitive())
      {
        if (localClass1.isPrimitive())
          break label193;
        localObject2 = org.apache.commons.lang3.b.a(localClass1);
        f2 = 0.1F;
      }
    }
    while (true)
    {
      int j = 0;
      Object localObject1;
      while ((localObject2 != localClass2) && (j < 7))
      {
        if (localObject2 == a[j])
        {
          f2 += 0.1F;
          if (j < 6)
            localObject2 = a[(j + 1)];
        }
        j++;
        continue;
        localObject1 = localClass1;
        f2 = 0.0F;
      }
      while (true)
      {
        if ((localObject1 != null) && (!localClass2.equals(localObject1)))
        {
          if ((localClass2.isInterface()) && (org.apache.commons.lang3.b.a((Class)localObject1, localClass2)))
            f2 += 0.25F;
        }
        else
        {
          if (localObject1 == null)
            f2 += 1.5F;
          f1 += f2;
          i++;
          break;
        }
        f2 += 1.0F;
        localObject1 = ((Class)localObject1).getSuperclass();
      }
      return f1;
      label193: localObject2 = localClass1;
      f2 = 0.0F;
    }
  }

  static int a(Class<?>[] paramArrayOfClass1, Class<?>[] paramArrayOfClass2, Class<?>[] paramArrayOfClass3)
  {
    float f1 = a(paramArrayOfClass3, paramArrayOfClass1);
    float f2 = a(paramArrayOfClass3, paramArrayOfClass2);
    if (f1 < f2)
      return -1;
    if (f2 < f1)
      return 1;
    return 0;
  }

  static void a(AccessibleObject paramAccessibleObject)
  {
    if ((paramAccessibleObject == null) || (paramAccessibleObject.isAccessible()));
    while (true)
    {
      return;
      Member localMember = (Member)paramAccessibleObject;
      if (!Modifier.isPublic(localMember.getModifiers()))
        continue;
      if ((0x7 & localMember.getDeclaringClass().getModifiers()) == 0);
      for (int i = 1; i != 0; i = 0)
        try
        {
          paramAccessibleObject.setAccessible(true);
          return;
        }
        catch (SecurityException localSecurityException)
        {
          return;
        }
    }
  }

  static boolean a(Member paramMember)
  {
    return (paramMember != null) && (Modifier.isPublic(paramMember.getModifiers())) && (!paramMember.isSynthetic());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.a.b
 * JD-Core Version:    0.6.0
 */