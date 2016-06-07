package cn.sharesdk.framework.statistics.b;

public class d extends c
{
  private static int d;
  private static long n;
  public String a;
  public int b;
  public String c = "";

  protected String a()
  {
    return "[EVT]";
  }

  protected void a(long paramLong)
  {
    n = paramLong;
  }

  protected int b()
  {
    return 5000;
  }

  protected int c()
  {
    return 30;
  }

  protected long d()
  {
    return d;
  }

  protected long e()
  {
    return n;
  }

  protected void f()
  {
    d = 1 + d;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(super.toString());
    localStringBuilder.append('|').append(this.a);
    localStringBuilder.append('|').append(this.b);
    localStringBuilder.append('|').append(this.c);
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.b.d
 * JD-Core Version:    0.6.0
 */