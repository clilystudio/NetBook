package com.koushikdutta.async.b;

import java.util.concurrent.Future;

public abstract interface c<T> extends a, Future<T>
{
  public abstract c<T> a(d<T> paramd);

  public abstract <C extends d<T>> C b(C paramC);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.b.c
 * JD-Core Version:    0.6.0
 */