package com.ushaqi.zhuishushenqi.widget;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.GameGiftResponse;

final class Y extends c<String, GameGiftResponse>
{
  public Y(GiftGameGiftButton paramGiftGameGiftButton, Activity paramActivity)
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.Y
 * JD-Core Version:    0.6.0
 */