package com.github.kevinsawicki.http;

import java.util.concurrent.Callable;

public abstract class e<V>
  implements Callable<V>
{
  protected abstract V a();

  protected abstract void b();

  // ERROR //
  public V call()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: invokevirtual 21	com/github/kevinsawicki/http/e:a	()Ljava/lang/Object;
    //   6: astore 6
    //   8: aload_0
    //   9: invokevirtual 23	com/github/kevinsawicki/http/e:b	()V
    //   12: aload 6
    //   14: areturn
    //   15: astore 7
    //   17: new 17	com/github/kevinsawicki/http/HttpRequest$HttpRequestException
    //   20: dup
    //   21: aload 7
    //   23: invokespecial 26	com/github/kevinsawicki/http/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   26: athrow
    //   27: astore 5
    //   29: aload 5
    //   31: athrow
    //   32: astore_2
    //   33: aload_0
    //   34: invokevirtual 23	com/github/kevinsawicki/http/e:b	()V
    //   37: aload_2
    //   38: athrow
    //   39: astore 4
    //   41: new 17	com/github/kevinsawicki/http/HttpRequest$HttpRequestException
    //   44: dup
    //   45: aload 4
    //   47: invokespecial 26	com/github/kevinsawicki/http/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   50: athrow
    //   51: astore_3
    //   52: iload_1
    //   53: ifne -16 -> 37
    //   56: new 17	com/github/kevinsawicki/http/HttpRequest$HttpRequestException
    //   59: dup
    //   60: aload_3
    //   61: invokespecial 26	com/github/kevinsawicki/http/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   64: athrow
    //   65: astore_2
    //   66: iconst_0
    //   67: istore_1
    //   68: goto -35 -> 33
    //
    // Exception table:
    //   from	to	target	type
    //   8	12	15	java/io/IOException
    //   2	8	27	com/github/kevinsawicki/http/HttpRequest$HttpRequestException
    //   29	32	32	finally
    //   41	51	32	finally
    //   2	8	39	java/io/IOException
    //   33	37	51	java/io/IOException
    //   2	8	65	finally
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.github.kevinsawicki.http.e
 * JD-Core Version:    0.6.0
 */