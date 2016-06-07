package com.xiaomi.smack;

import com.xiaomi.kenai.jbosh.F;
import com.xiaomi.kenai.jbosh.aa;
import com.xiaomi.push.service.R;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.smack.packet.e;
import com.xiaomi.smack.packet.f.b;
import java.io.IOException;
import java.io.PipedReader;
import java.io.PipedWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class b extends l
{
  protected String a = null;
  protected String b = null;
  private F o;
  private final a p;
  private boolean q = true;
  private boolean r = false;
  private ExecutorService s;
  private PipedWriter t;
  private Thread u;
  private Object v = new Object();

  public b(XMPushService paramXMPushService, a parama)
  {
    super(paramXMPushService, parama);
    this.p = parama;
  }

  private void a(com.xiaomi.kenai.jbosh.h paramh)
  {
    if (!j())
      throw new IllegalStateException("Not connected to a server!");
    if (paramh == null)
      throw new NullPointerException("Body mustn't be null!");
    if (this.b != null)
      paramh = paramh.b().a(com.xiaomi.kenai.jbosh.f.a("xm", "sid"), this.b).a();
    this.o.a(paramh);
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 52	com/xiaomi/smack/b:j	()Z
    //   4: ifeq +9 -> 13
    //   7: ldc 105
    //   9: invokestatic 109	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   12: return
    //   13: invokestatic 115	java/lang/System:currentTimeMillis	()J
    //   16: lstore_1
    //   17: aload_0
    //   18: iconst_0
    //   19: putfield 31	com/xiaomi/smack/b:r	Z
    //   22: aload_0
    //   23: aconst_null
    //   24: putfield 35	com/xiaomi/smack/b:b	Ljava/lang/String;
    //   27: aload_0
    //   28: aconst_null
    //   29: putfield 33	com/xiaomi/smack/b:a	Ljava/lang/String;
    //   32: aload_0
    //   33: iconst_0
    //   34: iconst_0
    //   35: aconst_null
    //   36: invokevirtual 118	com/xiaomi/smack/b:a	(IILjava/lang/Exception;)V
    //   39: aload_0
    //   40: getfield 44	com/xiaomi/smack/b:p	Lcom/xiaomi/smack/a;
    //   43: invokevirtual 123	com/xiaomi/smack/a:c	()Ljava/net/URI;
    //   46: astore 4
    //   48: new 125	java/lang/StringBuilder
    //   51: dup
    //   52: ldc 127
    //   54: invokespecial 128	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   57: aload 4
    //   59: invokevirtual 134	java/net/URI:toString	()Ljava/lang/String;
    //   62: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokestatic 141	com/xiaomi/a/a/a/b:b	(Ljava/lang/String;)V
    //   71: aload_0
    //   72: aload 4
    //   74: aload_0
    //   75: getfield 44	com/xiaomi/smack/b:p	Lcom/xiaomi/smack/a;
    //   78: invokevirtual 144	com/xiaomi/smack/a:e	()Ljava/lang/String;
    //   81: invokestatic 149	com/xiaomi/kenai/jbosh/J:a	(Ljava/net/URI;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/J;
    //   84: invokevirtual 152	com/xiaomi/kenai/jbosh/J:a	()Lcom/xiaomi/kenai/jbosh/I;
    //   87: aload_0
    //   88: getfield 156	com/xiaomi/smack/b:n	Lcom/xiaomi/push/service/XMPushService;
    //   91: invokevirtual 162	com/xiaomi/push/service/XMPushService:getApplicationContext	()Landroid/content/Context;
    //   94: invokestatic 165	com/xiaomi/kenai/jbosh/F:a	(Lcom/xiaomi/kenai/jbosh/I;Landroid/content/Context;)Lcom/xiaomi/kenai/jbosh/F;
    //   97: putfield 88	com/xiaomi/smack/b:o	Lcom/xiaomi/kenai/jbosh/F;
    //   100: aload_0
    //   101: new 167	com/xiaomi/smack/e
    //   104: dup
    //   105: aload_0
    //   106: invokespecial 170	com/xiaomi/smack/e:<init>	(Lcom/xiaomi/smack/b;)V
    //   109: invokestatic 176	java/util/concurrent/Executors:newSingleThreadExecutor	(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    //   112: putfield 178	com/xiaomi/smack/b:s	Ljava/util/concurrent/ExecutorService;
    //   115: aload_0
    //   116: getfield 88	com/xiaomi/smack/b:o	Lcom/xiaomi/kenai/jbosh/F;
    //   119: new 180	com/xiaomi/smack/c
    //   122: dup
    //   123: aload_0
    //   124: iconst_0
    //   125: invokespecial 183	com/xiaomi/smack/c:<init>	(Lcom/xiaomi/smack/b;B)V
    //   128: invokevirtual 186	com/xiaomi/kenai/jbosh/F:a	(Lcom/xiaomi/kenai/jbosh/K;)V
    //   131: aload_0
    //   132: getfield 88	com/xiaomi/smack/b:o	Lcom/xiaomi/kenai/jbosh/F;
    //   135: new 188	com/xiaomi/smack/k
    //   138: dup
    //   139: aload_0
    //   140: invokespecial 189	com/xiaomi/smack/k:<init>	(Lcom/xiaomi/smack/b;)V
    //   143: invokevirtual 192	com/xiaomi/kenai/jbosh/F:a	(Lcom/xiaomi/kenai/jbosh/M;)V
    //   146: aload_0
    //   147: getfield 44	com/xiaomi/smack/b:p	Lcom/xiaomi/smack/a;
    //   150: invokevirtual 195	com/xiaomi/smack/a:i	()Z
    //   153: ifeq +40 -> 193
    //   156: aload_0
    //   157: invokevirtual 197	com/xiaomi/smack/b:b	()V
    //   160: aload_0
    //   161: getfield 29	com/xiaomi/smack/b:q	Z
    //   164: ifeq +29 -> 193
    //   167: aload_0
    //   168: getfield 201	com/xiaomi/smack/b:h	Lcom/xiaomi/smack/a/a;
    //   171: invokeinterface 206 1 0
    //   176: ifnull +17 -> 193
    //   179: aload_0
    //   180: aload_0
    //   181: getfield 201	com/xiaomi/smack/b:h	Lcom/xiaomi/smack/a/a;
    //   184: invokeinterface 206 1 0
    //   189: aconst_null
    //   190: invokevirtual 209	com/xiaomi/smack/b:a	(Lcom/xiaomi/smack/p;Lcom/xiaomi/smack/b/a;)V
    //   193: aload_0
    //   194: getfield 88	com/xiaomi/smack/b:o	Lcom/xiaomi/kenai/jbosh/F;
    //   197: invokestatic 211	com/xiaomi/kenai/jbosh/h:a	()Lcom/xiaomi/kenai/jbosh/i;
    //   200: ldc 71
    //   202: ldc 213
    //   204: invokestatic 78	com/xiaomi/kenai/jbosh/f:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/f;
    //   207: ldc 215
    //   209: invokevirtual 83	com/xiaomi/kenai/jbosh/i:a	(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;
    //   212: invokevirtual 86	com/xiaomi/kenai/jbosh/i:a	()Lcom/xiaomi/kenai/jbosh/h;
    //   215: invokevirtual 92	com/xiaomi/kenai/jbosh/F:a	(Lcom/xiaomi/kenai/jbosh/h;)V
    //   218: aload_0
    //   219: getfield 42	com/xiaomi/smack/b:v	Ljava/lang/Object;
    //   222: astore 5
    //   224: aload 5
    //   226: monitorenter
    //   227: aload_0
    //   228: invokevirtual 52	com/xiaomi/smack/b:j	()Z
    //   231: istore 7
    //   233: iload 7
    //   235: ifne +17 -> 252
    //   238: aload_0
    //   239: getfield 42	com/xiaomi/smack/b:v	Ljava/lang/Object;
    //   242: bipush 6
    //   244: invokestatic 220	com/xiaomi/smack/t:b	()I
    //   247: imul
    //   248: i2l
    //   249: invokevirtual 224	java/lang/Object:wait	(J)V
    //   252: aload 5
    //   254: monitorexit
    //   255: invokestatic 115	java/lang/System:currentTimeMillis	()J
    //   258: lload_1
    //   259: lsub
    //   260: lstore 8
    //   262: aload_0
    //   263: invokevirtual 52	com/xiaomi/smack/b:j	()Z
    //   266: ifne +130 -> 396
    //   269: aload_0
    //   270: iconst_1
    //   271: putfield 31	com/xiaomi/smack/b:r	Z
    //   274: new 125	java/lang/StringBuilder
    //   277: dup
    //   278: ldc 226
    //   280: invokespecial 128	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   283: aload_0
    //   284: getfield 44	com/xiaomi/smack/b:p	Lcom/xiaomi/smack/a;
    //   287: invokevirtual 228	com/xiaomi/smack/a:b	()Ljava/lang/String;
    //   290: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: ldc 230
    //   295: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: aload_0
    //   299: invokevirtual 233	com/xiaomi/smack/b:g	()I
    //   302: invokevirtual 236	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   305: ldc 238
    //   307: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   313: astore 10
    //   315: aload_0
    //   316: getfield 44	com/xiaomi/smack/b:p	Lcom/xiaomi/smack/a;
    //   319: invokevirtual 241	com/xiaomi/smack/a:a	()Lcom/xiaomi/network/c;
    //   322: aload_0
    //   323: getfield 44	com/xiaomi/smack/b:p	Lcom/xiaomi/smack/a;
    //   326: invokevirtual 228	com/xiaomi/smack/a:b	()Ljava/lang/String;
    //   329: lload 8
    //   331: lconst_0
    //   332: aconst_null
    //   333: invokevirtual 246	com/xiaomi/network/c:a	(Ljava/lang/String;JJLjava/lang/Exception;)V
    //   336: new 248	com/xiaomi/smack/w
    //   339: dup
    //   340: aload 10
    //   342: new 250	com/xiaomi/smack/packet/i
    //   345: dup
    //   346: getstatic 255	com/xiaomi/smack/packet/j:b	Lcom/xiaomi/smack/packet/j;
    //   349: aload 10
    //   351: invokespecial 258	com/xiaomi/smack/packet/i:<init>	(Lcom/xiaomi/smack/packet/j;Ljava/lang/String;)V
    //   354: invokespecial 261	com/xiaomi/smack/w:<init>	(Ljava/lang/String;Lcom/xiaomi/smack/packet/i;)V
    //   357: athrow
    //   358: astore_3
    //   359: new 248	com/xiaomi/smack/w
    //   362: dup
    //   363: new 125	java/lang/StringBuilder
    //   366: dup
    //   367: ldc_w 263
    //   370: invokespecial 128	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   373: aload_0
    //   374: invokevirtual 265	com/xiaomi/smack/b:d	()Ljava/lang/String;
    //   377: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   383: aload_3
    //   384: invokespecial 268	com/xiaomi/smack/w:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   387: athrow
    //   388: astore 6
    //   390: aload 5
    //   392: monitorexit
    //   393: aload 6
    //   395: athrow
    //   396: aload_0
    //   397: getfield 44	com/xiaomi/smack/b:p	Lcom/xiaomi/smack/a;
    //   400: invokevirtual 241	com/xiaomi/smack/a:a	()Lcom/xiaomi/network/c;
    //   403: aload_0
    //   404: getfield 44	com/xiaomi/smack/b:p	Lcom/xiaomi/smack/a;
    //   407: invokevirtual 228	com/xiaomi/smack/a:b	()Ljava/lang/String;
    //   410: lload 8
    //   412: lconst_0
    //   413: invokevirtual 271	com/xiaomi/network/c:a	(Ljava/lang/String;JJ)V
    //   416: return
    //   417: astore 11
    //   419: goto -167 -> 252
    //
    // Exception table:
    //   from	to	target	type
    //   32	193	358	java/lang/Exception
    //   193	218	358	java/lang/Exception
    //   227	233	388	finally
    //   238	252	388	finally
    //   252	255	388	finally
    //   390	393	388	finally
    //   238	252	417	java/lang/InterruptedException
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
    if (!this.r)
      try
      {
        a(com.xiaomi.kenai.jbosh.h.a().a(parame.c()).a());
        c(parame);
        return;
      }
      catch (aa localaa)
      {
        throw new w(localaa);
      }
    throw new w("try send packet while the connection is done.");
  }

  public final void a(com.xiaomi.smack.packet.f paramf, int paramInt, Exception paramException)
  {
    if (o() == 2)
      return;
    this.a = null;
    this.b = null;
    this.r = true;
    a(2, paramInt, paramException);
    this.q = false;
    this.k = "";
    try
    {
      this.o.b(com.xiaomi.kenai.jbosh.h.a().a("xmpp", "xm").a());
      Thread.sleep(150L);
      label70: if (this.o != null)
      {
        this.o.a();
        this.o = null;
      }
      if (this.t != null);
      try
      {
        this.t.close();
        label103: this.i = null;
        if (this.i != null);
        try
        {
          this.i.close();
          label122: this.i = null;
          if (this.j != null);
          try
          {
            this.j.close();
            label141: this.j = null;
            if (this.s != null)
              this.s.shutdown();
            Iterator localIterator = h().iterator();
            while (localIterator.hasNext())
            {
              o localo = (o)localIterator.next();
              try
              {
                localo.a();
              }
              catch (Exception localException2)
              {
                com.xiaomi.a.a.a.b.a("SMACK-BOSH: Error while shut down connection", localException2);
              }
            }
            this.u = null;
            this.g.clear();
            this.f.clear();
            this.q = true;
            return;
          }
          catch (Throwable localThrowable1)
          {
            break label141;
          }
        }
        catch (Throwable localThrowable2)
        {
          break label122;
        }
      }
      catch (Throwable localThrowable3)
      {
        break label103;
      }
    }
    catch (Exception localException1)
    {
      break label70;
    }
  }

  protected final void a(Exception paramException)
  {
    this.n.a(new j(this, 2, paramException));
  }

  public final void a(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      com.xiaomi.smack.packet.f localf = new com.xiaomi.smack.packet.f(f.b.b);
      localf.l(paramString1);
      localf.n(paramString2);
      a(localf);
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
    int i = 0;
    if (!this.r)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int j = paramArrayOfe.length;
      for (int k = 0; k < j; k++)
      {
        e locale = paramArrayOfe[k];
        if (locale == null)
          throw new NullPointerException("Packet is null.");
        localStringBuilder.append(locale.c());
      }
      try
      {
        a(com.xiaomi.kenai.jbosh.h.a().a(localStringBuilder.toString()).a());
        int m = paramArrayOfe.length;
        while (i < m)
        {
          c(paramArrayOfe[i]);
          i++;
        }
      }
      catch (aa localaa)
      {
        throw new w(localaa);
      }
    }
    else
    {
      throw new w("try send packet while connection is done.");
    }
  }

  protected final void b()
  {
    this.j = new f(this);
    try
    {
      this.t = new PipedWriter();
      this.i = new PipedReader(this.t);
      label38: super.b();
      this.o.a(new g(this));
      this.o.a(new h(this));
      this.u = new i(this);
      this.u.setDaemon(true);
      this.u.start();
      return;
    }
    catch (IOException localIOException)
    {
      break label38;
    }
  }

  protected final void b(e parame)
  {
    if (parame == null)
      return;
    this.s.submit(new d(this, parame));
  }

  public final void c()
  {
    if (j())
    {
      com.xiaomi.a.a.a.b.b("SMACK-BOSH: scheduling empty request for ping");
      this.o.b();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.b
 * JD-Core Version:    0.6.0
 */