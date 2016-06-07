package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.Proxy;

public final class B
{
  private l a;
  private D b;

  public B(l paraml)
  {
    this.a = paraml;
    this.b = new D(this);
  }

  public final l a()
  {
    return this.a;
  }

  public final <T> T a(Class<T> paramClass)
  {
    return Proxy.newProxyInstance(paramClass.getClassLoader(), new Class[] { paramClass }, new C(this.a, paramClass, this.b));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.B
 * JD-Core Version:    0.6.0
 */