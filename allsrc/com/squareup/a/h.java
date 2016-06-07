package com.squareup.a;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class h
{
  final Object a;
  private final Method b;
  private final int c;
  private boolean d = true;

  h(Object paramObject, Method paramMethod)
  {
    if (paramObject == null)
      throw new NullPointerException("EventProducer target cannot be null.");
    if (paramMethod == null)
      throw new NullPointerException("EventProducer method cannot be null.");
    this.a = paramObject;
    this.b = paramMethod;
    paramMethod.setAccessible(true);
    this.c = (31 * (31 + paramMethod.hashCode()) + paramObject.hashCode());
  }

  public final boolean a()
  {
    return this.d;
  }

  public final void b()
  {
    this.d = false;
  }

  public final Object c()
  {
    if (!this.d)
      throw new IllegalStateException(toString() + " has been invalidated and can no longer produce events.");
    try
    {
      Object localObject = this.b.invoke(this.a, new Object[0]);
      return localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getCause() instanceof Error))
        throw ((Error)localInvocationTargetException.getCause());
    }
    throw localInvocationTargetException;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    h localh;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localh = (h)paramObject;
    }
    while ((this.b.equals(localh.b)) && (this.a == localh.a));
    return false;
  }

  public final int hashCode()
  {
    return this.c;
  }

  public final String toString()
  {
    return "[EventProducer " + this.b + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.a.h
 * JD-Core Version:    0.6.0
 */