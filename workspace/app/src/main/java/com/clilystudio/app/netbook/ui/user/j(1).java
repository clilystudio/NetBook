package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GameRoot;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.j
 * JD-Core Version:    0.6.2
 */