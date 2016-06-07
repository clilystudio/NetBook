package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.l;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okio.f;

public final class A
  implements Closeable
{
  private static final ExecutorService j;
  final Protocol a;
  final boolean b;
  long c = 0L;
  long d;
  final w e = new w();
  final w f = new w();
  final Q g;
  final Socket h;
  final c i;
  private final o k;
  private final Map<Integer, M> l = new HashMap();
  private final String m;
  private int n;
  private int o;
  private boolean p;
  private long q = System.nanoTime();
  private final ExecutorService r;
  private final u s;
  private boolean t = false;
  private J u;
  private final Set<Integer> v = new LinkedHashSet();

  static
  {
    if (!A.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      w = bool;
      j = new ThreadPoolExecutor(0, 2147483647, 60L, TimeUnit.SECONDS, new SynchronousQueue(), l.a("OkHttp SpdyConnection", true));
      return;
    }
  }

  private A(I paramI)
  {
    this.a = I.a(paramI);
    this.s = I.b(paramI);
    this.b = I.c(paramI);
    this.k = I.d(paramI);
    int i1;
    if (I.c(paramI))
    {
      i1 = 1;
      this.o = i1;
      if ((I.c(paramI)) && (this.a == Protocol.HTTP_2))
        this.o = (2 + this.o);
      if (I.c(paramI))
        this.e.a(7, 0, 16777216);
      this.m = I.e(paramI);
      if (this.a != Protocol.HTTP_2)
        break label352;
      this.g = new h();
      TimeUnit localTimeUnit = TimeUnit.SECONDS;
      LinkedBlockingQueue localLinkedBlockingQueue = new LinkedBlockingQueue();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.m;
      this.r = new ThreadPoolExecutor(0, 1, 60L, localTimeUnit, localLinkedBlockingQueue, l.a(String.format("OkHttp %s Push Observer", arrayOfObject), true));
      this.f.a(7, 0, 65535);
      this.f.a(5, 0, 16384);
    }
    while (true)
    {
      this.d = this.f.e(65536);
      this.h = I.f(paramI);
      this.i = this.g.a(okio.o.a(okio.o.a(I.f(paramI))), this.b);
      this.u = new J(this, 0);
      new Thread(this.u).start();
      return;
      i1 = 2;
      break;
      label352: if (this.a != Protocol.SPDY_3)
        break label381;
      this.g = new x();
      this.r = null;
    }
    label381: throw new AssertionError(this.a);
  }

  private M a(int paramInt, List<d> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool1 = true;
    boolean bool2;
    if (!paramBoolean1)
    {
      bool2 = bool1;
      if (paramBoolean2)
        break label65;
    }
    while (true)
    {
      synchronized (this.i)
      {
        monitorenter;
        try
        {
          if (!this.p)
            break label71;
          throw new IOException("shutdown");
        }
        finally
        {
          monitorexit;
        }
      }
      bool2 = false;
      break;
      label65: bool1 = false;
    }
    label71: int i1 = this.o;
    this.o = (2 + this.o);
    M localM = new M(i1, this, bool2, bool1, paramList);
    if (localM.b())
    {
      this.l.put(Integer.valueOf(i1), localM);
      a(false);
    }
    monitorexit;
    this.i.a(bool2, bool1, i1, 0, paramList);
    monitorexit;
    if (!paramBoolean1)
      this.i.b();
    return localM;
  }

  // ERROR //
  private void a(ErrorCode paramErrorCode1, ErrorCode paramErrorCode2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: getstatic 56	com/squareup/okhttp/internal/spdy/A:w	Z
    //   5: ifne +18 -> 23
    //   8: aload_0
    //   9: invokestatic 369	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   12: ifeq +11 -> 23
    //   15: new 221	java/lang/AssertionError
    //   18: dup
    //   19: invokespecial 370	java/lang/AssertionError:<init>	()V
    //   22: athrow
    //   23: aload_0
    //   24: getfield 198	com/squareup/okhttp/internal/spdy/A:i	Lcom/squareup/okhttp/internal/spdy/c;
    //   27: astore 13
    //   29: aload 13
    //   31: monitorenter
    //   32: aload_0
    //   33: monitorenter
    //   34: aload_0
    //   35: getfield 230	com/squareup/okhttp/internal/spdy/A:p	Z
    //   38: ifeq +114 -> 152
    //   41: aload_0
    //   42: monitorexit
    //   43: aload 13
    //   45: monitorexit
    //   46: aconst_null
    //   47: astore 4
    //   49: aload_0
    //   50: monitorenter
    //   51: aload_0
    //   52: getfield 91	com/squareup/okhttp/internal/spdy/A:l	Ljava/util/Map;
    //   55: invokeinterface 373 1 0
    //   60: ifne +222 -> 282
    //   63: aload_0
    //   64: getfield 91	com/squareup/okhttp/internal/spdy/A:l	Ljava/util/Map;
    //   67: invokeinterface 377 1 0
    //   72: aload_0
    //   73: getfield 91	com/squareup/okhttp/internal/spdy/A:l	Ljava/util/Map;
    //   76: invokeinterface 381 1 0
    //   81: anewarray 239	com/squareup/okhttp/internal/spdy/M
    //   84: invokeinterface 387 2 0
    //   89: checkcast 389	[Lcom/squareup/okhttp/internal/spdy/M;
    //   92: astore 12
    //   94: aload_0
    //   95: getfield 91	com/squareup/okhttp/internal/spdy/A:l	Ljava/util/Map;
    //   98: invokeinterface 392 1 0
    //   103: aload_0
    //   104: iconst_0
    //   105: invokespecial 259	com/squareup/okhttp/internal/spdy/A:a	(Z)V
    //   108: aload 12
    //   110: astore 6
    //   112: aload_0
    //   113: monitorexit
    //   114: aload 6
    //   116: ifnull +118 -> 234
    //   119: aload 6
    //   121: arraylength
    //   122: istore 8
    //   124: aload 4
    //   126: astore 9
    //   128: iload_3
    //   129: iload 8
    //   131: if_icmpge +99 -> 230
    //   134: aload 6
    //   136: iload_3
    //   137: aaload
    //   138: astore 10
    //   140: aload 10
    //   142: aload_2
    //   143: invokevirtual 395	com/squareup/okhttp/internal/spdy/M:a	(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    //   146: iinc 3 1
    //   149: goto -21 -> 128
    //   152: aload_0
    //   153: iconst_1
    //   154: putfield 230	com/squareup/okhttp/internal/spdy/A:p	Z
    //   157: aload_0
    //   158: getfield 397	com/squareup/okhttp/internal/spdy/A:n	I
    //   161: istore 16
    //   163: aload_0
    //   164: monitorexit
    //   165: aload_0
    //   166: getfield 198	com/squareup/okhttp/internal/spdy/A:i	Lcom/squareup/okhttp/internal/spdy/c;
    //   169: iload 16
    //   171: aload_1
    //   172: getstatic 400	com/squareup/okhttp/internal/l:a	[B
    //   175: invokeinterface 403 4 0
    //   180: aload 13
    //   182: monitorexit
    //   183: aconst_null
    //   184: astore 4
    //   186: goto -137 -> 49
    //   189: astore 15
    //   191: aload_0
    //   192: monitorexit
    //   193: aload 15
    //   195: athrow
    //   196: astore 14
    //   198: aload 13
    //   200: monitorexit
    //   201: aload 14
    //   203: athrow
    //   204: astore 4
    //   206: goto -157 -> 49
    //   209: astore 5
    //   211: aload_0
    //   212: monitorexit
    //   213: aload 5
    //   215: athrow
    //   216: astore 11
    //   218: aload 9
    //   220: ifnull -74 -> 146
    //   223: aload 11
    //   225: astore 9
    //   227: goto -81 -> 146
    //   230: aload 9
    //   232: astore 4
    //   234: aload_0
    //   235: getfield 198	com/squareup/okhttp/internal/spdy/A:i	Lcom/squareup/okhttp/internal/spdy/c;
    //   238: invokeinterface 406 1 0
    //   243: aload 4
    //   245: astore 7
    //   247: aload_0
    //   248: getfield 183	com/squareup/okhttp/internal/spdy/A:h	Ljava/net/Socket;
    //   251: invokevirtual 409	java/net/Socket:close	()V
    //   254: aload 7
    //   256: ifnull +20 -> 276
    //   259: aload 7
    //   261: athrow
    //   262: astore 7
    //   264: aload 4
    //   266: ifnull -19 -> 247
    //   269: aload 4
    //   271: astore 7
    //   273: goto -26 -> 247
    //   276: return
    //   277: astore 7
    //   279: goto -25 -> 254
    //   282: aconst_null
    //   283: astore 6
    //   285: goto -173 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   34	43	189	finally
    //   152	165	189	finally
    //   191	193	189	finally
    //   32	34	196	finally
    //   43	46	196	finally
    //   165	183	196	finally
    //   193	196	196	finally
    //   198	201	196	finally
    //   23	32	204	java/io/IOException
    //   201	204	204	java/io/IOException
    //   51	108	209	finally
    //   112	114	209	finally
    //   211	213	209	finally
    //   140	146	216	java/io/IOException
    //   234	243	262	java/io/IOException
    //   247	254	277	java/io/IOException
  }

  private void a(boolean paramBoolean)
  {
    monitorenter;
    if (paramBoolean);
    try
    {
      long l1 = System.nanoTime();
      while (true)
      {
        this.q = l1;
        return;
        l1 = 9223372036854775807L;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private t c(int paramInt)
  {
    monitorenter;
    monitorexit;
    return null;
  }

  public final Protocol a()
  {
    return this.a;
  }

  final M a(int paramInt)
  {
    monitorenter;
    try
    {
      M localM = (M)this.l.get(Integer.valueOf(paramInt));
      monitorexit;
      return localM;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final M a(List<d> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(0, paramList, paramBoolean1, true);
  }

  final void a(int paramInt, long paramLong)
  {
    ExecutorService localExecutorService = j;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.m;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    localExecutorService.execute(new C(this, "OkHttp Window Update %s stream %d", arrayOfObject, paramInt, paramLong));
  }

  final void a(int paramInt, ErrorCode paramErrorCode)
  {
    ExecutorService localExecutorService = j;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.m;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    localExecutorService.submit(new B(this, "OkHttp %s stream %d", arrayOfObject, paramInt, paramErrorCode));
  }

  public final void a(int paramInt, boolean paramBoolean, f paramf, long paramLong)
  {
    if (paramLong == 0L)
    {
      this.i.a(paramBoolean, paramInt, paramf, 0);
      return;
    }
    while (true)
    {
      try
      {
        int i1 = Math.min((int)Math.min(paramLong, this.d), this.i.c());
        this.d -= i1;
        monitorexit;
        paramLong -= i1;
        c localc = this.i;
        if ((!paramBoolean) || (paramLong != 0L))
          break label169;
        bool = true;
        localc.a(bool, paramInt, paramf, i1);
        if (paramLong <= 0L)
          break;
        monitorenter;
        try
        {
          if (this.d > 0L)
            continue;
          if (!this.l.containsKey(Integer.valueOf(paramInt)))
            throw new IOException("stream closed");
        }
        catch (InterruptedException localInterruptedException)
        {
          throw new InterruptedIOException();
        }
      }
      finally
      {
        monitorexit;
      }
      wait();
      continue;
      label169: boolean bool = false;
    }
  }

  final M b(int paramInt)
  {
    monitorenter;
    try
    {
      M localM = (M)this.l.remove(Integer.valueOf(paramInt));
      if ((localM != null) && (this.l.isEmpty()))
        a(true);
      notifyAll();
      return localM;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  final void b(int paramInt, ErrorCode paramErrorCode)
  {
    this.i.a(paramInt, paramErrorCode);
  }

  public final boolean b()
  {
    monitorenter;
    try
    {
      long l1 = this.q;
      if (l1 != 9223372036854775807L)
      {
        i1 = 1;
        return i1;
      }
      int i1 = 0;
    }
    finally
    {
      monitorexit;
    }
  }

  public final long c()
  {
    monitorenter;
    try
    {
      long l1 = this.q;
      monitorexit;
      return l1;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void close()
  {
    a(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
  }

  public final void d()
  {
    this.i.b();
  }

  public final void e()
  {
    this.i.a();
    this.i.b(this.e);
    int i1 = this.e.e(65536);
    if (i1 != 65536)
      this.i.a(0, i1 - 65536);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.A
 * JD-Core Version:    0.6.0
 */