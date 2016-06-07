package cn.sharesdk.framework;

class g extends Thread
{
  g(f paramf, int paramInt, Object paramObject)
  {
  }

  public void run()
  {
    try
    {
      f.a(this.c);
      if (f.b(this.c).checkAuthorize(this.a, this.b))
        this.c.b(this.a, this.b);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.g
 * JD-Core Version:    0.6.0
 */