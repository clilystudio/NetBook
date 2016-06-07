package com.squareup.okhttp.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class f<T>
{
  private final Class<?> a;
  private final String b;
  private final Class[] c;

  public f(Class<?> paramClass, String paramString, Class[] paramArrayOfClass)
  {
    this.a = paramClass;
    this.b = paramString;
    this.c = paramArrayOfClass;
  }

  private Method a(Class<?> paramClass)
  {
    Method localMethod;
    if (this.b != null)
    {
      localMethod = a(paramClass, this.b, this.c);
      if ((localMethod == null) || (this.a == null) || (this.a.isAssignableFrom(localMethod.getReturnType())));
    }
    else
    {
      return null;
    }
    return localMethod;
  }

  // ERROR //
  private static Method a(Class<?> paramClass, String paramString, Class[] paramArrayOfClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: invokevirtual 45	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   6: astore 4
    //   8: aload 4
    //   10: invokevirtual 49	java/lang/reflect/Method:getModifiers	()I
    //   13: istore 6
    //   15: iload 6
    //   17: iconst_1
    //   18: iand
    //   19: ifne +13 -> 32
    //   22: aconst_null
    //   23: areturn
    //   24: astore_3
    //   25: aconst_null
    //   26: areturn
    //   27: astore 5
    //   29: aload 4
    //   31: areturn
    //   32: aload 4
    //   34: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	24	java/lang/NoSuchMethodException
    //   8	15	27	java/lang/NoSuchMethodException
  }

  private Object c(T paramT, Object[] paramArrayOfObject)
  {
    Method localMethod = a(paramT.getClass());
    if (localMethod == null)
      return null;
    try
    {
      Object localObject = localMethod.invoke(paramT, paramArrayOfObject);
      return localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    return null;
  }

  private Object d(T paramT, Object[] paramArrayOfObject)
  {
    Method localMethod = a(paramT.getClass());
    if (localMethod == null)
      throw new AssertionError("Method " + this.b + " not supported for object " + paramT);
    AssertionError localAssertionError;
    try
    {
      Object localObject = localMethod.invoke(paramT, paramArrayOfObject);
      return localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localAssertionError = new AssertionError("Unexpectedly could not call: " + localMethod);
      localAssertionError.initCause(localIllegalAccessException);
    }
    throw localAssertionError;
  }

  public final Object a(T paramT, Object[] paramArrayOfObject)
  {
    AssertionError localAssertionError;
    try
    {
      Object localObject = c(paramT, paramArrayOfObject);
      return localObject;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable = localInvocationTargetException.getTargetException();
      if ((localThrowable instanceof RuntimeException))
        throw ((RuntimeException)localThrowable);
      localAssertionError = new AssertionError("Unexpected exception");
      localAssertionError.initCause(localThrowable);
    }
    throw localAssertionError;
  }

  public final boolean a(T paramT)
  {
    return a(paramT.getClass()) != null;
  }

  public final Object b(T paramT, Object[] paramArrayOfObject)
  {
    AssertionError localAssertionError;
    try
    {
      Object localObject = d(paramT, paramArrayOfObject);
      return localObject;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable = localInvocationTargetException.getTargetException();
      if ((localThrowable instanceof RuntimeException))
        throw ((RuntimeException)localThrowable);
      localAssertionError = new AssertionError("Unexpected exception");
      localAssertionError.initCause(localThrowable);
    }
    throw localAssertionError;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.f
 * JD-Core Version:    0.6.0
 */