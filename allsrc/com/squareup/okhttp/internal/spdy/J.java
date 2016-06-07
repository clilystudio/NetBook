package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.c;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import okio.ByteString;
import okio.i;

final class J extends c
  implements b
{
  private a b;

  private J(A paramA)
  {
    super("OkHttp %s", arrayOfObject);
  }

  public final void a(int paramInt, long paramLong)
  {
    if (paramInt == 0)
      synchronized (this.a)
      {
        A localA2 = this.a;
        localA2.d = (paramLong + localA2.d);
        this.a.notifyAll();
        return;
      }
    M localM = this.a.a(paramInt);
    if (localM != null)
    {
      monitorenter;
      try
      {
        localM.a(paramLong);
        return;
      }
      finally
      {
        monitorexit;
      }
    }
  }

  public final void a(int paramInt, ErrorCode paramErrorCode)
  {
    if (A.a(this.a, paramInt))
      A.a(this.a, paramInt, paramErrorCode);
    M localM;
    do
    {
      return;
      localM = this.a.b(paramInt);
    }
    while (localM == null);
    localM.c(paramErrorCode);
  }

  public final void a(int paramInt, List<d> paramList)
  {
    A.a(this.a, paramInt, paramList);
  }

  public final void a(int paramInt, ByteString paramByteString)
  {
    paramByteString.size();
    synchronized (this.a)
    {
      M[] arrayOfM = (M[])A.e(this.a).values().toArray(new M[A.e(this.a).size()]);
      A.b(this.a, true);
      int i = arrayOfM.length;
      int j = 0;
      if (j < i)
      {
        M localM = arrayOfM[j];
        if ((localM.a() > paramInt) && (localM.c()))
        {
          localM.c(ErrorCode.REFUSED_STREAM);
          this.a.b(localM.a());
        }
        j++;
      }
    }
  }

  public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
    {
      t localt = A.c(this.a, paramInt1);
      if (localt != null)
        localt.b();
      return;
    }
    A.b(this.a, true, paramInt1, paramInt2, null);
  }

  public final void a(boolean paramBoolean, int paramInt1, i parami, int paramInt2)
  {
    if (A.a(this.a, paramInt1))
      A.a(this.a, paramInt1, parami, paramInt2, paramBoolean);
    M localM;
    do
    {
      return;
      localM = this.a.a(paramInt1);
      if (localM == null)
      {
        this.a.a(paramInt1, ErrorCode.INVALID_STREAM);
        parami.f(paramInt2);
        return;
      }
      localM.a(parami, paramInt2);
    }
    while (!paramBoolean);
    localM.h();
  }

  public final void a(boolean paramBoolean, w paramw)
  {
    while (true)
    {
      long l2;
      int m;
      synchronized (this.a)
      {
        int i = this.a.f.e(65536);
        if (!paramBoolean)
          continue;
        this.a.f.a();
        this.a.f.a(paramw);
        if (this.a.a != Protocol.HTTP_2)
          continue;
        ExecutorService localExecutorService = A.f();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = A.a(this.a);
        localExecutorService.execute(new L(this, "OkHttp %s ACK Settings", arrayOfObject, paramw));
        int j = this.a.f.e(65536);
        if ((j == -1) || (j == i))
          break label327;
        l2 = j - i;
        if (A.g(this.a))
          continue;
        A localA2 = this.a;
        localA2.d = (l2 + localA2.d);
        if (l2 <= 0L)
          continue;
        localA2.notifyAll();
        A.a(this.a, true);
        if (A.e(this.a).isEmpty())
          break label317;
        M[] arrayOfM2 = (M[])A.e(this.a).values().toArray(new M[A.e(this.a).size()]);
        l1 = l2;
        arrayOfM1 = arrayOfM2;
        if ((arrayOfM1 == null) || (l1 == 0L))
          break label316;
        int k = arrayOfM1.length;
        m = 0;
        if (m >= k)
          break label316;
      }
      synchronized (arrayOfM1[m])
      {
        ???.a(l1);
        m++;
        continue;
        localObject1 = finally;
        monitorexit;
        throw localObject1;
      }
      label316: return;
      label317: long l1 = l2;
      M[] arrayOfM1 = null;
      continue;
      label327: l1 = 0L;
      arrayOfM1 = null;
    }
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt, List<d> paramList, HeadersMode paramHeadersMode)
  {
    if (A.a(this.a, paramInt))
      A.a(this.a, paramInt, paramList, paramBoolean2);
    M localM1;
    do
    {
      return;
      synchronized (this.a)
      {
        if (A.b(this.a))
          return;
      }
      localM1 = this.a.a(paramInt);
      if (localM1 == null)
      {
        if (paramHeadersMode.failIfStreamAbsent())
        {
          this.a.a(paramInt, ErrorCode.INVALID_STREAM);
          monitorexit;
          return;
        }
        if (paramInt <= A.c(this.a))
        {
          monitorexit;
          return;
        }
        if (paramInt % 2 == A.d(this.a) % 2)
        {
          monitorexit;
          return;
        }
        M localM2 = new M(paramInt, this.a, paramBoolean1, paramBoolean2, paramList);
        A.b(this.a, paramInt);
        A.e(this.a).put(Integer.valueOf(paramInt), localM2);
        ExecutorService localExecutorService = A.f();
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = A.a(this.a);
        arrayOfObject[1] = Integer.valueOf(paramInt);
        localExecutorService.execute(new K(this, "OkHttp %s stream %d", arrayOfObject, localM2));
        monitorexit;
        return;
      }
      monitorexit;
      if (paramHeadersMode.failIfStreamPresent())
      {
        localM1.b(ErrorCode.PROTOCOL_ERROR);
        this.a.b(paramInt);
        return;
      }
      localM1.a(paramList, paramHeadersMode);
    }
    while (!paramBoolean2);
    localM1.h();
  }

  // ERROR //
  protected final void b()
  {
    // Byte code:
    //   0: getstatic 237	com/squareup/okhttp/internal/spdy/ErrorCode:INTERNAL_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   3: astore_1
    //   4: getstatic 237	com/squareup/okhttp/internal/spdy/ErrorCode:INTERNAL_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   7: astore_2
    //   8: aload_0
    //   9: aload_0
    //   10: getfield 14	com/squareup/okhttp/internal/spdy/J:a	Lcom/squareup/okhttp/internal/spdy/A;
    //   13: getfield 240	com/squareup/okhttp/internal/spdy/A:g	Lcom/squareup/okhttp/internal/spdy/Q;
    //   16: aload_0
    //   17: getfield 14	com/squareup/okhttp/internal/spdy/J:a	Lcom/squareup/okhttp/internal/spdy/A;
    //   20: getfield 243	com/squareup/okhttp/internal/spdy/A:h	Ljava/net/Socket;
    //   23: invokestatic 248	okio/o:b	(Ljava/net/Socket;)Lokio/y;
    //   26: invokestatic 251	okio/o:a	(Lokio/y;)Lokio/i;
    //   29: aload_0
    //   30: getfield 14	com/squareup/okhttp/internal/spdy/J:a	Lcom/squareup/okhttp/internal/spdy/A;
    //   33: getfield 254	com/squareup/okhttp/internal/spdy/A:b	Z
    //   36: invokeinterface 259 3 0
    //   41: putfield 261	com/squareup/okhttp/internal/spdy/J:b	Lcom/squareup/okhttp/internal/spdy/a;
    //   44: aload_0
    //   45: getfield 14	com/squareup/okhttp/internal/spdy/J:a	Lcom/squareup/okhttp/internal/spdy/A;
    //   48: getfield 254	com/squareup/okhttp/internal/spdy/A:b	Z
    //   51: ifne +12 -> 63
    //   54: aload_0
    //   55: getfield 261	com/squareup/okhttp/internal/spdy/J:b	Lcom/squareup/okhttp/internal/spdy/a;
    //   58: invokeinterface 264 1 0
    //   63: aload_0
    //   64: getfield 261	com/squareup/okhttp/internal/spdy/J:b	Lcom/squareup/okhttp/internal/spdy/a;
    //   67: aload_0
    //   68: invokeinterface 267 2 0
    //   73: ifne -10 -> 63
    //   76: getstatic 270	com/squareup/okhttp/internal/spdy/ErrorCode:NO_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   79: astore_1
    //   80: getstatic 273	com/squareup/okhttp/internal/spdy/ErrorCode:CANCEL	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   83: astore 10
    //   85: aload_0
    //   86: getfield 14	com/squareup/okhttp/internal/spdy/J:a	Lcom/squareup/okhttp/internal/spdy/A;
    //   89: aload_1
    //   90: aload 10
    //   92: invokestatic 276	com/squareup/okhttp/internal/spdy/A:a	(Lcom/squareup/okhttp/internal/spdy/A;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    //   95: aload_0
    //   96: getfield 261	com/squareup/okhttp/internal/spdy/J:b	Lcom/squareup/okhttp/internal/spdy/a;
    //   99: invokestatic 281	com/squareup/okhttp/internal/l:a	(Ljava/io/Closeable;)V
    //   102: return
    //   103: astore 7
    //   105: getstatic 227	com/squareup/okhttp/internal/spdy/ErrorCode:PROTOCOL_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   108: astore 4
    //   110: getstatic 227	com/squareup/okhttp/internal/spdy/ErrorCode:PROTOCOL_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   113: astore 8
    //   115: aload_0
    //   116: getfield 14	com/squareup/okhttp/internal/spdy/J:a	Lcom/squareup/okhttp/internal/spdy/A;
    //   119: aload 4
    //   121: aload 8
    //   123: invokestatic 276	com/squareup/okhttp/internal/spdy/A:a	(Lcom/squareup/okhttp/internal/spdy/A;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    //   126: aload_0
    //   127: getfield 261	com/squareup/okhttp/internal/spdy/J:b	Lcom/squareup/okhttp/internal/spdy/a;
    //   130: invokestatic 281	com/squareup/okhttp/internal/l:a	(Ljava/io/Closeable;)V
    //   133: return
    //   134: astore_3
    //   135: aload_1
    //   136: astore 4
    //   138: aload_3
    //   139: astore 5
    //   141: aload_0
    //   142: getfield 14	com/squareup/okhttp/internal/spdy/J:a	Lcom/squareup/okhttp/internal/spdy/A;
    //   145: aload 4
    //   147: aload_2
    //   148: invokestatic 276	com/squareup/okhttp/internal/spdy/A:a	(Lcom/squareup/okhttp/internal/spdy/A;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    //   151: aload_0
    //   152: getfield 261	com/squareup/okhttp/internal/spdy/J:b	Lcom/squareup/okhttp/internal/spdy/a;
    //   155: invokestatic 281	com/squareup/okhttp/internal/l:a	(Ljava/io/Closeable;)V
    //   158: aload 5
    //   160: athrow
    //   161: astore 6
    //   163: goto -12 -> 151
    //   166: astore 5
    //   168: goto -27 -> 141
    //   171: astore 9
    //   173: goto -47 -> 126
    //   176: astore 11
    //   178: goto -83 -> 95
    //
    // Exception table:
    //   from	to	target	type
    //   8	63	103	java/io/IOException
    //   63	85	103	java/io/IOException
    //   8	63	134	finally
    //   63	85	134	finally
    //   105	110	134	finally
    //   141	151	161	java/io/IOException
    //   110	115	166	finally
    //   115	126	171	java/io/IOException
    //   85	95	176	java/io/IOException
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.J
 * JD-Core Version:    0.6.0
 */