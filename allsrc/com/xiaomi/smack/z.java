package com.xiaomi.smack;

import android.os.SystemClock;
import com.xiaomi.a.a.a.b;
import com.xiaomi.network.c;
import com.xiaomi.push.service.R;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.smack.packet.e;
import com.xiaomi.smack.packet.f.b;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.Socket;

public final class z extends l
{
  private Socket a;
  private String b = "";
  private s o;
  private q p;
  private String q;
  private XMPushService r;
  private volatile long s = 0L;
  private volatile long t = 0L;
  private volatile long u = 0L;
  private int v;

  public z(XMPushService paramXMPushService, n paramn)
  {
    super(paramXMPushService, paramn);
    this.r = paramXMPushService;
  }

  // ERROR //
  private void b(int paramInt, Exception paramException)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 46	com/xiaomi/smack/z:o	()I
    //   6: istore 4
    //   8: iload 4
    //   10: iconst_2
    //   11: if_icmpne +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_2
    //   19: iload_1
    //   20: aload_2
    //   21: invokevirtual 49	com/xiaomi/smack/z:a	(IILjava/lang/Exception;)V
    //   24: aload_0
    //   25: ldc 27
    //   27: putfield 52	com/xiaomi/smack/z:k	Ljava/lang/String;
    //   30: aload_0
    //   31: getfield 54	com/xiaomi/smack/z:p	Lcom/xiaomi/smack/q;
    //   34: ifnull +22 -> 56
    //   37: aload_0
    //   38: getfield 54	com/xiaomi/smack/z:p	Lcom/xiaomi/smack/q;
    //   41: invokevirtual 59	com/xiaomi/smack/q:b	()V
    //   44: aload_0
    //   45: getfield 54	com/xiaomi/smack/z:p	Lcom/xiaomi/smack/q;
    //   48: invokevirtual 62	com/xiaomi/smack/q:c	()V
    //   51: aload_0
    //   52: aconst_null
    //   53: putfield 54	com/xiaomi/smack/z:p	Lcom/xiaomi/smack/q;
    //   56: aload_0
    //   57: getfield 64	com/xiaomi/smack/z:o	Lcom/xiaomi/smack/s;
    //   60: astore 5
    //   62: aload 5
    //   64: ifnull +22 -> 86
    //   67: aload_0
    //   68: getfield 64	com/xiaomi/smack/z:o	Lcom/xiaomi/smack/s;
    //   71: invokevirtual 67	com/xiaomi/smack/s:b	()V
    //   74: aload_0
    //   75: getfield 64	com/xiaomi/smack/z:o	Lcom/xiaomi/smack/s;
    //   78: invokevirtual 69	com/xiaomi/smack/s:a	()V
    //   81: aload_0
    //   82: aconst_null
    //   83: putfield 64	com/xiaomi/smack/z:o	Lcom/xiaomi/smack/s;
    //   86: aload_0
    //   87: getfield 71	com/xiaomi/smack/z:a	Ljava/net/Socket;
    //   90: invokevirtual 76	java/net/Socket:close	()V
    //   93: aload_0
    //   94: getfield 80	com/xiaomi/smack/z:i	Ljava/io/Reader;
    //   97: astore 7
    //   99: aload 7
    //   101: ifnull +15 -> 116
    //   104: aload_0
    //   105: getfield 80	com/xiaomi/smack/z:i	Ljava/io/Reader;
    //   108: invokevirtual 83	java/io/Reader:close	()V
    //   111: aload_0
    //   112: aconst_null
    //   113: putfield 80	com/xiaomi/smack/z:i	Ljava/io/Reader;
    //   116: aload_0
    //   117: getfield 87	com/xiaomi/smack/z:j	Ljava/io/Writer;
    //   120: astore 8
    //   122: aload 8
    //   124: ifnull +15 -> 139
    //   127: aload_0
    //   128: getfield 87	com/xiaomi/smack/z:j	Ljava/io/Writer;
    //   131: invokevirtual 90	java/io/Writer:close	()V
    //   134: aload_0
    //   135: aconst_null
    //   136: putfield 87	com/xiaomi/smack/z:j	Ljava/io/Writer;
    //   139: aload_0
    //   140: lconst_0
    //   141: putfield 31	com/xiaomi/smack/z:s	J
    //   144: aload_0
    //   145: lconst_0
    //   146: putfield 33	com/xiaomi/smack/z:t	J
    //   149: goto -135 -> 14
    //   152: astore_3
    //   153: aload_0
    //   154: monitorexit
    //   155: aload_3
    //   156: athrow
    //   157: astore 11
    //   159: aload 11
    //   161: invokestatic 95	com/xiaomi/a/a/a/b:a	(Ljava/lang/Throwable;)V
    //   164: goto -90 -> 74
    //   167: astore 9
    //   169: goto -35 -> 134
    //   172: astore 10
    //   174: goto -63 -> 111
    //   177: astore 6
    //   179: goto -86 -> 93
    //
    // Exception table:
    //   from	to	target	type
    //   2	8	152	finally
    //   17	56	152	finally
    //   56	62	152	finally
    //   67	74	152	finally
    //   74	86	152	finally
    //   86	93	152	finally
    //   93	99	152	finally
    //   104	111	152	finally
    //   111	116	152	finally
    //   116	122	152	finally
    //   127	134	152	finally
    //   134	139	152	finally
    //   139	149	152	finally
    //   159	164	152	finally
    //   67	74	157	java/io/IOException
    //   127	134	167	java/lang/Throwable
    //   104	111	172	java/lang/Throwable
    //   86	93	177	java/lang/Throwable
  }

  private void w()
  {
    monitorenter;
    try
    {
      this.i = new BufferedReader(new InputStreamReader(this.a.getInputStream(), "UTF-8"), 4096);
      this.j = new BufferedWriter(new OutputStreamWriter(this.a.getOutputStream(), "UTF-8"));
      if ((this.i != null) && (this.j != null))
        b();
      this.o = new s(this);
      this.p = new q(this);
      if (this.m.i())
        a(this.h.c(), null);
      this.o.c();
      this.p.a();
      return;
    }
    catch (Exception localException)
    {
      throw new w("Error to init reader and writer", localException);
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: iconst_0
    //   3: istore_2
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: invokevirtual 165	com/xiaomi/smack/z:j	()Z
    //   10: ifne +10 -> 20
    //   13: aload_0
    //   14: invokevirtual 166	com/xiaomi/smack/z:i	()Z
    //   17: ifeq +11 -> 28
    //   20: ldc 168
    //   22: invokestatic 171	com/xiaomi/a/a/a/b:a	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: monitorexit
    //   27: return
    //   28: aload_0
    //   29: iconst_0
    //   30: iconst_0
    //   31: aconst_null
    //   32: invokevirtual 49	com/xiaomi/smack/z:a	(IILjava/lang/Exception;)V
    //   35: aload_0
    //   36: getfield 137	com/xiaomi/smack/z:m	Lcom/xiaomi/smack/n;
    //   39: astore 5
    //   41: aload 5
    //   43: invokevirtual 174	com/xiaomi/smack/n:h	()Ljava/lang/String;
    //   46: astore 6
    //   48: aload 5
    //   50: invokevirtual 177	com/xiaomi/smack/n:g	()I
    //   53: istore 7
    //   55: new 179	java/util/ArrayList
    //   58: dup
    //   59: invokespecial 181	java/util/ArrayList:<init>	()V
    //   62: astore 8
    //   64: new 183	java/lang/StringBuilder
    //   67: dup
    //   68: ldc 185
    //   70: invokespecial 187	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   73: aload 6
    //   75: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 198	com/xiaomi/a/a/a/b:d	(Ljava/lang/String;)Ljava/lang/Integer;
    //   84: invokevirtual 203	java/lang/Integer:intValue	()I
    //   87: istore 9
    //   89: invokestatic 208	com/xiaomi/network/f:a	()Lcom/xiaomi/network/f;
    //   92: aload 6
    //   94: invokevirtual 211	com/xiaomi/network/f:a	(Ljava/lang/String;)Lcom/xiaomi/network/c;
    //   97: astore 10
    //   99: iload 9
    //   101: invokestatic 215	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   104: invokestatic 218	com/xiaomi/a/a/a/b:a	(Ljava/lang/Integer;)V
    //   107: aload 10
    //   109: ifnull +10 -> 119
    //   112: aload 10
    //   114: invokevirtual 223	com/xiaomi/network/c:b	()Ljava/util/ArrayList;
    //   117: astore 8
    //   119: aload 8
    //   121: invokevirtual 226	java/util/ArrayList:isEmpty	()Z
    //   124: ifeq +11 -> 135
    //   127: aload 8
    //   129: aload 6
    //   131: invokevirtual 230	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   134: pop
    //   135: aload_0
    //   136: lconst_0
    //   137: putfield 35	com/xiaomi/smack/z:u	J
    //   140: new 183	java/lang/StringBuilder
    //   143: dup
    //   144: invokespecial 231	java/lang/StringBuilder:<init>	()V
    //   147: astore 11
    //   149: aload 8
    //   151: invokevirtual 235	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   154: astore 12
    //   156: aload 12
    //   158: invokeinterface 240 1 0
    //   163: ifeq +443 -> 606
    //   166: aload 12
    //   168: invokeinterface 244 1 0
    //   173: checkcast 246	java/lang/String
    //   176: astore 13
    //   178: invokestatic 252	java/lang/System:currentTimeMillis	()J
    //   181: lstore 14
    //   183: aload_0
    //   184: iconst_1
    //   185: aload_0
    //   186: getfield 254	com/xiaomi/smack/z:d	I
    //   189: iadd
    //   190: putfield 254	com/xiaomi/smack/z:d	I
    //   193: new 183	java/lang/StringBuilder
    //   196: dup
    //   197: ldc_w 256
    //   200: invokespecial 187	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   203: aload 13
    //   205: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokestatic 171	com/xiaomi/a/a/a/b:a	(Ljava/lang/String;)V
    //   214: aload_0
    //   215: new 73	java/net/Socket
    //   218: dup
    //   219: invokespecial 257	java/net/Socket:<init>	()V
    //   222: putfield 71	com/xiaomi/smack/z:a	Ljava/net/Socket;
    //   225: aload_0
    //   226: getfield 71	com/xiaomi/smack/z:a	Ljava/net/Socket;
    //   229: aconst_null
    //   230: invokevirtual 261	java/net/Socket:bind	(Ljava/net/SocketAddress;)V
    //   233: new 263	java/net/InetSocketAddress
    //   236: dup
    //   237: aload 13
    //   239: iload 7
    //   241: invokespecial 266	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   244: astore 23
    //   246: aload_0
    //   247: getfield 71	com/xiaomi/smack/z:a	Ljava/net/Socket;
    //   250: aload 23
    //   252: sipush 10000
    //   255: invokevirtual 270	java/net/Socket:connect	(Ljava/net/SocketAddress;I)V
    //   258: aload_0
    //   259: getfield 71	com/xiaomi/smack/z:a	Ljava/net/Socket;
    //   262: iconst_1
    //   263: invokevirtual 274	java/net/Socket:setTcpNoDelay	(Z)V
    //   266: aload_0
    //   267: aload 13
    //   269: putfield 276	com/xiaomi/smack/z:q	Ljava/lang/String;
    //   272: aload_0
    //   273: invokespecial 278	com/xiaomi/smack/z:w	()V
    //   276: aload_0
    //   277: invokestatic 252	java/lang/System:currentTimeMillis	()J
    //   280: lload 14
    //   282: lsub
    //   283: putfield 281	com/xiaomi/smack/z:e	J
    //   286: aload 10
    //   288: ifnull +15 -> 303
    //   291: aload 10
    //   293: aload 13
    //   295: aload_0
    //   296: getfield 281	com/xiaomi/smack/z:e	J
    //   299: lconst_0
    //   300: invokevirtual 284	com/xiaomi/network/c:a	(Ljava/lang/String;JJ)V
    //   303: aload_0
    //   304: invokestatic 289	android/os/SystemClock:elapsedRealtime	()J
    //   307: putfield 35	com/xiaomi/smack/z:u	J
    //   310: new 183	java/lang/StringBuilder
    //   313: dup
    //   314: ldc_w 291
    //   317: invokespecial 187	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   320: aload 13
    //   322: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: ldc_w 293
    //   328: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: aload_0
    //   332: getfield 281	com/xiaomi/smack/z:e	J
    //   335: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   338: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   341: invokestatic 171	com/xiaomi/a/a/a/b:a	(Ljava/lang/String;)V
    //   344: invokestatic 208	com/xiaomi/network/f:a	()Lcom/xiaomi/network/f;
    //   347: invokevirtual 298	com/xiaomi/network/f:e	()V
    //   350: iload_1
    //   351: ifne -326 -> 25
    //   354: new 158	com/xiaomi/smack/w
    //   357: dup
    //   358: aload 11
    //   360: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokespecial 299	com/xiaomi/smack/w:<init>	(Ljava/lang/String;)V
    //   366: athrow
    //   367: astore 4
    //   369: new 158	com/xiaomi/smack/w
    //   372: dup
    //   373: aload 4
    //   375: invokespecial 301	com/xiaomi/smack/w:<init>	(Ljava/lang/Throwable;)V
    //   378: athrow
    //   379: astore_3
    //   380: aload_0
    //   381: monitorexit
    //   382: aload_3
    //   383: athrow
    //   384: astore 20
    //   386: iload_2
    //   387: istore 21
    //   389: aload 10
    //   391: ifnull +19 -> 410
    //   394: aload 10
    //   396: aload 13
    //   398: invokestatic 252	java/lang/System:currentTimeMillis	()J
    //   401: lload 14
    //   403: lsub
    //   404: lconst_0
    //   405: aload 20
    //   407: invokevirtual 304	com/xiaomi/network/c:a	(Ljava/lang/String;JJLjava/lang/Exception;)V
    //   410: new 183	java/lang/StringBuilder
    //   413: dup
    //   414: ldc_w 306
    //   417: invokespecial 187	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   420: aload 13
    //   422: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   425: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   428: invokestatic 308	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   431: aload 11
    //   433: ldc_w 310
    //   436: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   439: aload 13
    //   441: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   444: ldc_w 312
    //   447: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: iload 7
    //   452: invokevirtual 315	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   455: ldc_w 317
    //   458: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: aload 20
    //   463: invokevirtual 320	java/io/IOException:getMessage	()Ljava/lang/String;
    //   466: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: ldc_w 322
    //   472: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   475: pop
    //   476: iload 21
    //   478: istore_2
    //   479: goto -323 -> 156
    //   482: aload 10
    //   484: ifnull +19 -> 503
    //   487: aload 10
    //   489: aload 13
    //   491: invokestatic 252	java/lang/System:currentTimeMillis	()J
    //   494: lload 14
    //   496: lsub
    //   497: lconst_0
    //   498: aload 17
    //   500: invokevirtual 304	com/xiaomi/network/c:a	(Ljava/lang/String;JJLjava/lang/Exception;)V
    //   503: new 183	java/lang/StringBuilder
    //   506: dup
    //   507: ldc_w 306
    //   510: invokespecial 187	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   513: aload 13
    //   515: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   518: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   521: invokestatic 308	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   524: aload 11
    //   526: ldc_w 310
    //   529: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   532: aload 13
    //   534: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   537: ldc_w 312
    //   540: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   543: iload 7
    //   545: invokevirtual 315	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   548: ldc_w 317
    //   551: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   554: aload 17
    //   556: invokevirtual 323	com/xiaomi/smack/w:getMessage	()Ljava/lang/String;
    //   559: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   562: ldc_w 322
    //   565: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   568: pop
    //   569: iload 18
    //   571: istore_2
    //   572: goto -416 -> 156
    //   575: aload 16
    //   577: invokestatic 95	com/xiaomi/a/a/a/b:a	(Ljava/lang/Throwable;)V
    //   580: goto -424 -> 156
    //   583: astore 16
    //   585: iload_1
    //   586: istore_2
    //   587: goto -12 -> 575
    //   590: astore 17
    //   592: iload_1
    //   593: istore 18
    //   595: goto -113 -> 482
    //   598: astore 20
    //   600: iload_1
    //   601: istore 21
    //   603: goto -214 -> 389
    //   606: iload_2
    //   607: istore_1
    //   608: goto -264 -> 344
    //   611: astore 17
    //   613: iload_2
    //   614: istore 18
    //   616: goto -134 -> 482
    //   619: astore 16
    //   621: goto -46 -> 575
    //
    // Exception table:
    //   from	to	target	type
    //   6	20	367	java/io/IOException
    //   20	25	367	java/io/IOException
    //   28	107	367	java/io/IOException
    //   112	119	367	java/io/IOException
    //   119	135	367	java/io/IOException
    //   135	156	367	java/io/IOException
    //   156	193	367	java/io/IOException
    //   344	350	367	java/io/IOException
    //   354	367	367	java/io/IOException
    //   394	410	367	java/io/IOException
    //   410	476	367	java/io/IOException
    //   487	503	367	java/io/IOException
    //   503	569	367	java/io/IOException
    //   575	580	367	java/io/IOException
    //   6	20	379	finally
    //   20	25	379	finally
    //   28	107	379	finally
    //   112	119	379	finally
    //   119	135	379	finally
    //   135	156	379	finally
    //   156	193	379	finally
    //   193	276	379	finally
    //   276	286	379	finally
    //   291	303	379	finally
    //   303	344	379	finally
    //   344	350	379	finally
    //   354	367	379	finally
    //   369	379	379	finally
    //   394	410	379	finally
    //   410	476	379	finally
    //   487	503	379	finally
    //   503	569	379	finally
    //   575	580	379	finally
    //   193	276	384	java/io/IOException
    //   276	286	583	java/lang/Throwable
    //   291	303	583	java/lang/Throwable
    //   303	344	583	java/lang/Throwable
    //   276	286	590	com/xiaomi/smack/w
    //   291	303	590	com/xiaomi/smack/w
    //   303	344	590	com/xiaomi/smack/w
    //   276	286	598	java/io/IOException
    //   291	303	598	java/io/IOException
    //   303	344	598	java/io/IOException
    //   193	276	611	com/xiaomi/smack/w
    //   193	276	619	java/lang/Throwable
  }

  public final void a(int paramInt, Exception paramException)
  {
    this.r.a(new B(this, 2, paramInt, paramException));
  }

  public final void a(R paramR)
  {
    monitorenter;
    try
    {
      new u().a(paramR, this.k, this);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void a(e parame)
  {
    if (this.o != null)
    {
      this.o.a(parame);
      return;
    }
    throw new w("the writer is null.");
  }

  public final void a(com.xiaomi.smack.packet.f paramf, int paramInt, Exception paramException)
  {
    b(paramInt, paramException);
    if ((paramException != null) && (this.u != 0L))
    {
      if (SystemClock.elapsedRealtime() - this.u >= 300000L)
        break label131;
      if (com.xiaomi.a.a.c.a.b(this.r))
      {
        this.v = (1 + this.v);
        if (this.v >= 2)
        {
          String str1 = this.q;
          b.a("max short conn time reached, sink down current host:" + str1);
          String str2 = n.d();
          c localc = com.xiaomi.network.f.a().a(str2);
          if (localc != null)
          {
            localc.a(str1, 0L, 0L, paramException);
            com.xiaomi.network.f.a().e();
          }
          this.v = 0;
        }
      }
    }
    return;
    label131: this.v = 0;
  }

  public final void a(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      com.xiaomi.smack.packet.f localf = new com.xiaomi.smack.packet.f(f.b.b);
      localf.l(paramString1);
      localf.n(paramString2);
      if (this.o != null)
        this.o.a(localf);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void a(e[] paramArrayOfe)
  {
    int i = paramArrayOfe.length;
    for (int j = 0; j < i; j++)
      a(paramArrayOfe[j]);
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final void c()
  {
    if (this.o != null)
    {
      this.o.d();
      long l = System.currentTimeMillis();
      this.r.a(new A(this, 13, l), 15000L);
      return;
    }
    throw new w("the packetwriter is null.");
  }

  public final String e()
  {
    return this.q;
  }

  public final String t()
  {
    if ((this.t == 0L) || (this.s == 0L));
    Object[] arrayOfObject;
    for (String str = ""; ; str = String.format("<pf><p>t:%1$d</p></pf>", arrayOfObject))
    {
      return String.format(this.b, new Object[] { str });
      arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(this.t - this.s);
    }
  }

  public final void u()
  {
    this.s = SystemClock.uptimeMillis();
  }

  public final void v()
  {
    this.t = SystemClock.uptimeMillis();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.z
 * JD-Core Version:    0.6.0
 */