package u.aly;

public final class by
{
  private short[] a = new short[15];
  private int b = -1;

  public by(int paramInt)
  {
  }

  public final short a()
  {
    short[] arrayOfShort = this.a;
    int i = this.b;
    this.b = (i - 1);
    return arrayOfShort[i];
  }

  public final void a(short paramShort)
  {
    if (this.a.length == 1 + this.b)
    {
      short[] arrayOfShort2 = new short[this.a.length << 1];
      System.arraycopy(this.a, 0, arrayOfShort2, 0, this.a.length);
      this.a = arrayOfShort2;
    }
    short[] arrayOfShort1 = this.a;
    int i = 1 + this.b;
    this.b = i;
    arrayOfShort1[i] = paramShort;
  }

  public final void b()
  {
    this.b = -1;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<ShortStack vector:[");
    for (int i = 0; ; i++)
    {
      if (i >= this.a.length)
      {
        localStringBuilder.append("]>");
        return localStringBuilder.toString();
      }
      if (i != 0)
        localStringBuilder.append(" ");
      if (i == this.b)
        localStringBuilder.append(">>");
      localStringBuilder.append(this.a[i]);
      if (i != this.b)
        continue;
      localStringBuilder.append("<<");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.by
 * JD-Core Version:    0.6.0
 */