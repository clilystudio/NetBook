package com.clilystudio.app.netbook.ui.home;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.c_StoragePathConst;
import java.io.File;

final class v extends Thread
{
  v(HomeShelfFragment paramHomeShelfFragment, String paramString)
  {
  }

  public final void run()
  {
    String str = this.a;
    a.E(c_StoragePathConst.b + File.separator + str);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.v
 * JD-Core Version:    0.6.2
 */