package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;

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
 * Qualified Name:     com.clilystudio.netbook.util.ao
 * JD-Core Version:    0.6.0
 */