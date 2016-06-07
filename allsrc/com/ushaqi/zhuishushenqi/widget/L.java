package com.ushaqi.zhuishushenqi.widget;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.GameGiftRoot;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.L
 * JD-Core Version:    0.6.0
 */