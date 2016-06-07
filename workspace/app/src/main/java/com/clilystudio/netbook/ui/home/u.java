package com.clilystudio.netbook.ui.home;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.c;
import com.clilystudio.netbook.reader.txt.U;
import java.io.FileNotFoundException;

final class u extends Thread
{
  u(HomeShelfFragment paramHomeShelfFragment, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      String str = U.b(this.a);
      a.F(c.d + str);
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.u
 * JD-Core Version:    0.6.0
 */