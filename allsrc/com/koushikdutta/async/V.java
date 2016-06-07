package com.koushikdutta.async;

import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Set;
import java.util.concurrent.Semaphore;

public final class V
{
  private Selector a;
  private boolean b;
  private Semaphore c = new Semaphore(0);

  public V(Selector paramSelector)
  {
    this.a = paramSelector;
  }

  public final Selector a()
  {
    return this.a;
  }

  public final void a(long paramLong)
  {
    try
    {
      this.c.drainPermits();
      this.a.select(paramLong);
      return;
    }
    finally
    {
      this.c.release(2147483647);
    }
    throw localObject;
  }

  public final int b()
  {
    return this.a.selectNow();
  }

  public final Set<SelectionKey> c()
  {
    return this.a.keys();
  }

  public final Set<SelectionKey> d()
  {
    return this.a.selectedKeys();
  }

  public final void e()
  {
    this.a.close();
  }

  public final boolean f()
  {
    return this.a.isOpen();
  }

  // ERROR //
  public final void g()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: iconst_0
    //   3: istore_2
    //   4: aload_0
    //   5: getfield 22	com/koushikdutta/async/V:c	Ljava/util/concurrent/Semaphore;
    //   8: invokevirtual 66	java/util/concurrent/Semaphore:tryAcquire	()Z
    //   11: ifne +16 -> 27
    //   14: aload_0
    //   15: getfield 24	com/koushikdutta/async/V:a	Ljava/nio/channels/Selector;
    //   18: invokevirtual 69	java/nio/channels/Selector:wakeup	()Ljava/nio/channels/Selector;
    //   21: pop
    //   22: iload_1
    //   23: ifeq +9 -> 32
    //   26: return
    //   27: iconst_0
    //   28: istore_1
    //   29: goto -15 -> 14
    //   32: aload_0
    //   33: monitorenter
    //   34: aload_0
    //   35: getfield 71	com/koushikdutta/async/V:b	Z
    //   38: ifeq +13 -> 51
    //   41: aload_0
    //   42: monitorexit
    //   43: return
    //   44: astore 4
    //   46: aload_0
    //   47: monitorexit
    //   48: aload 4
    //   50: athrow
    //   51: aload_0
    //   52: iconst_1
    //   53: putfield 71	com/koushikdutta/async/V:b	Z
    //   56: aload_0
    //   57: monitorexit
    //   58: iload_2
    //   59: bipush 100
    //   61: if_icmpge +56 -> 117
    //   64: aload_0
    //   65: getfield 22	com/koushikdutta/async/V:c	Ljava/util/concurrent/Semaphore;
    //   68: ldc2_w 72
    //   71: getstatic 79	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   74: invokevirtual 82	java/util/concurrent/Semaphore:tryAcquire	(JLjava/util/concurrent/TimeUnit;)Z
    //   77: istore 10
    //   79: iload 10
    //   81: ifeq +22 -> 103
    //   84: aload_0
    //   85: monitorenter
    //   86: aload_0
    //   87: iconst_0
    //   88: putfield 71	com/koushikdutta/async/V:b	Z
    //   91: aload_0
    //   92: monitorexit
    //   93: return
    //   94: astore 11
    //   96: aload_0
    //   97: monitorexit
    //   98: aload 11
    //   100: athrow
    //   101: astore 8
    //   103: aload_0
    //   104: getfield 24	com/koushikdutta/async/V:a	Ljava/nio/channels/Selector;
    //   107: invokevirtual 69	java/nio/channels/Selector:wakeup	()Ljava/nio/channels/Selector;
    //   110: pop
    //   111: iinc 2 1
    //   114: goto -56 -> 58
    //   117: aload_0
    //   118: monitorenter
    //   119: aload_0
    //   120: iconst_0
    //   121: putfield 71	com/koushikdutta/async/V:b	Z
    //   124: aload_0
    //   125: monitorexit
    //   126: return
    //   127: astore 5
    //   129: aload_0
    //   130: monitorexit
    //   131: aload 5
    //   133: athrow
    //   134: astore 6
    //   136: aload_0
    //   137: monitorenter
    //   138: aload_0
    //   139: iconst_0
    //   140: putfield 71	com/koushikdutta/async/V:b	Z
    //   143: aload_0
    //   144: monitorexit
    //   145: aload 6
    //   147: athrow
    //   148: astore 7
    //   150: aload_0
    //   151: monitorexit
    //   152: aload 7
    //   154: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   34	43	44	finally
    //   46	48	44	finally
    //   51	58	44	finally
    //   86	93	94	finally
    //   96	98	94	finally
    //   64	79	101	java/lang/InterruptedException
    //   119	126	127	finally
    //   129	131	127	finally
    //   64	79	134	finally
    //   103	111	134	finally
    //   138	145	148	finally
    //   150	152	148	finally
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.V
 * JD-Core Version:    0.6.0
 */