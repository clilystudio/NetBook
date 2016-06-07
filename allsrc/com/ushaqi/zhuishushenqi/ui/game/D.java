package com.ushaqi.zhuishushenqi.ui.game;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.GameGiftResponse;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.D
 * JD-Core Version:    0.6.0
 */