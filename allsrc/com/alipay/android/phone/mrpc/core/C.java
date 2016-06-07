package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public final class C
  implements InvocationHandler
{
  private Class<?> a;
  private D b;

  public C(l paraml, Class<?> paramClass, D paramD)
  {
    this.a = paramClass;
    this.b = paramD;
  }

  public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    return this.b.a(paramMethod, paramArrayOfObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.C
 * JD-Core Version:    0.6.0
 */