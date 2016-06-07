package com.androidquery.util;

import java.io.ByteArrayOutputStream;

public final class c extends ByteArrayOutputStream
{
  public c(int paramInt)
  {
    super(paramInt);
  }

  public final byte[] toByteArray()
  {
    if (this.count == this.buf.length)
      return this.buf;
    return super.toByteArray();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.util.c
 * JD-Core Version:    0.6.0
 */