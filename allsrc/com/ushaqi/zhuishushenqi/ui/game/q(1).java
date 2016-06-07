package com.ushaqi.zhuishushenqi.ui.game;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.GameDetail;
import java.io.IOException;

final class q extends e<String, Void, GameDetail>
{
  private q(GameDetailActivity paramGameDetailActivity)
  {
  }

  private GameDetail a(String[] paramArrayOfString)
  {
    try
    {
      GameDetail localGameDetail = b.b().Y(paramArrayOfString[0]);
      return localGameDetail;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.q
 * JD-Core Version:    0.6.0
 */