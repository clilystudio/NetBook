package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameGiftResponse;

final class D extends c<String, GameGiftResponse>
{
  public D(GameGiftListActivity paramGameGiftListActivity, Activity paramActivity)
  {
    super(paramActivity);
  }

  private static GameGiftResponse a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      GameGiftResponse localGameGiftResponse = b.b().K(paramArrayOfString[0], paramArrayOfString[1]);
      return localGameGiftResponse;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.D
 * JD-Core Version:    0.6.0
 */