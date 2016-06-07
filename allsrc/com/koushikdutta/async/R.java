package com.koushikdutta.async;

final class R extends U
{
  private S<byte[]> b;

  public R(int paramInt, S<byte[]> paramS)
  {
    super(paramInt);
    if (paramInt <= 0)
      throw new IllegalArgumentException("length should be > 0");
    this.b = paramS;
  }

  public final U a(y paramy, v paramv)
  {
    byte[] arrayOfByte = new byte[this.a];
    paramv.a(arrayOfByte);
    this.b.a(arrayOfByte);
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.R
 * JD-Core Version:    0.6.0
 */