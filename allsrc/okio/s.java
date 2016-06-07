package okio;

final class s
  implements h
{
  private f a;
  private x b;
  private boolean c;

  public s(x paramx)
  {
    this(paramx, new f());
  }

  private s(x paramx, f paramf)
  {
    if (paramx == null)
      throw new IllegalArgumentException("sink == null");
    this.a = paramf;
    this.b = paramx;
  }

  public final long a(y paramy)
  {
    if (paramy == null)
      throw new IllegalArgumentException("source == null");
    long l1 = 0L;
    while (true)
    {
      long l2 = paramy.a(this.a, 2048L);
      if (l2 == -1L)
        break;
      l1 += l2;
      r();
    }
    return l1;
  }

  public final z a()
  {
    return this.b.a();
  }

  public final void a_(f paramf, long paramLong)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.a_(paramf, paramLong);
    r();
  }

  public final h b(String paramString)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.a(paramString);
    return r();
  }

  public final h b(ByteString paramByteString)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.a(paramByteString);
    return r();
  }

  public final h b(byte[] paramArrayOfByte)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.a(paramArrayOfByte);
    return r();
  }

  public final f c()
  {
    return this.a;
  }

  public final h c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.b(paramArrayOfByte, paramInt1, paramInt2);
    return r();
  }

  public final void close()
  {
    if (this.c);
    while (true)
    {
      return;
      try
      {
        boolean bool = this.a.b < 0L;
        Object localObject = null;
        if (bool)
          this.b.a_(this.a, this.a.b);
        try
        {
          label44: this.b.close();
          this.c = true;
          if (localObject == null)
            continue;
          B.a((Throwable)localObject);
          return;
        }
        catch (Throwable localThrowable2)
        {
          while (true)
          {
            if (localObject != null)
              continue;
            localObject = localThrowable2;
          }
        }
      }
      catch (Throwable localThrowable1)
      {
        break label44;
      }
    }
  }

  public final h f(int paramInt)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.d(paramInt);
    return r();
  }

  public final void flush()
  {
    if (this.c)
      throw new IllegalStateException("closed");
    if (this.a.b > 0L)
      this.b.a_(this.a, this.a.b);
    this.b.flush();
  }

  public final h g(int paramInt)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.c(paramInt);
    return r();
  }

  public final h h(int paramInt)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.b(paramInt);
    return r();
  }

  public final h h(long paramLong)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.g(paramLong);
    return r();
  }

  public final h r()
  {
    if (this.c)
      throw new IllegalStateException("closed");
    f localf = this.a;
    long l = localf.b;
    if (l == 0L)
      l = 0L;
    while (true)
    {
      if (l > 0L)
        this.b.a_(this.a, l);
      return this;
      v localv = localf.a.g;
      if ((localv.c >= 2048) || (!localv.e))
        continue;
      l -= localv.c - localv.b;
    }
  }

  public final String toString()
  {
    return "buffer(" + this.b + ")";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.s
 * JD-Core Version:    0.6.0
 */