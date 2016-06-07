package u.aly;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class bO
{
  private File a;
  private as b = null;
  private long c;
  private long d;
  private Set<a> e = new HashSet();

  public bO(Context paramContext)
  {
    this.a = new File(paramContext.getFilesDir(), "umeng_it.cache");
    this.d = 86400000L;
  }

  private void e()
  {
    as localas = new as();
    HashMap localHashMap = new HashMap();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.e.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localas.a(localArrayList);
        localas.a(localHashMap);
        monitorenter;
      }
      try
      {
        this.b = localas;
        return;
        a locala = (a)localIterator.next();
        if (!locala.c())
          continue;
        if (locala.d() != null)
          localHashMap.put(locala.b(), locala.d());
        if ((locala.e() == null) || (locala.e().isEmpty()))
          continue;
        localArrayList.addAll(locala.e());
        continue;
      }
      finally
      {
        monitorexit;
      }
    }
    throw localObject;
  }

  private void f()
  {
    as localas;
    if (this.b != null)
    {
      localas = this.b;
      if (localas == null);
    }
    try
    {
      monitorenter;
      try
      {
        byte[] arrayOfByte = new bF().a(localas);
        monitorexit;
        if (arrayOfByte != null)
          bx.a(this.a, arrayOfByte);
        return;
      }
      finally
      {
        monitorexit;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  // ERROR //
  private as g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 41	u/aly/bO:a	Ljava/io/File;
    //   4: invokevirtual 126	java/io/File:exists	()Z
    //   7: ifne +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: new 128	java/io/FileInputStream
    //   15: dup
    //   16: aload_0
    //   17: getfield 41	u/aly/bO:a	Ljava/io/File;
    //   20: invokespecial 131	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   23: astore_1
    //   24: aload_1
    //   25: invokestatic 134	u/aly/bx:b	(Ljava/io/InputStream;)[B
    //   28: astore 4
    //   30: new 47	u/aly/as
    //   33: dup
    //   34: invokespecial 48	u/aly/as:<init>	()V
    //   37: astore 5
    //   39: new 136	u/aly/bD
    //   42: dup
    //   43: invokespecial 137	u/aly/bD:<init>	()V
    //   46: aload 5
    //   48: aload 4
    //   50: invokevirtual 140	u/aly/bD:a	(Lu/aly/bz;[B)V
    //   53: aload_1
    //   54: invokestatic 143	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   57: aload 5
    //   59: areturn
    //   60: astore_2
    //   61: aconst_null
    //   62: astore_1
    //   63: aload_2
    //   64: invokevirtual 121	java/lang/Exception:printStackTrace	()V
    //   67: aload_1
    //   68: invokestatic 143	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   71: aconst_null
    //   72: areturn
    //   73: astore 6
    //   75: aconst_null
    //   76: astore_1
    //   77: aload 6
    //   79: astore_3
    //   80: aload_1
    //   81: invokestatic 143	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   84: aload_3
    //   85: athrow
    //   86: astore_3
    //   87: goto -7 -> 80
    //   90: astore_2
    //   91: goto -28 -> 63
    //
    // Exception table:
    //   from	to	target	type
    //   12	24	60	java/lang/Exception
    //   12	24	73	finally
    //   24	53	86	finally
    //   63	67	86	finally
    //   24	53	90	java/lang/Exception
  }

  public final void a()
  {
    long l = System.currentTimeMillis();
    Iterator localIterator;
    int i;
    if (l - this.c >= this.d)
    {
      localIterator = this.e.iterator();
      i = 0;
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (i != 0)
        {
          e();
          f();
        }
        this.c = l;
        return;
      }
      a locala = (a)localIterator.next();
      if (!locala.c())
      {
        i = 1;
        continue;
      }
      if (!locala.a())
        continue;
      i = 1;
    }
  }

  public final void a(a parama)
  {
    this.e.add(parama);
  }

  public final as b()
  {
    return this.b;
  }

  public final void c()
  {
    Iterator localIterator = this.e.iterator();
    for (int i = 0; ; i = 1)
    {
      a locala;
      do
      {
        if (!localIterator.hasNext())
        {
          if (i != 0)
          {
            this.b.b(false);
            f();
          }
          return;
        }
        locala = (a)localIterator.next();
      }
      while ((!locala.c()) || (locala.e() == null) || (locala.e().isEmpty()));
      locala.a(null);
    }
  }

  public final void d()
  {
    as localas = g();
    if (localas == null)
      return;
    ArrayList localArrayList = new ArrayList(this.e.size());
    monitorenter;
    while (true)
    {
      Iterator localIterator2;
      try
      {
        this.b = localas;
        Iterator localIterator1 = this.e.iterator();
        if (localIterator1.hasNext())
          continue;
        localIterator2 = localArrayList.iterator();
        if (!localIterator2.hasNext())
        {
          monitorexit;
          e();
          return;
          a locala1 = (a)localIterator1.next();
          locala1.a(this.b);
          if (locala1.c())
            continue;
          localArrayList.add(locala1);
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      a locala2 = (a)localIterator2.next();
      this.e.remove(locala2);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bO
 * JD-Core Version:    0.6.0
 */