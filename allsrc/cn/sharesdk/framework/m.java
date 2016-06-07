package cn.sharesdk.framework;

import cn.sharesdk.framework.statistics.a;
import java.util.HashMap;

class m extends Thread
{
  m(k paramk, a parama)
  {
  }

  public void run()
  {
    try
    {
      HashMap localHashMap1 = this.a.g(k.a(this.b));
      HashMap localHashMap2 = new HashMap();
      if (k.a(this.b, this.a, localHashMap1, localHashMap2))
        this.b.b(localHashMap2);
      this.a.a(k.a(this.b), localHashMap1);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.m
 * JD-Core Version:    0.6.0
 */