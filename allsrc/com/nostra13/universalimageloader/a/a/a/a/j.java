package com.nostra13.universalimageloader.a.a.a.a;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

final class j extends ByteArrayOutputStream
{
  j(i parami, int paramInt)
  {
    super(paramInt);
  }

  public final String toString()
  {
    int i;
    if ((this.count > 0) && (this.buf[(-1 + this.count)] == 13))
      i = -1 + this.count;
    try
    {
      while (true)
      {
        String str = new String(this.buf, 0, i, i.a(this.a).name());
        return str;
        i = this.count;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new AssertionError(localUnsupportedEncodingException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.a.a.a.a.j
 * JD-Core Version:    0.6.0
 */