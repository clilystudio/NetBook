package com.koushikdutta.async;

import com.koushikdutta.async.a.b;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedList;

public final class I
  implements b
{
  private y a;
  private LinkedList<U> b;
  private ArrayList<Object> c;
  private ByteOrder d;
  private v e;

  static
  {
    new Hashtable();
  }

  public I(y paramy)
  {
    new J(this, 0);
    new K(this, 1);
    new L(this, 2);
    new M(this, 4);
    new N(this, 8);
    new O(this);
    new P(this);
    new Q(this);
    this.b = new LinkedList();
    this.c = new ArrayList();
    this.d = ByteOrder.BIG_ENDIAN;
    this.e = new v();
    this.a = paramy;
    this.a.a(this);
  }

  public final I a(byte paramByte, b paramb)
  {
    this.b.add(new T(0, paramb));
    return this;
  }

  public final I a(int paramInt, S<byte[]> paramS)
  {
    this.b.add(new R(paramInt, paramS));
    return this;
  }

  public final void a(y paramy, v paramv)
  {
    paramv.a(this.e);
    while ((this.b.size() > 0) && (this.e.c() >= ((U)this.b.peek()).a))
    {
      this.e.b = this.d;
      U localU = ((U)this.b.poll()).a(paramy, this.e);
      if (localU == null)
        continue;
      this.b.addFirst(localU);
    }
    if (this.b.size() == 0)
      this.e.a(paramv);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.I
 * JD-Core Version:    0.6.0
 */