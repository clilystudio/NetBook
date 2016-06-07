package com.ushaqi.zhuishushenqi.util;

import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;

final class ao extends Thread
{
  ao(String paramString1, String paramString2, String paramString3)
  {
  }

  public final void run()
  {
    try
    {
      b.a();
      b.b().l(this.a, this.b, this.c);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.ao
 * JD-Core Version:    0.6.0
 */