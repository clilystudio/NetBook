package com.mob.tools.a;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

public final class k extends InputStream
{
  private ArrayList<InputStream> a = new ArrayList();
  private int b;

  private boolean a()
  {
    return (this.a == null) || (this.a.size() <= 0);
  }

  public final void a(InputStream paramInputStream)
  {
    this.a.add(paramInputStream);
  }

  public final int available()
  {
    if (a())
      return 0;
    return ((InputStream)this.a.get(this.b)).available();
  }

  public final void close()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((InputStream)localIterator.next()).close();
  }

  public final int read()
  {
    int i;
    if (a())
      i = -1;
    label76: 
    while (true)
    {
      return i;
      for (i = ((InputStream)this.a.get(this.b)).read(); ; i = ((InputStream)this.a.get(this.b)).read())
      {
        if (i >= 0)
          break label76;
        this.b = (1 + this.b);
        if (this.b >= this.a.size())
          break;
      }
    }
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i;
    if (a())
      i = -1;
    label87: 
    while (true)
    {
      return i;
      for (i = ((InputStream)this.a.get(this.b)).read(paramArrayOfByte, paramInt1, paramInt2); ; i = ((InputStream)this.a.get(this.b)).read(paramArrayOfByte, paramInt1, paramInt2))
      {
        if (i >= 0)
          break label87;
        this.b = (1 + this.b);
        if (this.b >= this.a.size())
          break;
      }
    }
  }

  public final long skip(long paramLong)
  {
    throw new IOException();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.k
 * JD-Core Version:    0.6.0
 */