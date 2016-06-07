package com.xiaomi.kenai.jbosh;

import java.util.EventObject;

public final class ab extends EventObject
{
  private final p a;

  private ab(Object paramObject, p paramp)
  {
    super(paramObject);
    if (paramp == null)
      throw new IllegalArgumentException("message body may not be null");
    this.a = paramp;
  }

  static ab a(F paramF, p paramp)
  {
    return new ab(paramF, paramp);
  }

  static ab b(F paramF, p paramp)
  {
    return new ab(paramF, paramp);
  }

  public final p a()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.ab
 * JD-Core Version:    0.6.0
 */