package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.ByteString;

final class k
  implements a
{
  private final okio.i a;
  private final i b;
  private final boolean c;
  private f d;

  k(okio.i parami, int paramInt, boolean paramBoolean)
  {
    this.a = parami;
    this.c = paramBoolean;
    this.b = new i(this.a);
    this.d = new f(4096, this.b);
  }

  private List<d> a(int paramInt1, short paramShort, byte paramByte, int paramInt2)
  {
    i locali = this.b;
    this.b.d = paramInt1;
    locali.a = paramInt1;
    this.b.e = paramShort;
    this.b.b = paramByte;
    this.b.c = paramInt2;
    this.d.a();
    return this.d.b();
  }

  private void a(b paramb, int paramInt)
  {
    this.a.h();
    this.a.f();
  }

  public final void a()
  {
    if (this.c);
    ByteString localByteString;
    do
    {
      return;
      localByteString = this.a.c(h.a().size());
      if (!h.b().isLoggable(Level.FINE))
        continue;
      Logger localLogger = h.b();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localByteString.hex();
      localLogger.fine(String.format("<< CONNECTION %s", arrayOfObject2));
    }
    while (h.a().equals(localByteString));
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = localByteString.utf8();
    throw h.a("Expected a connection header but was %s", arrayOfObject1);
  }

  public final boolean a(b paramb)
  {
    int i = 1;
    int j;
    byte b2;
    int k;
    label240: label246: w localw;
    label426: 
    do
    {
      while (true)
      {
        try
        {
          this.a.a(9L);
          j = h.a(this.a);
          if ((j < 0) || (j > 16384))
          {
            Object[] arrayOfObject1 = new Object[i];
            arrayOfObject1[0] = Integer.valueOf(j);
            throw h.a("FRAME_SIZE_ERROR: %s", arrayOfObject1);
          }
        }
        catch (IOException localIOException)
        {
          i = 0;
          return i;
        }
        byte b1 = this.a.f();
        b2 = this.a.f();
        k = 0x7FFFFFFF & this.a.h();
        if (h.b().isLoggable(Level.FINE))
          h.b().fine(j.a(i, k, j, b1, b2));
        switch (b1)
        {
        default:
          this.a.f(j);
          return i;
        case 0:
          boolean bool3;
          if ((b2 & 0x1) != 0)
          {
            bool3 = i;
            if ((b2 & 0x20) == 0)
              break label240;
          }
          for (boolean bool4 = i; ; bool4 = false)
          {
            if (!bool4)
              break label246;
            throw h.a("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            bool3 = false;
            break;
          }
          int i9 = b2 & 0x8;
          int i10 = 0;
          if (i9 != 0)
            i10 = (short)(0xFF & this.a.f());
          int i11 = h.a(j, b2, i10);
          paramb.a(bool3, k, this.a, i11);
          this.a.f(i10);
          return i;
        case 1:
          if (k == 0)
            throw h.a("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
          boolean bool2;
          if ((b2 & 0x1) != 0)
          {
            bool2 = i;
            if ((b2 & 0x8) == 0)
              break label426;
          }
          for (short s3 = (short)(0xFF & this.a.f()); ; s3 = 0)
          {
            if ((b2 & 0x20) != 0)
            {
              a(paramb, k);
              j -= 5;
            }
            paramb.a(false, bool2, k, a(h.a(j, b2, s3), s3, b2, k), HeadersMode.HTTP_20_HEADERS);
            return i;
            bool2 = false;
            break;
          }
        case 2:
          if (j != 5)
          {
            Object[] arrayOfObject12 = new Object[i];
            arrayOfObject12[0] = Integer.valueOf(j);
            throw h.a("TYPE_PRIORITY length: %d != 5", arrayOfObject12);
          }
          if (k == 0)
            throw h.a("TYPE_PRIORITY streamId == 0", new Object[0]);
          a(paramb, k);
          return i;
        case 3:
          if (j != 4)
          {
            Object[] arrayOfObject11 = new Object[i];
            arrayOfObject11[0] = Integer.valueOf(j);
            throw h.a("TYPE_RST_STREAM length: %d != 4", arrayOfObject11);
          }
          if (k == 0)
            throw h.a("TYPE_RST_STREAM streamId == 0", new Object[0]);
          int i8 = this.a.h();
          ErrorCode localErrorCode = ErrorCode.fromHttp2(i8);
          if (localErrorCode == null)
          {
            Object[] arrayOfObject10 = new Object[i];
            arrayOfObject10[0] = Integer.valueOf(i8);
            throw h.a("TYPE_RST_STREAM unexpected error code: %d", arrayOfObject10);
          }
          paramb.a(k, localErrorCode);
          return i;
        case 4:
          if (k != 0)
            throw h.a("TYPE_SETTINGS streamId != 0", new Object[0]);
          if ((b2 & 0x1) != 0)
          {
            if (j == 0)
              continue;
            throw h.a("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
          }
        case 5:
        case 6:
        case 7:
        case 8:
        }
      }
      if (j % 6 != 0)
      {
        Object[] arrayOfObject9 = new Object[i];
        arrayOfObject9[0] = Integer.valueOf(j);
        throw h.a("TYPE_SETTINGS length %% 6 != 0: %s", arrayOfObject9);
      }
      localw = new w();
      int i6 = 0;
      if (i6 < j)
      {
        short s2 = this.a.g();
        int i7 = this.a.h();
        switch (s2)
        {
        default:
          Object[] arrayOfObject8 = new Object[i];
          arrayOfObject8[0] = Short.valueOf(s2);
          throw h.a("PROTOCOL_ERROR invalid settings id: %s", arrayOfObject8);
        case 2:
          if ((i7 == 0) || (i7 == i))
            break;
          throw h.a("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
        case 3:
          s2 = 4;
        case 1:
        case 6:
        case 4:
        case 5:
        }
        do
        {
          do
          {
            localw.a(s2, 0, i7);
            i6 += 6;
            break;
            s2 = 7;
          }
          while (i7 >= 0);
          throw h.a("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
        }
        while ((i7 >= 16384) && (i7 <= 16777215));
        Object[] arrayOfObject7 = new Object[i];
        arrayOfObject7[0] = Integer.valueOf(i7);
        throw h.a("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", arrayOfObject7);
      }
      paramb.a(false, localw);
    }
    while (localw.c() < 0);
    this.d.a(localw.c());
    return i;
    if (k == 0)
      throw h.a("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    int i5 = b2 & 0x8;
    short s1 = 0;
    if (i5 != 0)
      s1 = (short)(0xFF & this.a.f());
    paramb.a(0x7FFFFFFF & this.a.h(), a(h.a(j - 4, b2, s1), s1, b2, k));
    return i;
    if (j != 8)
    {
      Object[] arrayOfObject6 = new Object[i];
      arrayOfObject6[0] = Integer.valueOf(j);
      throw h.a("TYPE_PING length != 8: %s", arrayOfObject6);
    }
    if (k != 0)
      throw h.a("TYPE_PING streamId != 0", new Object[0]);
    int i2 = this.a.h();
    int i3 = this.a.h();
    int i4 = b2 & 0x1;
    boolean bool1 = false;
    if (i4 != 0)
      bool1 = i;
    paramb.a(bool1, i2, i3);
    return i;
    if (j < 8)
    {
      Object[] arrayOfObject5 = new Object[i];
      arrayOfObject5[0] = Integer.valueOf(j);
      throw h.a("TYPE_GOAWAY length < 8: %s", arrayOfObject5);
    }
    if (k != 0)
      throw h.a("TYPE_GOAWAY streamId != 0", new Object[0]);
    int m = this.a.h();
    int n = this.a.h();
    int i1 = j - 8;
    if (ErrorCode.fromHttp2(n) == null)
    {
      Object[] arrayOfObject4 = new Object[i];
      arrayOfObject4[0] = Integer.valueOf(n);
      throw h.a("TYPE_GOAWAY unexpected error code: %d", arrayOfObject4);
    }
    ByteString localByteString = ByteString.EMPTY;
    if (i1 > 0)
      localByteString = this.a.c(i1);
    paramb.a(m, localByteString);
    return i;
    if (j != 4)
    {
      Object[] arrayOfObject3 = new Object[i];
      arrayOfObject3[0] = Integer.valueOf(j);
      throw h.a("TYPE_WINDOW_UPDATE length !=4: %s", arrayOfObject3);
    }
    long l = 0x7FFFFFFF & this.a.h();
    if (l == 0L)
    {
      Object[] arrayOfObject2 = new Object[i];
      arrayOfObject2[0] = Long.valueOf(l);
      throw h.a("windowSizeIncrement was 0", arrayOfObject2);
    }
    paramb.a(k, l);
    return i;
  }

  public final void close()
  {
    this.a.close();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.k
 * JD-Core Version:    0.6.0
 */