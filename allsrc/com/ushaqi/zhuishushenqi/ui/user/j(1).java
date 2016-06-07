package com.ushaqi.zhuishushenqi.ui.user;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.GameRoot;

final class j extends e<Void, Void, GameRoot>
{
  private j(ChargeActivity paramChargeActivity)
  {
  }

  private static GameRoot a()
  {
    try
    {
      b.a();
      GameRoot localGameRoot = b.b().p();
      return localGameRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.j
 * JD-Core Version:    0.6.0
 */