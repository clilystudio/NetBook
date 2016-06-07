package com.koushikdutta.async;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

final class c
  implements Iterator<E>
{
  private int a = ArrayDeque.access$300(this.d);
  private int b = ArrayDeque.access$200(this.d);
  private int c = -1;

  private c(ArrayDeque paramArrayDeque)
  {
  }

  public final boolean hasNext()
  {
    return this.a != this.b;
  }

  public final E next()
  {
    if (this.a == this.b)
      throw new NoSuchElementException();
    this.a = (-1 + this.a & -1 + ArrayDeque.access$400(this.d).length);
    Object localObject = ArrayDeque.access$400(this.d)[this.a];
    if ((ArrayDeque.access$200(this.d) != this.b) || (localObject == null))
      throw new ConcurrentModificationException();
    this.c = this.a;
    return localObject;
  }

  public final void remove()
  {
    if (this.c < 0)
      throw new IllegalStateException();
    if (!ArrayDeque.access$500(this.d, this.c))
    {
      this.a = (1 + this.a & -1 + ArrayDeque.access$400(this.d).length);
      this.b = ArrayDeque.access$200(this.d);
    }
    this.c = -1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.c
 * JD-Core Version:    0.6.0
 */