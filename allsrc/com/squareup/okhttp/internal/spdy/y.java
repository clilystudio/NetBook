package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.List;
import okio.ByteString;
import okio.i;

final class y
  implements a
{
  private final i a;
  private final boolean b;
  private final q c;

  y(i parami, boolean paramBoolean)
  {
    this.a = parami;
    this.c = new q(this.a);
    this.b = paramBoolean;
  }

  private static IOException a(String paramString, Object[] paramArrayOfObject)
  {
    throw new IOException(String.format(paramString, paramArrayOfObject));
  }

  private void a(b paramb, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    int i = this.a.h();
    if (paramInt2 != 4 + i * 8)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt2);
      arrayOfObject[bool] = Integer.valueOf(i);
      throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", arrayOfObject);
    }
    w localw = new w();
    for (int j = 0; j < i; j++)
    {
      int k = this.a.h();
      int m = this.a.h();
      int n = (0xFF000000 & k) >>> 24;
      localw.a(k & 0xFFFFFF, n, m);
    }
    if ((paramInt1 & 0x1) != 0);
    while (true)
    {
      paramb.a(bool, localw);
      return;
      bool = false;
    }
  }

  public final void a()
  {
  }

  public final boolean a(b paramb)
  {
    int i;
    int m;
    int n;
    while (true)
    {
      int i4;
      try
      {
        i = this.a.h();
        int j = this.a.h();
        if ((0x80000000 & i) != 0)
        {
          k = 1;
          m = (0xFF000000 & j) >>> 24;
          n = 0xFFFFFF & j;
          if (k == 0)
            break;
          int i3 = (0x7FFF0000 & i) >>> 16;
          i4 = i & 0xFFFF;
          if (i3 == 3)
            break label108;
          throw new ProtocolException("version != 3: " + i3);
        }
      }
      catch (IOException localIOException)
      {
        return false;
      }
      int k = 0;
      continue;
      switch (i4)
      {
      case 5:
      default:
        this.a.f(n);
        return true;
      case 1:
        int i14 = this.a.h();
        this.a.h();
        int i15 = i14 & 0x7FFFFFFF;
        this.a.g();
        List localList2 = this.c.a(n - 10);
        if ((m & 0x1) != 0);
        for (boolean bool6 = true; ; bool6 = false)
        {
          int i16 = m & 0x2;
          boolean bool7 = false;
          if (i16 != 0)
            bool7 = true;
          paramb.a(bool7, bool6, i15, localList2, HeadersMode.SPDY_SYN_STREAM);
          return true;
        }
      case 2:
        int i13 = 0x7FFFFFFF & this.a.h();
        List localList1 = this.c.a(n - 4);
        if ((m & 0x1) != 0);
        for (boolean bool5 = true; ; bool5 = false)
        {
          paramb.a(false, bool5, i13, localList1, HeadersMode.SPDY_REPLY);
          return true;
        }
      case 3:
        if (n != 8)
        {
          Object[] arrayOfObject7 = new Object[1];
          arrayOfObject7[0] = Integer.valueOf(n);
          throw a("TYPE_RST_STREAM length: %d != 8", arrayOfObject7);
        }
        int i11 = 0x7FFFFFFF & this.a.h();
        int i12 = this.a.h();
        ErrorCode localErrorCode = ErrorCode.fromSpdy3Rst(i12);
        if (localErrorCode == null)
        {
          Object[] arrayOfObject6 = new Object[1];
          arrayOfObject6[0] = Integer.valueOf(i12);
          throw a("TYPE_RST_STREAM unexpected error code: %d", arrayOfObject6);
        }
        paramb.a(i11, localErrorCode);
        return true;
      case 4:
        a(paramb, m, n);
        return true;
      case 6:
        if (n != 4)
        {
          Object[] arrayOfObject5 = new Object[1];
          arrayOfObject5[0] = Integer.valueOf(n);
          throw a("TYPE_PING length: %d != 4", arrayOfObject5);
        }
        int i10 = this.a.h();
        boolean bool2 = this.b;
        boolean bool3;
        if ((i10 & 0x1) == 1)
        {
          bool3 = true;
          if (bool2 != bool3)
            break label538;
        }
        for (boolean bool4 = true; ; bool4 = false)
        {
          paramb.a(bool4, i10, 0);
          return true;
          bool3 = false;
          break;
        }
      case 7:
        if (n != 8)
        {
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = Integer.valueOf(n);
          throw a("TYPE_GOAWAY length: %d != 8", arrayOfObject4);
        }
        int i8 = 0x7FFFFFFF & this.a.h();
        int i9 = this.a.h();
        if (ErrorCode.fromSpdyGoAway(i9) == null)
        {
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Integer.valueOf(i9);
          throw a("TYPE_GOAWAY unexpected error code: %d", arrayOfObject3);
        }
        paramb.a(i8, ByteString.EMPTY);
        return true;
      case 8:
        label108: paramb.a(false, false, 0x7FFFFFFF & this.a.h(), this.c.a(n - 4), HeadersMode.SPDY_HEADERS);
        label538: return true;
      case 9:
      }
      if (n != 8)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(n);
        throw a("TYPE_WINDOW_UPDATE length: %d != 8", arrayOfObject2);
      }
      int i5 = this.a.h();
      int i6 = this.a.h();
      int i7 = i5 & 0x7FFFFFFF;
      long l = i6 & 0x7FFFFFFF;
      if (l == 0L)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(l);
        throw a("windowSizeIncrement was 0", arrayOfObject1);
      }
      paramb.a(i7, l);
      return true;
    }
    int i1 = i & 0x7FFFFFFF;
    int i2 = m & 0x1;
    boolean bool1 = false;
    if (i2 != 0)
      bool1 = true;
    paramb.a(bool1, i1, this.a, n);
    return true;
  }

  public final void close()
  {
    this.c.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.y
 * JD-Core Version:    0.6.0
 */