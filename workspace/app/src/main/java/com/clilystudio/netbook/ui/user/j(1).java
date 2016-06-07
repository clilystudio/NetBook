package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameRoot;

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
 * Qualified Name:     com.clilystudio.netbook.ui.user.j
 * JD-Core Version:    0.6.0
 */