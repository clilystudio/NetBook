package okio;

public abstract class k
  implements y
{
  private final y a;

  public k(y paramy)
  {
    if (paramy == null)
      throw new IllegalArgumentException("delegate == null");
    this.a = paramy;
  }

  public long a(f paramf, long paramLong)
  {
    return this.a.a(paramf, paramLong);
  }

  public final z a()
  {
    return this.a.a();
  }

  public void close()
  {
    this.a.close();
  }

  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.a.toString() + ")";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.k
 * JD-Core Version:    0.6.0
 */