package com.b;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class c
  implements Closeable
{
  private static Pattern a = Pattern.compile("[a-z0-9_]{1,64}");
  private static final OutputStream o = new e();
  private final File b;
  private final File c;
  private final File d;
  private final int e;
  private long f;
  private final int g;
  private long h = 0L;
  private Writer i;
  private final LinkedHashMap<String, g> j = new LinkedHashMap(0, 0.75F, true);
  private int k;
  private long l = 0L;
  private ThreadPoolExecutor m = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final Callable<Void> n = new d(this);

  private c(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    this.b = paramFile;
    this.e = paramInt1;
    this.c = new File(paramFile, "journal");
    this.d = new File(paramFile, "journal.tmp");
    this.g = paramInt2;
    this.f = paramLong;
  }

  private a a(String paramString, long paramLong)
  {
    monitorenter;
    while (true)
    {
      g localg1;
      a locala2;
      try
      {
        i();
        d(paramString);
        localg1 = (g)this.j.get(paramString);
        if (paramLong == -1L)
          continue;
        if (localg1 == null)
          continue;
        long l1 = g.e(localg1);
        if (l1 == paramLong)
          continue;
        locala2 = null;
        return locala2;
        if (localg1 == null)
        {
          g localg3 = new g(this, paramString, 0);
          this.j.put(paramString, localg3);
          localg2 = localg3;
          locala2 = new a(this, localg2, 0);
          g.a(localg2, locala2);
          this.i.write("DIRTY " + paramString + '\n');
          this.i.flush();
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      a locala1 = g.a(localg1);
      if (locala1 != null)
      {
        locala2 = null;
        continue;
      }
      g localg2 = localg1;
    }
  }

  public static c a(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    if (paramLong <= 0L)
      throw new IllegalArgumentException("maxSize <= 0");
    c localc1 = new c(paramFile, 201105, 2, paramLong);
    if (localc1.c.exists())
      try
      {
        localc1.e();
        localc1.f();
        localc1.i = new BufferedWriter(new FileWriter(localc1.c, true));
        return localc1;
      }
      catch (IOException localIOException)
      {
        System.out.println("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
        localc1.close();
        a.a(localc1.b);
      }
    paramFile.mkdirs();
    c localc2 = new c(paramFile, 201105, 2, paramLong);
    localc2.g();
    return localc2;
  }

  private void a(a parama, boolean paramBoolean)
  {
    monitorenter;
    g localg;
    try
    {
      localg = a.a(parama);
      if (g.a(localg) != parama)
        throw new IllegalStateException();
    }
    finally
    {
      monitorexit;
    }
    int i1 = 0;
    if (paramBoolean)
    {
      boolean bool = g.d(localg);
      i1 = 0;
      if (!bool)
        for (int i2 = 0; ; i2++)
        {
          int i3 = this.g;
          i1 = 0;
          if (i2 >= i3)
            break;
          if (a.b(parama)[i2] == 0)
          {
            parama.b();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
          }
          if (localg.b(i2).exists())
            continue;
          parama.b();
          monitorexit;
          return;
        }
    }
    while (true)
    {
      if (i1 < this.g)
      {
        File localFile1 = localg.b(i1);
        if (paramBoolean)
        {
          if (localFile1.exists())
          {
            File localFile2 = localg.a(i1);
            localFile1.renameTo(localFile2);
            long l2 = g.b(localg)[i1];
            long l3 = localFile2.length();
            g.b(localg)[i1] = l3;
            this.h = (l3 + (this.h - l2));
          }
        }
        else
          a(localFile1);
      }
      else
      {
        this.k = (1 + this.k);
        g.a(localg, null);
        if ((paramBoolean | g.d(localg)))
        {
          g.a(localg, true);
          this.i.write("CLEAN " + g.c(localg) + localg.a() + '\n');
          if (paramBoolean)
          {
            long l1 = this.l;
            this.l = (1L + l1);
            g.a(localg, l1);
          }
        }
        while (true)
        {
          if ((this.h <= this.f) && (!h()))
            break label418;
          this.m.submit(this.n);
          break;
          this.j.remove(g.c(localg));
          this.i.write("REMOVE " + g.c(localg) + '\n');
        }
        label418: break;
      }
      i1++;
    }
  }

  private static void a(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete()))
      throw new IOException();
  }

  private static void d(String paramString)
  {
    if (!a.matcher(paramString).matches())
      throw new IllegalArgumentException("keys must match regex [a-z0-9_]{1,64}: \"" + paramString + "\"");
  }

  // ERROR //
  private void e()
  {
    // Byte code:
    //   0: new 334	com/b/i
    //   3: dup
    //   4: new 336	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 103	com/b/c:c	Ljava/io/File;
    //   12: invokespecial 338	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   15: getstatic 343	com/b/b:a	Ljava/nio/charset/Charset;
    //   18: invokespecial 346	com/b/i:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokevirtual 347	com/b/i:a	()Ljava/lang/String;
    //   26: astore_3
    //   27: aload_1
    //   28: invokevirtual 347	com/b/i:a	()Ljava/lang/String;
    //   31: astore 4
    //   33: aload_1
    //   34: invokevirtual 347	com/b/i:a	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload_1
    //   40: invokevirtual 347	com/b/i:a	()Ljava/lang/String;
    //   43: astore 6
    //   45: aload_1
    //   46: invokevirtual 347	com/b/i:a	()Ljava/lang/String;
    //   49: astore 7
    //   51: ldc_w 349
    //   54: aload_3
    //   55: invokevirtual 355	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifeq +55 -> 113
    //   61: ldc_w 357
    //   64: aload 4
    //   66: invokevirtual 355	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   69: ifeq +44 -> 113
    //   72: aload_0
    //   73: getfield 94	com/b/c:e	I
    //   76: invokestatic 362	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   79: aload 5
    //   81: invokevirtual 355	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   84: ifeq +29 -> 113
    //   87: aload_0
    //   88: getfield 109	com/b/c:g	I
    //   91: invokestatic 362	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   94: aload 6
    //   96: invokevirtual 355	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   99: ifeq +14 -> 113
    //   102: ldc_w 364
    //   105: aload 7
    //   107: invokevirtual 355	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   110: ifne +110 -> 220
    //   113: new 182	java/io/IOException
    //   116: dup
    //   117: new 153	java/lang/StringBuilder
    //   120: dup
    //   121: ldc_w 366
    //   124: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: aload_3
    //   128: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc_w 368
    //   134: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload 4
    //   139: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: ldc_w 368
    //   145: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: aload 6
    //   150: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: ldc_w 368
    //   156: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload 7
    //   161: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: ldc_w 370
    //   167: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 168	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokespecial 371	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   176: athrow
    //   177: astore_2
    //   178: aload_1
    //   179: invokestatic 374	com/b/a:a	(Ljava/io/Closeable;)V
    //   182: aload_2
    //   183: athrow
    //   184: aload 10
    //   186: iconst_1
    //   187: aaload
    //   188: astore 11
    //   190: aload 10
    //   192: iconst_0
    //   193: aaload
    //   194: ldc_w 376
    //   197: invokevirtual 355	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   200: ifeq +76 -> 276
    //   203: aload 10
    //   205: arraylength
    //   206: iconst_2
    //   207: if_icmpne +69 -> 276
    //   210: aload_0
    //   211: getfield 63	com/b/c:j	Ljava/util/LinkedHashMap;
    //   214: aload 11
    //   216: invokevirtual 303	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   219: pop
    //   220: aload_1
    //   221: invokevirtual 347	com/b/i:a	()Ljava/lang/String;
    //   224: astore 9
    //   226: aload 9
    //   228: ldc_w 378
    //   231: invokevirtual 382	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   234: astore 10
    //   236: aload 10
    //   238: arraylength
    //   239: iconst_2
    //   240: if_icmpge -56 -> 184
    //   243: new 182	java/io/IOException
    //   246: dup
    //   247: new 153	java/lang/StringBuilder
    //   250: dup
    //   251: ldc_w 384
    //   254: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   257: aload 9
    //   259: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: invokevirtual 168	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: invokespecial 371	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   268: athrow
    //   269: astore 8
    //   271: aload_1
    //   272: invokestatic 374	com/b/a:a	(Ljava/io/Closeable;)V
    //   275: return
    //   276: aload_0
    //   277: getfield 63	com/b/c:j	Ljava/util/LinkedHashMap;
    //   280: aload 11
    //   282: invokevirtual 127	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   285: checkcast 129	com/b/g
    //   288: astore 12
    //   290: aload 12
    //   292: ifnonnull +254 -> 546
    //   295: new 129	com/b/g
    //   298: dup
    //   299: aload_0
    //   300: aload 11
    //   302: iconst_0
    //   303: invokespecial 137	com/b/g:<init>	(Lcom/b/c;Ljava/lang/String;B)V
    //   306: astore 13
    //   308: aload_0
    //   309: getfield 63	com/b/c:j	Ljava/util/LinkedHashMap;
    //   312: aload 11
    //   314: aload 13
    //   316: invokevirtual 141	java/util/LinkedHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   319: pop
    //   320: aload 13
    //   322: astore 15
    //   324: aload 10
    //   326: iconst_0
    //   327: aaload
    //   328: ldc_w 386
    //   331: invokevirtual 355	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   334: ifeq +126 -> 460
    //   337: aload 10
    //   339: arraylength
    //   340: iconst_2
    //   341: aload_0
    //   342: getfield 109	com/b/c:g	I
    //   345: iadd
    //   346: if_icmpne +114 -> 460
    //   349: aload 15
    //   351: iconst_1
    //   352: invokestatic 284	com/b/g:a	(Lcom/b/g;Z)Z
    //   355: pop
    //   356: aload 15
    //   358: aconst_null
    //   359: invokestatic 149	com/b/g:a	(Lcom/b/g;Lcom/b/a;)Lcom/b/a;
    //   362: pop
    //   363: aload 10
    //   365: arraylength
    //   366: istore 19
    //   368: aload 10
    //   370: arraylength
    //   371: istore 20
    //   373: iconst_2
    //   374: iload 19
    //   376: if_icmple +11 -> 387
    //   379: new 184	java/lang/IllegalArgumentException
    //   382: dup
    //   383: invokespecial 387	java/lang/IllegalArgumentException:<init>	()V
    //   386: athrow
    //   387: iconst_2
    //   388: iload 20
    //   390: if_icmple +11 -> 401
    //   393: new 389	java/lang/ArrayIndexOutOfBoundsException
    //   396: dup
    //   397: invokespecial 390	java/lang/ArrayIndexOutOfBoundsException:<init>	()V
    //   400: athrow
    //   401: iload 19
    //   403: iconst_2
    //   404: isub
    //   405: istore 21
    //   407: iload 21
    //   409: iload 20
    //   411: iconst_2
    //   412: isub
    //   413: invokestatic 396	java/lang/Math:min	(II)I
    //   416: istore 22
    //   418: aload 10
    //   420: invokevirtual 400	java/lang/Object:getClass	()Ljava/lang/Class;
    //   423: invokevirtual 405	java/lang/Class:getComponentType	()Ljava/lang/Class;
    //   426: iload 21
    //   428: invokestatic 411	java/lang/reflect/Array:newInstance	(Ljava/lang/Class;I)Ljava/lang/Object;
    //   431: checkcast 413	[Ljava/lang/Object;
    //   434: astore 23
    //   436: aload 10
    //   438: iconst_2
    //   439: aload 23
    //   441: iconst_0
    //   442: iload 22
    //   444: invokestatic 417	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   447: aload 15
    //   449: aload 23
    //   451: checkcast 419	[Ljava/lang/String;
    //   454: invokestatic 422	com/b/g:a	(Lcom/b/g;[Ljava/lang/String;)V
    //   457: goto -237 -> 220
    //   460: aload 10
    //   462: iconst_0
    //   463: aaload
    //   464: ldc_w 424
    //   467: invokevirtual 355	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   470: ifeq +30 -> 500
    //   473: aload 10
    //   475: arraylength
    //   476: iconst_2
    //   477: if_icmpne +23 -> 500
    //   480: aload 15
    //   482: new 143	com/b/a
    //   485: dup
    //   486: aload_0
    //   487: aload 15
    //   489: iconst_0
    //   490: invokespecial 146	com/b/a:<init>	(Lcom/b/c;Lcom/b/g;B)V
    //   493: invokestatic 149	com/b/g:a	(Lcom/b/g;Lcom/b/a;)Lcom/b/a;
    //   496: pop
    //   497: goto -277 -> 220
    //   500: aload 10
    //   502: iconst_0
    //   503: aaload
    //   504: ldc_w 426
    //   507: invokevirtual 355	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   510: ifeq +10 -> 520
    //   513: aload 10
    //   515: arraylength
    //   516: iconst_2
    //   517: if_icmpeq -297 -> 220
    //   520: new 182	java/io/IOException
    //   523: dup
    //   524: new 153	java/lang/StringBuilder
    //   527: dup
    //   528: ldc_w 384
    //   531: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   534: aload 9
    //   536: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   539: invokevirtual 168	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   542: invokespecial 371	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   545: athrow
    //   546: aload 12
    //   548: astore 15
    //   550: goto -226 -> 324
    //
    // Exception table:
    //   from	to	target	type
    //   22	113	177	finally
    //   113	177	177	finally
    //   184	220	177	finally
    //   220	269	177	finally
    //   276	290	177	finally
    //   295	320	177	finally
    //   324	373	177	finally
    //   379	387	177	finally
    //   393	401	177	finally
    //   407	457	177	finally
    //   460	497	177	finally
    //   500	520	177	finally
    //   520	546	177	finally
    //   184	220	269	java/io/EOFException
    //   220	269	269	java/io/EOFException
    //   276	290	269	java/io/EOFException
    //   295	320	269	java/io/EOFException
    //   324	373	269	java/io/EOFException
    //   379	387	269	java/io/EOFException
    //   393	401	269	java/io/EOFException
    //   407	457	269	java/io/EOFException
    //   460	497	269	java/io/EOFException
    //   500	520	269	java/io/EOFException
    //   520	546	269	java/io/EOFException
  }

  private void f()
  {
    a(this.d);
    Iterator localIterator = this.j.values().iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      if (g.a(localg) == null)
      {
        for (int i2 = 0; i2 < this.g; i2++)
          this.h += g.b(localg)[i2];
        continue;
      }
      g.a(localg, null);
      for (int i1 = 0; i1 < this.g; i1++)
      {
        a(localg.a(i1));
        a(localg.b(i1));
      }
      localIterator.remove();
    }
  }

  private void g()
  {
    monitorenter;
    BufferedWriter localBufferedWriter;
    while (true)
    {
      g localg;
      try
      {
        if (this.i == null)
          continue;
        this.i.close();
        localBufferedWriter = new BufferedWriter(new FileWriter(this.d));
        localBufferedWriter.write("libcore.io.DiskLruCache");
        localBufferedWriter.write("\n");
        localBufferedWriter.write("1");
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(this.e));
        localBufferedWriter.write("\n");
        localBufferedWriter.write(Integer.toString(this.g));
        localBufferedWriter.write("\n");
        localBufferedWriter.write("\n");
        Iterator localIterator = this.j.values().iterator();
        if (!localIterator.hasNext())
          break;
        localg = (g)localIterator.next();
        if (g.a(localg) != null)
        {
          localBufferedWriter.write("DIRTY " + g.c(localg) + '\n');
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      localBufferedWriter.write("CLEAN " + g.c(localg) + localg.a() + '\n');
    }
    localBufferedWriter.close();
    this.d.renameTo(this.c);
    this.i = new BufferedWriter(new FileWriter(this.c, true));
    monitorexit;
  }

  private boolean h()
  {
    return (this.k >= 2000) && (this.k >= this.j.size());
  }

  private void i()
  {
    if (this.i == null)
      throw new IllegalStateException("cache is closed");
  }

  private void j()
  {
    while (this.h > this.f)
      c((String)((Map.Entry)this.j.entrySet().iterator().next()).getKey());
  }

  // ERROR //
  public final h a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: invokespecial 120	com/b/c:i	()V
    //   8: aload_1
    //   9: invokestatic 123	com/b/c:d	(Ljava/lang/String;)V
    //   12: aload_0
    //   13: getfield 63	com/b/c:j	Ljava/util/LinkedHashMap;
    //   16: aload_1
    //   17: invokevirtual 127	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   20: checkcast 129	com/b/g
    //   23: astore 4
    //   25: aconst_null
    //   26: astore 5
    //   28: aload 4
    //   30: ifnonnull +8 -> 38
    //   33: aload_0
    //   34: monitorexit
    //   35: aload 5
    //   37: areturn
    //   38: aload 4
    //   40: invokestatic 253	com/b/g:d	(Lcom/b/g;)Z
    //   43: istore 6
    //   45: aconst_null
    //   46: astore 5
    //   48: iload 6
    //   50: ifeq -17 -> 33
    //   53: aload_0
    //   54: getfield 109	com/b/c:g	I
    //   57: anewarray 478	java/io/InputStream
    //   60: astore 7
    //   62: iload_2
    //   63: aload_0
    //   64: getfield 109	com/b/c:g	I
    //   67: if_icmpge +26 -> 93
    //   70: aload 7
    //   72: iload_2
    //   73: new 336	java/io/FileInputStream
    //   76: dup
    //   77: aload 4
    //   79: iload_2
    //   80: invokevirtual 269	com/b/g:a	(I)Ljava/io/File;
    //   83: invokespecial 338	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   86: aastore
    //   87: iinc 2 1
    //   90: goto -28 -> 62
    //   93: aload_0
    //   94: iconst_1
    //   95: aload_0
    //   96: getfield 114	com/b/c:k	I
    //   99: iadd
    //   100: putfield 114	com/b/c:k	I
    //   103: aload_0
    //   104: getfield 151	com/b/c:i	Ljava/io/Writer;
    //   107: new 153	java/lang/StringBuilder
    //   110: dup
    //   111: ldc_w 480
    //   114: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   117: aload_1
    //   118: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: bipush 10
    //   123: invokevirtual 164	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   126: invokevirtual 168	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokevirtual 483	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   132: pop
    //   133: aload_0
    //   134: invokespecial 296	com/b/c:h	()Z
    //   137: ifeq +15 -> 152
    //   140: aload_0
    //   141: getfield 83	com/b/c:m	Ljava/util/concurrent/ThreadPoolExecutor;
    //   144: aload_0
    //   145: getfield 90	com/b/c:n	Ljava/util/concurrent/Callable;
    //   148: invokevirtual 300	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   151: pop
    //   152: new 485	com/b/h
    //   155: dup
    //   156: aload_0
    //   157: aload_1
    //   158: aload 4
    //   160: invokestatic 134	com/b/g:e	(Lcom/b/g;)J
    //   163: aload 7
    //   165: iconst_0
    //   166: invokespecial 488	com/b/h:<init>	(Lcom/b/c;Ljava/lang/String;J[Ljava/io/InputStream;B)V
    //   169: astore 5
    //   171: goto -138 -> 33
    //   174: astore_3
    //   175: aload_0
    //   176: monitorexit
    //   177: aload_3
    //   178: athrow
    //   179: astore 8
    //   181: aconst_null
    //   182: astore 5
    //   184: goto -151 -> 33
    //
    // Exception table:
    //   from	to	target	type
    //   4	25	174	finally
    //   38	45	174	finally
    //   53	62	174	finally
    //   62	87	174	finally
    //   93	152	174	finally
    //   152	171	174	finally
    //   62	87	179	java/io/FileNotFoundException
  }

  public final File a()
  {
    return this.b;
  }

  public final long b()
  {
    return this.f;
  }

  public final a b(String paramString)
  {
    return a(paramString, -1L);
  }

  public final boolean c()
  {
    return this.i == null;
  }

  public final boolean c(String paramString)
  {
    monitorenter;
    while (true)
    {
      try
      {
        i();
        d(paramString);
        g localg = (g)this.j.get(paramString);
        if (localg == null)
          continue;
        a locala = g.a(localg);
        int i1 = 0;
        if (locala == null)
          continue;
        i2 = 0;
        return i2;
        this.h -= g.b(localg)[i1];
        g.b(localg)[i1] = 0L;
        i1++;
        if (i1 < this.g)
        {
          File localFile = localg.a(i1);
          if (localFile.delete())
            continue;
          throw new IOException("failed to delete " + localFile);
        }
      }
      finally
      {
        monitorexit;
      }
      this.k = (1 + this.k);
      this.i.append("REMOVE " + paramString + '\n');
      this.j.remove(paramString);
      if (h())
        this.m.submit(this.n);
      int i2 = 1;
    }
  }

  public final void close()
  {
    monitorenter;
    while (true)
    {
      try
      {
        Writer localWriter = this.i;
        if (localWriter == null)
          return;
        Iterator localIterator = new ArrayList(this.j.values()).iterator();
        if (localIterator.hasNext())
        {
          g localg = (g)localIterator.next();
          if (g.a(localg) == null)
            continue;
          g.a(localg).b();
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      j();
      this.i.close();
      this.i = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.b.c
 * JD-Core Version:    0.6.0
 */