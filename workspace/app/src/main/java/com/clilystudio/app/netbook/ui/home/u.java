package com.clilystudio.app.netbook.ui.home;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.c_StoragePathConst;
import com.clilystudio.app.netbook.reader.txt.U;
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
      a.F(c_StoragePathConst.d_TxtToc + str);
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.u
 * JD-Core Version:    0.6.2
 */