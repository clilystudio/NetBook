package cn.sharesdk.framework;

import java.util.HashMap;

class l extends Thread
{
  l(k paramk)
  {
  }

  public void run()
  {
    try
    {
      HashMap localHashMap = new HashMap();
      if ((!this.a.f()) && (this.a.a(localHashMap)))
        this.a.b(localHashMap);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.l
 * JD-Core Version:    0.6.0
 */