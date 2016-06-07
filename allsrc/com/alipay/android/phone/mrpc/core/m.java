package com.alipay.android.phone.mrpc.core;

import android.content.Context;

public final class m extends A
{
  private Context a;

  public m(Context paramContext)
  {
    this.a = paramContext;
  }

  public final <T> T a(Class<T> paramClass, b paramb)
  {
    return new B(new n(this, paramb)).a(paramClass);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.m
 * JD-Core Version:    0.6.0
 */