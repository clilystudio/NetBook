package com.ushaqi.zhuishushenqi.ui.home;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ShelfMsgRoot;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.J
 * JD-Core Version:    0.6.0
 */