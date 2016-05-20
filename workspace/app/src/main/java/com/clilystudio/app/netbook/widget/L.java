package com.clilystudio.app.netbook.widget;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GameGiftRoot;

final class L extends e<String, Void, GameGiftRoot>
{
  private L(GameGiftView paramGameGiftView)
  {
  }

  private static GameGiftRoot a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      GameGiftRoot localGameGiftRoot = b.b().ab(paramArrayOfString[0]);
      return localGameGiftRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.L
 * JD-Core Version:    0.6.2
 */