package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class UnsafeAllocator
{
  public static UnsafeAllocator create()
  {
    try
    {
      Class localClass = Class.forName("sun.misc.Unsafe");
      Field localField = localClass.getDeclaredField("theUnsafe");
      localField.setAccessible(true);
      Object localObject = localField.get(null);
      UnsafeAllocator.1 local1 = new UnsafeAllocator.1(localClass.getMethod("allocateInstance", new Class[] { Class.class }), localObject);
      return local1;
    }
    catch (Exception localException1)
    {
      try
      {
        Method localMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Class.class });
        localMethod3.setAccessible(true);
        UnsafeAllocator.2 local2 = new UnsafeAllocator.2(localMethod3);
        return local2;
      }
      catch (Exception localException2)
      {
        try
        {
          Method localMethod1 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", new Class[] { Class.class });
          localMethod1.setAccessible(true);
          int i = ((Integer)localMethod1.invoke(null, new Object[] { Object.class })).intValue();
          Class[] arrayOfClass = new Class[2];
          arrayOfClass[0] = Class.class;
          arrayOfClass[1] = Integer.TYPE;
          Method localMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", arrayOfClass);
          localMethod2.setAccessible(true);
          UnsafeAllocator.3 local3 = new UnsafeAllocator.3(localMethod2, i);
          return local3;
        }
        catch (Exception localException3)
        {
        }
      }
    }
    return new UnsafeAllocator.4();
  }

  public abstract <T> T newInstance(Class<T> paramClass);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.UnsafeAllocator
 * JD-Core Version:    0.6.0
 */