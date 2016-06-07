package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ShelfMsgRoot;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.J
 * JD-Core Version:    0.6.0
 */