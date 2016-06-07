package okio;

final class w
{
  private static v a;
  private static long b;

  static v a()
  {
    monitorenter;
    try
    {
      if (a != null)
      {
        v localv = a;
        a = localv.f;
        localv.f = null;
        b -= 2048L;
        return localv;
      }
      return new v();
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  static void a(v paramv)
  {
    if ((paramv.f != null) || (paramv.g != null))
      throw new IllegalArgumentException();
    if (paramv.d)
      return;
    monitorenter;
    try
    {
      if (2048L + b > 65536L)
        return;
    }
    finally
    {
      monitorexit;
    }
    b = 2048L + b;
    paramv.f = a;
    paramv.c = 0;
    paramv.b = 0;
    a = paramv;
    monitorexit;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.w
 * JD-Core Version:    0.6.0
 */