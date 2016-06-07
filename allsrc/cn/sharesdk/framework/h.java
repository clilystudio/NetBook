package cn.sharesdk.framework;

class h extends Thread
{
  h(f paramf, String[] paramArrayOfString)
  {
  }

  public void run()
  {
    try
    {
      f.a(this.b);
      f.b(this.b).doAuthorize(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.h
 * JD-Core Version:    0.6.0
 */