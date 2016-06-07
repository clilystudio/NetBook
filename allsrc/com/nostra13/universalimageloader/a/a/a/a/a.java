package com.nostra13.universalimageloader.a.a.a.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
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

final class a
  implements Closeable
{
  private static Pattern a = Pattern.compile("[a-z0-9_-]{1,64}");
  private static final OutputStream r = new c();
  private final File b;
  private final File c;
  private final File d;
  private final File e;
  private final int f;
  private long g;
  private int h;
  private final int i;
  private long j = 0L;
  private int k = 0;
  private Writer l;
  private final LinkedHashMap<String, f> m = new LinkedHashMap(0, 0.75F, true);
  private int n;
  private long o = 0L;
  private ThreadPoolExecutor p = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final Callable<Void> q = new b(this);

  private a(File paramFile, int paramInt1, int paramInt2, long paramLong, int paramInt3)
  {
    this.b = paramFile;
    this.f = paramInt1;
    this.c = new File(paramFile, "journal");
    this.d = new File(paramFile, "journal.tmp");
    this.e = new File(paramFile, "journal.bkp");
    this.i = paramInt2;
    this.g = paramLong;
    this.h = paramInt3;
  }

  public static a a(File paramFile, int paramInt1, int paramInt2, long paramLong, int paramInt3)
  {
    if (paramLong <= 0L)
      throw new IllegalArgumentException("maxSize <= 0");
    if (paramInt3 <= 0)
      throw new IllegalArgumentException("maxFileCount <= 0");
    File localFile1 = new File(paramFile, "journal.bkp");
    File localFile2;
    if (localFile1.exists())
    {
      localFile2 = new File(paramFile, "journal");
      if (!localFile2.exists())
        break label151;
      localFile1.delete();
    }
    while (true)
    {
      a locala1 = new a(paramFile, 1, 1, paramLong, paramInt3);
      if (locala1.c.exists())
        try
        {
          locala1.b();
          locala1.c();
          locala1.l = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(locala1.c, true), k.a));
          return locala1;
          label151: a(localFile1, localFile2, false);
        }
        catch (IOException localIOException)
        {
          System.out.println("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
          locala1.close();
          k.a(locala1.b);
        }
    }
    paramFile.mkdirs();
    a locala2 = new a(paramFile, 1, 1, paramLong, paramInt3);
    locala2.d();
    return locala2;
  }

  private d a(String paramString, long paramLong)
  {
    monitorenter;
    while (true)
    {
      f localf1;
      d locald2;
      try
      {
        f();
        d(paramString);
        localf1 = (f)this.m.get(paramString);
        if (-1L == -1L)
          continue;
        if (localf1 == null)
          continue;
        long l1 = f.e(localf1);
        if (l1 == -1L)
          continue;
        locald2 = null;
        return locald2;
        if (localf1 == null)
        {
          f localf3 = new f(this, paramString, 0);
          this.m.put(paramString, localf3);
          localf2 = localf3;
          locald2 = new d(this, localf2, 0);
          f.a(localf2, locald2);
          this.l.write("DIRTY " + paramString + '\n');
          this.l.flush();
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      d locald1 = f.a(localf1);
      if (locald1 != null)
      {
        locald2 = null;
        continue;
      }
      f localf2 = localf1;
    }
  }

  private void a(d paramd, boolean paramBoolean)
  {
    monitorenter;
    f localf;
    try
    {
      localf = d.a(paramd);
      if (f.a(localf) != paramd)
        throw new IllegalStateException();
    }
    finally
    {
      monitorexit;
    }
    int i1 = 0;
    if (paramBoolean)
    {
      boolean bool = f.d(localf);
      i1 = 0;
      if (!bool)
        for (int i2 = 0; ; i2++)
        {
          int i3 = this.i;
          i1 = 0;
          if (i2 >= i3)
            break;
          if (d.b(paramd)[i2] == 0)
          {
            paramd.b();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
          }
          if (localf.b(i2).exists())
            continue;
          paramd.b();
          monitorexit;
          return;
        }
    }
    while (true)
    {
      if (i1 < this.i)
      {
        File localFile1 = localf.b(i1);
        if (paramBoolean)
        {
          if (localFile1.exists())
          {
            File localFile2 = localf.a(i1);
            localFile1.renameTo(localFile2);
            long l2 = f.b(localf)[i1];
            long l3 = localFile2.length();
            f.b(localf)[i1] = l3;
            this.j = (l3 + (this.j - l2));
            this.k = (1 + this.k);
          }
        }
        else
          a(localFile1);
      }
      else
      {
        this.n = (1 + this.n);
        f.a(localf, null);
        if ((paramBoolean | f.d(localf)))
        {
          f.a(localf, true);
          this.l.write("CLEAN " + f.c(localf) + localf.a() + '\n');
          if (paramBoolean)
          {
            long l1 = this.o;
            this.o = (1L + l1);
            f.a(localf, l1);
          }
        }
        while (true)
        {
          this.l.flush();
          if ((this.j <= this.g) && (this.k <= this.h) && (!e()))
            break;
          this.p.submit(this.q);
          break;
          this.m.remove(f.c(localf));
          this.l.write("REMOVE " + f.c(localf) + '\n');
        }
      }
      i1++;
    }
  }

  private static void a(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete()))
      throw new IOException();
  }

  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramBoolean)
      a(paramFile2);
    if (!paramFile1.renameTo(paramFile2))
      throw new IOException();
  }

  // ERROR //
  private void b()
  {
    // Byte code:
    //   0: new 338	com/nostra13/universalimageloader/a/a/a/a/i
    //   3: dup
    //   4: new 340	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 108	com/nostra13/universalimageloader/a/a/a/a/a:c	Ljava/io/File;
    //   12: invokespecial 342	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   15: getstatic 164	com/nostra13/universalimageloader/a/a/a/a/k:a	Ljava/nio/charset/Charset;
    //   18: invokespecial 345	com/nostra13/universalimageloader/a/a/a/a/i:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokevirtual 346	com/nostra13/universalimageloader/a/a/a/a/i:a	()Ljava/lang/String;
    //   26: astore_3
    //   27: aload_1
    //   28: invokevirtual 346	com/nostra13/universalimageloader/a/a/a/a/i:a	()Ljava/lang/String;
    //   31: astore 4
    //   33: aload_1
    //   34: invokevirtual 346	com/nostra13/universalimageloader/a/a/a/a/i:a	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload_1
    //   40: invokevirtual 346	com/nostra13/universalimageloader/a/a/a/a/i:a	()Ljava/lang/String;
    //   43: astore 6
    //   45: aload_1
    //   46: invokevirtual 346	com/nostra13/universalimageloader/a/a/a/a/i:a	()Ljava/lang/String;
    //   49: astore 7
    //   51: ldc_w 348
    //   54: aload_3
    //   55: invokevirtual 354	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifeq +55 -> 113
    //   61: ldc_w 356
    //   64: aload 4
    //   66: invokevirtual 354	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   69: ifeq +44 -> 113
    //   72: aload_0
    //   73: getfield 99	com/nostra13/universalimageloader/a/a/a/a/a:f	I
    //   76: invokestatic 361	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   79: aload 5
    //   81: invokevirtual 354	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   84: ifeq +29 -> 113
    //   87: aload_0
    //   88: getfield 118	com/nostra13/universalimageloader/a/a/a/a/a:i	I
    //   91: invokestatic 361	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   94: aload 6
    //   96: invokevirtual 354	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   99: ifeq +14 -> 113
    //   102: ldc_w 363
    //   105: aload 7
    //   107: invokevirtual 354	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   110: ifne +74 -> 184
    //   113: new 128	java/io/IOException
    //   116: dup
    //   117: new 183	java/lang/StringBuilder
    //   120: dup
    //   121: ldc_w 365
    //   124: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: aload_3
    //   128: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc_w 367
    //   134: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload 4
    //   139: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: ldc_w 367
    //   145: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: aload 6
    //   150: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: ldc_w 367
    //   156: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload 7
    //   161: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: ldc_w 369
    //   167: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokespecial 370	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   176: athrow
    //   177: astore_2
    //   178: aload_1
    //   179: invokestatic 373	com/nostra13/universalimageloader/a/a/a/a/k:a	(Ljava/io/Closeable;)V
    //   182: aload_2
    //   183: athrow
    //   184: iconst_0
    //   185: istore 8
    //   187: aload_1
    //   188: invokevirtual 346	com/nostra13/universalimageloader/a/a/a/a/i:a	()Ljava/lang/String;
    //   191: astore 10
    //   193: aload 10
    //   195: bipush 32
    //   197: invokevirtual 377	java/lang/String:indexOf	(I)I
    //   200: istore 11
    //   202: iload 11
    //   204: iconst_m1
    //   205: if_icmpne +50 -> 255
    //   208: new 128	java/io/IOException
    //   211: dup
    //   212: new 183	java/lang/StringBuilder
    //   215: dup
    //   216: ldc_w 379
    //   219: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   222: aload 10
    //   224: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   230: invokespecial 370	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   233: athrow
    //   234: astore 9
    //   236: aload_0
    //   237: iload 8
    //   239: aload_0
    //   240: getfield 68	com/nostra13/universalimageloader/a/a/a/a/a:m	Ljava/util/LinkedHashMap;
    //   243: invokevirtual 383	java/util/LinkedHashMap:size	()I
    //   246: isub
    //   247: putfield 125	com/nostra13/universalimageloader/a/a/a/a/a:n	I
    //   250: aload_1
    //   251: invokestatic 373	com/nostra13/universalimageloader/a/a/a/a/k:a	(Ljava/io/Closeable;)V
    //   254: return
    //   255: iload 11
    //   257: iconst_1
    //   258: iadd
    //   259: istore 12
    //   261: aload 10
    //   263: bipush 32
    //   265: iload 12
    //   267: invokevirtual 386	java/lang/String:indexOf	(II)I
    //   270: istore 13
    //   272: iload 13
    //   274: iconst_m1
    //   275: if_icmpne +43 -> 318
    //   278: aload 10
    //   280: iload 12
    //   282: invokevirtual 389	java/lang/String:substring	(I)Ljava/lang/String;
    //   285: astore 14
    //   287: iload 11
    //   289: bipush 6
    //   291: if_icmpne +238 -> 529
    //   294: aload 10
    //   296: ldc_w 391
    //   299: invokevirtual 395	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   302: ifeq +227 -> 529
    //   305: aload_0
    //   306: getfield 68	com/nostra13/universalimageloader/a/a/a/a/a:m	Ljava/util/LinkedHashMap;
    //   309: aload 14
    //   311: invokevirtual 331	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   314: pop
    //   315: goto +221 -> 536
    //   318: aload 10
    //   320: iload 12
    //   322: iload 13
    //   324: invokevirtual 398	java/lang/String:substring	(II)Ljava/lang/String;
    //   327: astore 15
    //   329: aload_0
    //   330: getfield 68	com/nostra13/universalimageloader/a/a/a/a/a:m	Ljava/util/LinkedHashMap;
    //   333: aload 15
    //   335: invokevirtual 229	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   338: checkcast 231	com/nostra13/universalimageloader/a/a/a/a/f
    //   341: astore 16
    //   343: aload 16
    //   345: ifnonnull +28 -> 373
    //   348: new 231	com/nostra13/universalimageloader/a/a/a/a/f
    //   351: dup
    //   352: aload_0
    //   353: aload 15
    //   355: iconst_0
    //   356: invokespecial 239	com/nostra13/universalimageloader/a/a/a/a/f:<init>	(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;B)V
    //   359: astore 16
    //   361: aload_0
    //   362: getfield 68	com/nostra13/universalimageloader/a/a/a/a/a:m	Ljava/util/LinkedHashMap;
    //   365: aload 15
    //   367: aload 16
    //   369: invokevirtual 243	java/util/LinkedHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   372: pop
    //   373: iload 13
    //   375: iconst_m1
    //   376: if_icmpeq +61 -> 437
    //   379: iload 11
    //   381: iconst_5
    //   382: if_icmpne +55 -> 437
    //   385: aload 10
    //   387: ldc_w 400
    //   390: invokevirtual 395	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   393: ifeq +44 -> 437
    //   396: aload 10
    //   398: iload 13
    //   400: iconst_1
    //   401: iadd
    //   402: invokevirtual 389	java/lang/String:substring	(I)Ljava/lang/String;
    //   405: ldc_w 402
    //   408: invokevirtual 406	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   411: astore 19
    //   413: aload 16
    //   415: iconst_1
    //   416: invokestatic 312	com/nostra13/universalimageloader/a/a/a/a/f:a	(Lcom/nostra13/universalimageloader/a/a/a/a/f;Z)Z
    //   419: pop
    //   420: aload 16
    //   422: aconst_null
    //   423: invokestatic 251	com/nostra13/universalimageloader/a/a/a/a/f:a	(Lcom/nostra13/universalimageloader/a/a/a/a/f;Lcom/nostra13/universalimageloader/a/a/a/a/d;)Lcom/nostra13/universalimageloader/a/a/a/a/d;
    //   426: pop
    //   427: aload 16
    //   429: aload 19
    //   431: invokestatic 409	com/nostra13/universalimageloader/a/a/a/a/f:a	(Lcom/nostra13/universalimageloader/a/a/a/a/f;[Ljava/lang/String;)V
    //   434: goto +102 -> 536
    //   437: iload 13
    //   439: iconst_m1
    //   440: if_icmpne +40 -> 480
    //   443: iload 11
    //   445: iconst_5
    //   446: if_icmpne +34 -> 480
    //   449: aload 10
    //   451: ldc_w 411
    //   454: invokevirtual 395	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   457: ifeq +23 -> 480
    //   460: aload 16
    //   462: new 245	com/nostra13/universalimageloader/a/a/a/a/d
    //   465: dup
    //   466: aload_0
    //   467: aload 16
    //   469: iconst_0
    //   470: invokespecial 248	com/nostra13/universalimageloader/a/a/a/a/d:<init>	(Lcom/nostra13/universalimageloader/a/a/a/a/a;Lcom/nostra13/universalimageloader/a/a/a/a/f;B)V
    //   473: invokestatic 251	com/nostra13/universalimageloader/a/a/a/a/f:a	(Lcom/nostra13/universalimageloader/a/a/a/a/f;Lcom/nostra13/universalimageloader/a/a/a/a/d;)Lcom/nostra13/universalimageloader/a/a/a/a/d;
    //   476: pop
    //   477: goto +59 -> 536
    //   480: iload 13
    //   482: iconst_m1
    //   483: if_icmpne +20 -> 503
    //   486: iload 11
    //   488: iconst_4
    //   489: if_icmpne +14 -> 503
    //   492: aload 10
    //   494: ldc_w 413
    //   497: invokevirtual 395	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   500: ifne +36 -> 536
    //   503: new 128	java/io/IOException
    //   506: dup
    //   507: new 183	java/lang/StringBuilder
    //   510: dup
    //   511: ldc_w 379
    //   514: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   517: aload 10
    //   519: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: invokevirtual 204	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   525: invokespecial 370	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   528: athrow
    //   529: aload 14
    //   531: astore 15
    //   533: goto -204 -> 329
    //   536: iinc 8 1
    //   539: goto -352 -> 187
    //
    // Exception table:
    //   from	to	target	type
    //   22	113	177	finally
    //   113	177	177	finally
    //   187	202	177	finally
    //   208	234	177	finally
    //   236	250	177	finally
    //   261	272	177	finally
    //   278	287	177	finally
    //   294	315	177	finally
    //   318	329	177	finally
    //   329	343	177	finally
    //   348	373	177	finally
    //   385	434	177	finally
    //   449	477	177	finally
    //   492	503	177	finally
    //   503	529	177	finally
    //   187	202	234	java/io/EOFException
    //   208	234	234	java/io/EOFException
    //   261	272	234	java/io/EOFException
    //   278	287	234	java/io/EOFException
    //   294	315	234	java/io/EOFException
    //   318	329	234	java/io/EOFException
    //   329	343	234	java/io/EOFException
    //   348	373	234	java/io/EOFException
    //   385	434	234	java/io/EOFException
    //   449	477	234	java/io/EOFException
    //   492	503	234	java/io/EOFException
    //   503	529	234	java/io/EOFException
  }

  private void c()
  {
    a(this.d);
    Iterator localIterator = this.m.values().iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      if (f.a(localf) == null)
      {
        for (int i2 = 0; i2 < this.i; i2++)
        {
          this.j += f.b(localf)[i2];
          this.k = (1 + this.k);
        }
        continue;
      }
      f.a(localf, null);
      for (int i1 = 0; i1 < this.i; i1++)
      {
        a(localf.a(i1));
        a(localf.b(i1));
      }
      localIterator.remove();
    }
  }

  private void d()
  {
    monitorenter;
    BufferedWriter localBufferedWriter;
    while (true)
    {
      f localf;
      try
      {
        if (this.l == null)
          continue;
        this.l.close();
        localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), k.a));
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.f));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.i));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = this.m.values().iterator();
          if (!localIterator.hasNext())
            break;
          localf = (f)localIterator.next();
          if (f.a(localf) != null)
          {
            localBufferedWriter.write("DIRTY " + f.c(localf) + '\n');
            continue;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
      }
      finally
      {
        monitorexit;
      }
      localBufferedWriter.write("CLEAN " + f.c(localf) + localf.a() + '\n');
    }
    localBufferedWriter.close();
    if (this.c.exists())
      a(this.c, this.e, true);
    a(this.d, this.c, false);
    this.e.delete();
    this.l = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), k.a));
    monitorexit;
  }

  private static void d(String paramString)
  {
    if (!a.matcher(paramString).matches())
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + paramString + "\"");
  }

  private boolean e()
  {
    return (this.n >= 2000) && (this.n >= this.m.size());
  }

  private void f()
  {
    if (this.l == null)
      throw new IllegalStateException("cache is closed");
  }

  private void g()
  {
    while (this.j > this.g)
      c((String)((Map.Entry)this.m.entrySet().iterator().next()).getKey());
  }

  private void h()
  {
    while (this.k > this.h)
      c((String)((Map.Entry)this.m.entrySet().iterator().next()).getKey());
  }

  public final g a(String paramString)
  {
    monitorenter;
    try
    {
      f();
      d(paramString);
      f localf = (f)this.m.get(paramString);
      g localg = null;
      if (localf == null);
      while (true)
      {
        return localg;
        boolean bool = f.d(localf);
        localg = null;
        if (!bool)
          continue;
        File[] arrayOfFile = new File[this.i];
        InputStream[] arrayOfInputStream = new InputStream[this.i];
        int i1 = 0;
        while (true)
        {
          int i2;
          int i3;
          try
          {
            if (i1 >= this.i)
              break label163;
            File localFile = localf.a(i1);
            arrayOfFile[i1] = localFile;
            arrayOfInputStream[i1] = new FileInputStream(localFile);
            i1++;
            continue;
          }
          catch (FileNotFoundException localFileNotFoundException)
          {
            i2 = 0;
            i3 = this.i;
            localg = null;
          }
          if (i2 >= i3)
            break;
          InputStream localInputStream = arrayOfInputStream[i2];
          localg = null;
          if (localInputStream == null)
            break;
          k.a(arrayOfInputStream[i2]);
          i2++;
        }
        label163: this.n = (1 + this.n);
        this.l.append("READ " + paramString + '\n');
        if (e())
          this.p.submit(this.q);
        localg = new g(this, paramString, f.e(localf), arrayOfFile, arrayOfInputStream, f.b(localf), 0);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final d b(String paramString)
  {
    return a(paramString, -1L);
  }

  public final boolean c(String paramString)
  {
    monitorenter;
    while (true)
    {
      try
      {
        f();
        d(paramString);
        f localf = (f)this.m.get(paramString);
        if (localf == null)
          continue;
        d locald = f.a(localf);
        int i1 = 0;
        if (locald == null)
          continue;
        i2 = 0;
        return i2;
        this.j -= f.b(localf)[i1];
        this.k = (-1 + this.k);
        f.b(localf)[i1] = 0L;
        i1++;
        if (i1 < this.i)
        {
          File localFile = localf.a(i1);
          if ((!localFile.exists()) || (localFile.delete()))
            continue;
          throw new IOException("failed to delete " + localFile);
        }
      }
      finally
      {
        monitorexit;
      }
      this.n = (1 + this.n);
      this.l.append("REMOVE " + paramString + '\n');
      this.m.remove(paramString);
      if (e())
        this.p.submit(this.q);
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
        Writer localWriter = this.l;
        if (localWriter == null)
          return;
        Iterator localIterator = new ArrayList(this.m.values()).iterator();
        if (localIterator.hasNext())
        {
          f localf = (f)localIterator.next();
          if (f.a(localf) == null)
            continue;
          f.a(localf).b();
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      g();
      h();
      this.l.close();
      this.l = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.a.a.a.a.a
 * JD-Core Version:    0.6.0
 */