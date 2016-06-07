package cn.sharesdk.tencent.qq;

class d extends Thread
{
  d(c paramc, String paramString)
  {
  }

  public void run()
  {
    try
    {
      this.b.a(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.d
 * JD-Core Version:    0.6.0
 */