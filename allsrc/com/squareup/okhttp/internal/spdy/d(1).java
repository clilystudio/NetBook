package com.squareup.okhttp.internal.spdy;

import okio.ByteString;

public final class d
{
  public static final ByteString a = ByteString.encodeUtf8(":status");
  public static final ByteString b = ByteString.encodeUtf8(":method");
  public static final ByteString c = ByteString.encodeUtf8(":path");
  public static final ByteString d = ByteString.encodeUtf8(":scheme");
  public static final ByteString e = ByteString.encodeUtf8(":authority");
  public static final ByteString f = ByteString.encodeUtf8(":host");
  public static final ByteString g = ByteString.encodeUtf8(":version");
  public final ByteString h;
  public final ByteString i;
  final int j;

  public d(String paramString1, String paramString2)
  {
    this(ByteString.encodeUtf8(paramString1), ByteString.encodeUtf8(paramString2));
  }

  public d(ByteString paramByteString, String paramString)
  {
    this(paramByteString, ByteString.encodeUtf8(paramString));
  }

  public d(ByteString paramByteString1, ByteString paramByteString2)
  {
    this.h = paramByteString1;
    this.i = paramByteString2;
    this.j = (32 + paramByteString1.size() + paramByteString2.size());
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof d;
    int k = 0;
    if (bool1)
    {
      d locald = (d)paramObject;
      boolean bool2 = this.h.equals(locald.h);
      k = 0;
      if (bool2)
      {
        boolean bool3 = this.i.equals(locald.i);
        k = 0;
        if (bool3)
          k = 1;
      }
    }
    return k;
  }

  public final int hashCode()
  {
    return 31 * (527 + this.h.hashCode()) + this.i.hashCode();
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.h.utf8();
    arrayOfObject[1] = this.i.utf8();
    return String.format("%s: %s", arrayOfObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.d
 * JD-Core Version:    0.6.0
 */