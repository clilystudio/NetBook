package okio;

final class v
{
  final byte[] a;
  int b;
  int c;
  boolean d;
  boolean e;
  v f;
  v g;

  v()
  {
    this.a = new byte[2048];
    this.e = true;
    this.d = false;
  }

  v(v paramv)
  {
    this(paramv.a, paramv.b, paramv.c);
    paramv.d = true;
  }

  v(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a = paramArrayOfByte;
    this.b = paramInt1;
    this.c = paramInt2;
    this.e = false;
    this.d = true;
  }

  public final v a()
  {
    if (this.f != this);
    for (v localv = this.f; ; localv = null)
    {
      this.g.f = this.f;
      this.f.g = this.g;
      this.f = null;
      this.g = null;
      return localv;
    }
  }

  public final v a(v paramv)
  {
    paramv.g = this;
    paramv.f = this.f;
    this.f.g = paramv;
    this.f = paramv;
    return paramv;
  }

  public final void a(v paramv, int paramInt)
  {
    if (!paramv.e)
      throw new IllegalArgumentException();
    if (paramInt + paramv.c > 2048)
    {
      if (paramv.d)
        throw new IllegalArgumentException();
      if (paramInt + paramv.c - paramv.b > 2048)
        throw new IllegalArgumentException();
      System.arraycopy(paramv.a, paramv.b, paramv.a, 0, paramv.c - paramv.b);
      paramv.c -= paramv.b;
      paramv.b = 0;
    }
    System.arraycopy(this.a, this.b, paramv.a, paramv.c, paramInt);
    paramv.c = (paramInt + paramv.c);
    this.b = (paramInt + this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.v
 * JD-Core Version:    0.6.0
 */