package com.clilystudio.app.netbook.ui.home;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ShelfMsgRoot;

final class J extends e<Void, Void, ShelfMsgRoot>
{
  private J(HomeShelfFragment paramHomeShelfFragment)
  {
  }

  private static ShelfMsgRoot a()
  {
    try
    {
      b.a();
      ShelfMsgRoot localShelfMsgRoot = b.b().l();
      return localShelfMsgRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.J
 * JD-Core Version:    0.6.2
 */