package cn.sharesdk.tencent.qq;

import com.arcsoft.hpay100.a.a;

class j extends Thread
{
  j(i parami, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
  }

  public void run()
  {
    try
    {
      String str2 = a.c(i.a(this.h), this.a);
      str1 = str2;
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        while (true)
        {
          i.a(this.h, this.b, this.c, this.d, this.a, str1, this.e, this.f, this.g);
          return;
          localThrowable1 = localThrowable1;
          cn.sharesdk.framework.utils.d.a().w(localThrowable1);
          String str1 = null;
        }
      }
      catch (Throwable localThrowable2)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable2);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.j
 * JD-Core Version:    0.6.0
 */