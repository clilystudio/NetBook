package com.squareup.okhttp.internal.spdy;

import java.util.zip.Inflater;

final class s extends Inflater
{
  s(q paramq)
  {
  }

  public final int inflate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = super.inflate(paramArrayOfByte, paramInt1, paramInt2);
    if ((i == 0) && (needsDictionary()))
    {
      setDictionary(x.a);
      i = super.inflate(paramArrayOfByte, paramInt1, paramInt2);
    }
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.s
 * JD-Core Version:    0.6.0
 */