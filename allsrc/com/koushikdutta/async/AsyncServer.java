package com.koushikdutta.async;

import android.os.Build.VERSION;
import android.util.Log;
import com.arcsoft.hpay100.a.a;
import com.koushikdutta.async.a.c;
import java.io.Closeable;
import java.net.InetAddress;
import java.nio.channels.SelectionKey;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;

public class AsyncServer
{
  private static AsyncServer b;
  private static ExecutorService f;
  private static WeakHashMap<Thread, AsyncServer> g;
  Thread a;
  private V c;
  private String d = "AsyncServer";
  private PriorityQueue<p> e = new PriorityQueue(1, q.a);

  static
  {
    boolean bool;
    if (!AsyncServer.class.desiredAssertionStatus())
      bool = true;
    while (true)
    {
      h = bool;
      try
      {
        if (Build.VERSION.SDK_INT <= 8)
        {
          System.setProperty("java.net.preferIPv4Stack", "true");
          System.setProperty("java.net.preferIPv6Addresses", "false");
        }
        label38: b = new AsyncServer();
        f = Executors.newFixedThreadPool(4);
        g = new WeakHashMap();
        return;
        bool = false;
      }
      catch (Throwable localThrowable)
      {
        break label38;
      }
    }
  }

  public AsyncServer()
  {
    this(null);
  }

  private AsyncServer(String paramString)
  {
  }

  private static long a(AsyncServer paramAsyncServer, PriorityQueue<p> paramPriorityQueue)
  {
    long l1 = 9223372036854775807L;
    monitorenter;
    while (true)
    {
      try
      {
        long l2 = System.currentTimeMillis();
        if (paramPriorityQueue.size() <= 0)
          break label97;
        p localp2 = (p)paramPriorityQueue.remove();
        if (localp2.b > l2)
          continue;
        l3 = l1;
        localp1 = localp2;
        monitorexit;
        if (localp1 != null)
        {
          localp1.a.run();
          l1 = l3;
          break;
          l1 = localp2.b - l2;
          paramPriorityQueue.add(localp2);
        }
      }
      finally
      {
        monitorexit;
      }
      return l3;
      label97: long l3 = l1;
      p localp1 = null;
    }
  }

  public static AsyncServer a()
  {
    return b;
  }

  private static void a(V paramV)
  {
    try
    {
      Iterator localIterator = paramV.c().iterator();
      while (localIterator.hasNext())
      {
        SelectionKey localSelectionKey = (SelectionKey)localIterator.next();
        Closeable[] arrayOfCloseable = new Closeable[1];
        arrayOfCloseable[0] = localSelectionKey.channel();
        a.a(arrayOfCloseable);
        try
        {
          localSelectionKey.cancel();
        }
        catch (Exception localException2)
        {
        }
      }
    }
    catch (Exception localException1)
    {
    }
  }

  protected static void b()
  {
  }

  // ERROR //
  private static void b(AsyncServer paramAsyncServer, V paramV, PriorityQueue<p> paramPriorityQueue)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: aload_2
    //   4: invokestatic 197	com/koushikdutta/async/AsyncServer:a	(Lcom/koushikdutta/async/AsyncServer;Ljava/util/PriorityQueue;)J
    //   7: lstore 4
    //   9: aload_0
    //   10: monitorenter
    //   11: aload_1
    //   12: invokevirtual 199	com/koushikdutta/async/V:b	()I
    //   15: ifne +547 -> 562
    //   18: aload_1
    //   19: invokevirtual 142	com/koushikdutta/async/V:c	()Ljava/util/Set;
    //   22: invokeinterface 145 1 0
    //   27: ifne +15 -> 42
    //   30: lload 4
    //   32: ldc2_w 94
    //   35: lcmp
    //   36: ifne +6 -> 42
    //   39: aload_0
    //   40: monitorexit
    //   41: return
    //   42: aload_0
    //   43: monitorexit
    //   44: iload_3
    //   45: ifeq +17 -> 62
    //   48: lload 4
    //   50: ldc2_w 94
    //   53: lcmp
    //   54: ifne +218 -> 272
    //   57: aload_1
    //   58: lconst_0
    //   59: invokevirtual 202	com/koushikdutta/async/V:a	(J)V
    //   62: aload_1
    //   63: invokevirtual 204	com/koushikdutta/async/V:d	()Ljava/util/Set;
    //   66: astore 9
    //   68: aload 9
    //   70: invokeinterface 165 1 0
    //   75: astore 10
    //   77: aload 10
    //   79: invokeinterface 170 1 0
    //   84: ifeq +447 -> 531
    //   87: aload 10
    //   89: invokeinterface 173 1 0
    //   94: checkcast 175	java/nio/channels/SelectionKey
    //   97: astore 11
    //   99: aload 11
    //   101: invokevirtual 207	java/nio/channels/SelectionKey:isAcceptable	()Z
    //   104: ifeq +189 -> 293
    //   107: aload 11
    //   109: invokevirtual 181	java/nio/channels/SelectionKey:channel	()Ljava/nio/channels/SelectableChannel;
    //   112: checkcast 209	java/nio/channels/ServerSocketChannel
    //   115: astore 26
    //   117: aload 26
    //   119: invokevirtual 213	java/nio/channels/ServerSocketChannel:accept	()Ljava/nio/channels/SocketChannel;
    //   122: astore 30
    //   124: aload 30
    //   126: ifnull -49 -> 77
    //   129: aload 30
    //   131: iconst_0
    //   132: invokevirtual 219	java/nio/channels/SocketChannel:configureBlocking	(Z)Ljava/nio/channels/SelectableChannel;
    //   135: pop
    //   136: aload 30
    //   138: aload_1
    //   139: invokevirtual 222	com/koushikdutta/async/V:a	()Ljava/nio/channels/Selector;
    //   142: iconst_1
    //   143: invokevirtual 226	java/nio/channels/SocketChannel:register	(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    //   146: astore 33
    //   148: aload 11
    //   150: invokevirtual 229	java/nio/channels/SelectionKey:attachment	()Ljava/lang/Object;
    //   153: checkcast 231	com/koushikdutta/async/a/c
    //   156: astore 35
    //   158: new 233	com/koushikdutta/async/d
    //   161: dup
    //   162: invokespecial 234	com/koushikdutta/async/d:<init>	()V
    //   165: astore 36
    //   167: aload 36
    //   169: aload 30
    //   171: aload 30
    //   173: invokevirtual 238	java/nio/channels/SocketChannel:socket	()Ljava/net/Socket;
    //   176: invokevirtual 244	java/net/Socket:getRemoteSocketAddress	()Ljava/net/SocketAddress;
    //   179: checkcast 246	java/net/InetSocketAddress
    //   182: invokevirtual 249	com/koushikdutta/async/d:a	(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    //   185: aload 36
    //   187: aload_0
    //   188: aload 33
    //   190: invokevirtual 252	com/koushikdutta/async/d:a	(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    //   193: aload 33
    //   195: aload 36
    //   197: invokevirtual 255	java/nio/channels/SelectionKey:attach	(Ljava/lang/Object;)Ljava/lang/Object;
    //   200: pop
    //   201: aload 35
    //   203: aload 36
    //   205: invokeinterface 258 2 0
    //   210: goto -133 -> 77
    //   213: astore 34
    //   215: aload 33
    //   217: astore 28
    //   219: aload 30
    //   221: astore 29
    //   223: iconst_1
    //   224: anewarray 177	java/io/Closeable
    //   227: dup
    //   228: iconst_0
    //   229: aload 29
    //   231: aastore
    //   232: invokestatic 186	com/arcsoft/hpay100/a/a:a	([Ljava/io/Closeable;)V
    //   235: aload 28
    //   237: ifnull -160 -> 77
    //   240: aload 28
    //   242: invokevirtual 189	java/nio/channels/SelectionKey:cancel	()V
    //   245: goto -168 -> 77
    //   248: astore 12
    //   250: goto -173 -> 77
    //   253: astore 8
    //   255: aload_0
    //   256: monitorexit
    //   257: aload 8
    //   259: athrow
    //   260: astore 7
    //   262: new 260	com/koushikdutta/async/AsyncServer$AsyncSelectorException
    //   265: dup
    //   266: aload 7
    //   268: invokespecial 263	com/koushikdutta/async/AsyncServer$AsyncSelectorException:<init>	(Ljava/lang/Exception;)V
    //   271: athrow
    //   272: aload_1
    //   273: lload 4
    //   275: invokevirtual 202	com/koushikdutta/async/V:a	(J)V
    //   278: goto -216 -> 62
    //   281: astore 6
    //   283: new 260	com/koushikdutta/async/AsyncServer$AsyncSelectorException
    //   286: dup
    //   287: aload 6
    //   289: invokespecial 263	com/koushikdutta/async/AsyncServer$AsyncSelectorException:<init>	(Ljava/lang/Exception;)V
    //   292: athrow
    //   293: aload 11
    //   295: invokevirtual 266	java/nio/channels/SelectionKey:isReadable	()Z
    //   298: ifeq +18 -> 316
    //   301: aload 11
    //   303: invokevirtual 229	java/nio/channels/SelectionKey:attachment	()Ljava/lang/Object;
    //   306: checkcast 233	com/koushikdutta/async/d
    //   309: invokevirtual 267	com/koushikdutta/async/d:b	()I
    //   312: pop
    //   313: goto -236 -> 77
    //   316: aload 11
    //   318: invokevirtual 270	java/nio/channels/SelectionKey:isWritable	()Z
    //   321: ifeq +34 -> 355
    //   324: aload 11
    //   326: invokevirtual 229	java/nio/channels/SelectionKey:attachment	()Ljava/lang/Object;
    //   329: checkcast 233	com/koushikdutta/async/d
    //   332: astore 24
    //   334: aload 24
    //   336: getfield 273	com/koushikdutta/async/d:a	Lcom/koushikdutta/async/a/d;
    //   339: ifnull -262 -> 77
    //   342: aload 24
    //   344: getfield 273	com/koushikdutta/async/d:a	Lcom/koushikdutta/async/a/d;
    //   347: invokeinterface 277 1 0
    //   352: goto -275 -> 77
    //   355: aload 11
    //   357: invokevirtual 280	java/nio/channels/SelectionKey:isConnectable	()Z
    //   360: ifeq +150 -> 510
    //   363: aload 11
    //   365: invokevirtual 229	java/nio/channels/SelectionKey:attachment	()Ljava/lang/Object;
    //   368: checkcast 282	com/koushikdutta/async/n
    //   371: astore 14
    //   373: aload 11
    //   375: invokevirtual 181	java/nio/channels/SelectionKey:channel	()Ljava/nio/channels/SelectableChannel;
    //   378: checkcast 215	java/nio/channels/SocketChannel
    //   381: astore 15
    //   383: aload 11
    //   385: iconst_1
    //   386: invokevirtual 286	java/nio/channels/SelectionKey:interestOps	(I)Ljava/nio/channels/SelectionKey;
    //   389: pop
    //   390: aload 15
    //   392: invokevirtual 289	java/nio/channels/SocketChannel:finishConnect	()Z
    //   395: pop
    //   396: new 233	com/koushikdutta/async/d
    //   399: dup
    //   400: invokespecial 234	com/koushikdutta/async/d:<init>	()V
    //   403: astore 20
    //   405: aload 20
    //   407: aload_0
    //   408: aload 11
    //   410: invokevirtual 252	com/koushikdutta/async/d:a	(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    //   413: aload 20
    //   415: aload 15
    //   417: aload 15
    //   419: invokevirtual 238	java/nio/channels/SocketChannel:socket	()Ljava/net/Socket;
    //   422: invokevirtual 244	java/net/Socket:getRemoteSocketAddress	()Ljava/net/SocketAddress;
    //   425: checkcast 246	java/net/InetSocketAddress
    //   428: invokevirtual 249	com/koushikdutta/async/d:a	(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    //   431: aload 11
    //   433: aload 20
    //   435: invokevirtual 255	java/nio/channels/SelectionKey:attach	(Ljava/lang/Object;)Ljava/lang/Object;
    //   438: pop
    //   439: aload 14
    //   441: aconst_null
    //   442: aload 20
    //   444: invokevirtual 294	com/koushikdutta/async/b/g:b	(Ljava/lang/Exception;Ljava/lang/Object;)Z
    //   447: ifeq -370 -> 77
    //   450: aload 14
    //   452: getfield 297	com/koushikdutta/async/n:a	Landroid/support/design/widget/K;
    //   455: pop
    //   456: goto -379 -> 77
    //   459: astore 17
    //   461: aload 11
    //   463: invokevirtual 189	java/nio/channels/SelectionKey:cancel	()V
    //   466: iconst_1
    //   467: anewarray 177	java/io/Closeable
    //   470: dup
    //   471: iconst_0
    //   472: aload 15
    //   474: aastore
    //   475: invokestatic 186	com/arcsoft/hpay100/a/a:a	([Ljava/io/Closeable;)V
    //   478: aload 14
    //   480: aload 17
    //   482: aconst_null
    //   483: invokevirtual 294	com/koushikdutta/async/b/g:b	(Ljava/lang/Exception;Ljava/lang/Object;)Z
    //   486: ifeq -409 -> 77
    //   489: aload 14
    //   491: getfield 297	com/koushikdutta/async/n:a	Landroid/support/design/widget/K;
    //   494: pop
    //   495: goto -418 -> 77
    //   498: astore 22
    //   500: new 299	java/lang/RuntimeException
    //   503: dup
    //   504: aload 22
    //   506: invokespecial 302	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   509: athrow
    //   510: ldc_w 304
    //   513: ldc_w 306
    //   516: invokestatic 312	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   519: pop
    //   520: new 299	java/lang/RuntimeException
    //   523: dup
    //   524: ldc_w 314
    //   527: invokespecial 315	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   530: athrow
    //   531: aload 9
    //   533: invokeinterface 318 1 0
    //   538: return
    //   539: astore 27
    //   541: aconst_null
    //   542: astore 28
    //   544: aconst_null
    //   545: astore 29
    //   547: goto -324 -> 223
    //   550: astore 31
    //   552: aload 30
    //   554: astore 29
    //   556: aconst_null
    //   557: astore 28
    //   559: goto -336 -> 223
    //   562: iconst_0
    //   563: istore_3
    //   564: goto -522 -> 42
    //
    // Exception table:
    //   from	to	target	type
    //   148	210	213	java/io/IOException
    //   99	117	248	java/nio/channels/CancelledKeyException
    //   117	124	248	java/nio/channels/CancelledKeyException
    //   129	148	248	java/nio/channels/CancelledKeyException
    //   148	210	248	java/nio/channels/CancelledKeyException
    //   223	235	248	java/nio/channels/CancelledKeyException
    //   240	245	248	java/nio/channels/CancelledKeyException
    //   293	313	248	java/nio/channels/CancelledKeyException
    //   316	352	248	java/nio/channels/CancelledKeyException
    //   355	390	248	java/nio/channels/CancelledKeyException
    //   390	439	248	java/nio/channels/CancelledKeyException
    //   439	456	248	java/nio/channels/CancelledKeyException
    //   461	495	248	java/nio/channels/CancelledKeyException
    //   500	510	248	java/nio/channels/CancelledKeyException
    //   510	531	248	java/nio/channels/CancelledKeyException
    //   11	30	253	finally
    //   39	41	253	finally
    //   42	44	253	finally
    //   255	257	253	finally
    //   9	11	260	java/lang/NullPointerException
    //   57	62	260	java/lang/NullPointerException
    //   257	260	260	java/lang/NullPointerException
    //   272	278	260	java/lang/NullPointerException
    //   9	11	281	java/io/IOException
    //   57	62	281	java/io/IOException
    //   257	260	281	java/io/IOException
    //   272	278	281	java/io/IOException
    //   390	439	459	java/io/IOException
    //   439	456	498	java/lang/Exception
    //   117	124	539	java/io/IOException
    //   129	148	550	java/io/IOException
  }

  private boolean c()
  {
    synchronized (g)
    {
      if ((AsyncServer)g.get(this.a) != null)
        return false;
      g.put(this.a, this);
      return true;
    }
  }

  public final r a(InetAddress paramInetAddress, int paramInt, c paramc)
  {
    o localo = new o(0);
    a(new l(this, null, paramInt, paramc, localo));
    return (r)localo.a;
  }

  // ERROR //
  public final Object a(Runnable paramRunnable, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: lconst_0
    //   3: lconst_0
    //   4: lcmp
    //   5: ifeq +98 -> 103
    //   8: invokestatic 99	java/lang/System:currentTimeMillis	()J
    //   11: lstore 5
    //   13: aload_0
    //   14: getfield 88	com/koushikdutta/async/AsyncServer:e	Ljava/util/PriorityQueue;
    //   17: astore 8
    //   19: new 109	com/koushikdutta/async/p
    //   22: dup
    //   23: aload_1
    //   24: lload 5
    //   26: invokespecial 348	com/koushikdutta/async/p:<init>	(Ljava/lang/Runnable;J)V
    //   29: astore 9
    //   31: aload 8
    //   33: aload 9
    //   35: invokevirtual 124	java/util/PriorityQueue:add	(Ljava/lang/Object;)Z
    //   38: pop
    //   39: aload_0
    //   40: getfield 128	com/koushikdutta/async/AsyncServer:c	Lcom/koushikdutta/async/V;
    //   43: ifnonnull +99 -> 142
    //   46: aload_0
    //   47: monitorenter
    //   48: aload_0
    //   49: getfield 128	com/koushikdutta/async/AsyncServer:c	Lcom/koushikdutta/async/V;
    //   52: ifnull +136 -> 188
    //   55: ldc_w 304
    //   58: ldc_w 350
    //   61: invokestatic 312	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   64: pop
    //   65: getstatic 34	com/koushikdutta/async/AsyncServer:h	Z
    //   68: ifne +52 -> 120
    //   71: invokestatic 158	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   74: aload_0
    //   75: getfield 152	com/koushikdutta/async/AsyncServer:a	Ljava/lang/Thread;
    //   78: if_acmpeq +42 -> 120
    //   81: new 352	java/lang/AssertionError
    //   84: dup
    //   85: invokespecial 353	java/lang/AssertionError:<init>	()V
    //   88: athrow
    //   89: astore 13
    //   91: aload_0
    //   92: monitorexit
    //   93: aload 13
    //   95: athrow
    //   96: astore 7
    //   98: aload_0
    //   99: monitorexit
    //   100: aload 7
    //   102: athrow
    //   103: aload_0
    //   104: getfield 88	com/koushikdutta/async/AsyncServer:e	Ljava/util/PriorityQueue;
    //   107: invokevirtual 103	java/util/PriorityQueue:size	()I
    //   110: istore 4
    //   112: iload 4
    //   114: i2l
    //   115: lstore 5
    //   117: goto -104 -> 13
    //   120: aload_0
    //   121: getfield 128	com/koushikdutta/async/AsyncServer:c	Lcom/koushikdutta/async/V;
    //   124: astore 20
    //   126: aload_0
    //   127: getfield 88	com/koushikdutta/async/AsyncServer:e	Ljava/util/PriorityQueue;
    //   130: astore 21
    //   132: aload_0
    //   133: monitorexit
    //   134: aload_0
    //   135: aload 20
    //   137: aload 21
    //   139: invokestatic 135	com/koushikdutta/async/AsyncServer:b	(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/V;Ljava/util/PriorityQueue;)V
    //   142: aload_0
    //   143: getfield 152	com/koushikdutta/async/AsyncServer:a	Ljava/lang/Thread;
    //   146: invokestatic 158	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   149: if_acmpne +138 -> 287
    //   152: iconst_1
    //   153: istore 11
    //   155: iload 11
    //   157: ifne +26 -> 183
    //   160: aload_0
    //   161: getfield 128	com/koushikdutta/async/AsyncServer:c	Lcom/koushikdutta/async/V;
    //   164: astore 12
    //   166: getstatic 67	com/koushikdutta/async/AsyncServer:f	Ljava/util/concurrent/ExecutorService;
    //   169: new 355	com/koushikdutta/async/i
    //   172: dup
    //   173: aload 12
    //   175: invokespecial 357	com/koushikdutta/async/i:<init>	(Lcom/koushikdutta/async/V;)V
    //   178: invokeinterface 362 2 0
    //   183: aload_0
    //   184: monitorexit
    //   185: aload 9
    //   187: areturn
    //   188: new 137	com/koushikdutta/async/V
    //   191: dup
    //   192: invokestatic 368	java/nio/channels/spi/SelectorProvider:provider	()Ljava/nio/channels/spi/SelectorProvider;
    //   195: invokevirtual 372	java/nio/channels/spi/SelectorProvider:openSelector	()Ljava/nio/channels/spi/AbstractSelector;
    //   198: invokespecial 375	com/koushikdutta/async/V:<init>	(Ljava/nio/channels/Selector;)V
    //   201: astore 14
    //   203: aload_0
    //   204: aload 14
    //   206: putfield 128	com/koushikdutta/async/AsyncServer:c	Lcom/koushikdutta/async/V;
    //   209: aload_0
    //   210: getfield 88	com/koushikdutta/async/AsyncServer:e	Ljava/util/PriorityQueue;
    //   213: astore 16
    //   215: aload_0
    //   216: new 377	com/koushikdutta/async/j
    //   219: dup
    //   220: aload_0
    //   221: aload_0
    //   222: getfield 92	com/koushikdutta/async/AsyncServer:d	Ljava/lang/String;
    //   225: aload 14
    //   227: aload 16
    //   229: invokespecial 380	com/koushikdutta/async/j:<init>	(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/V;Ljava/util/PriorityQueue;)V
    //   232: putfield 152	com/koushikdutta/async/AsyncServer:a	Ljava/lang/Thread;
    //   235: aload_0
    //   236: invokespecial 382	com/koushikdutta/async/AsyncServer:c	()Z
    //   239: istore 17
    //   241: iload 17
    //   243: ifne +32 -> 275
    //   246: aload_0
    //   247: getfield 128	com/koushikdutta/async/AsyncServer:c	Lcom/koushikdutta/async/V;
    //   250: invokevirtual 150	com/koushikdutta/async/V:e	()V
    //   253: aload_0
    //   254: aconst_null
    //   255: putfield 128	com/koushikdutta/async/AsyncServer:c	Lcom/koushikdutta/async/V;
    //   258: aload_0
    //   259: aconst_null
    //   260: putfield 152	com/koushikdutta/async/AsyncServer:a	Ljava/lang/Thread;
    //   263: aload_0
    //   264: monitorexit
    //   265: goto -123 -> 142
    //   268: astore 15
    //   270: aload_0
    //   271: monitorexit
    //   272: goto -130 -> 142
    //   275: aload_0
    //   276: getfield 152	com/koushikdutta/async/AsyncServer:a	Ljava/lang/Thread;
    //   279: invokevirtual 385	java/lang/Thread:start	()V
    //   282: aload_0
    //   283: monitorexit
    //   284: goto -142 -> 142
    //   287: iconst_0
    //   288: istore 11
    //   290: goto -135 -> 155
    //   293: astore 22
    //   295: goto -153 -> 142
    //   298: astore 18
    //   300: goto -47 -> 253
    //
    // Exception table:
    //   from	to	target	type
    //   48	89	89	finally
    //   91	93	89	finally
    //   120	134	89	finally
    //   188	215	89	finally
    //   215	241	89	finally
    //   246	253	89	finally
    //   253	265	89	finally
    //   270	272	89	finally
    //   275	284	89	finally
    //   8	13	96	finally
    //   13	48	96	finally
    //   93	96	96	finally
    //   98	100	96	finally
    //   103	112	96	finally
    //   134	142	96	finally
    //   142	152	96	finally
    //   160	183	96	finally
    //   183	185	96	finally
    //   188	215	268	java/io/IOException
    //   134	142	293	java/nio/channels/ClosedSelectorException
    //   246	253	298	java/lang/Exception
  }

  public final void a(Runnable paramRunnable)
  {
    if (Thread.currentThread() == this.a)
    {
      a(paramRunnable, 0L);
      a(this, this.e);
      return;
    }
    Semaphore localSemaphore = new Semaphore(0);
    a(new k(this, paramRunnable, localSemaphore), 0L);
    try
    {
      localSemaphore.acquire();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      Log.e("NIO", "run", localInterruptedException);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.AsyncServer
 * JD-Core Version:    0.6.0
 */