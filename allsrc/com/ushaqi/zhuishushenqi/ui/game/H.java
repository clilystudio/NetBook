package com.ushaqi.zhuishushenqi.ui.game;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.GameLayoutRoot;
import java.io.IOException;

final class H extends e<String, Void, GameLayoutRoot>
{
  private H(GameLayoutFragment paramGameLayoutFragment)
  {
  }

  private static GameLayoutRoot a()
  {
    try
    {
      b.a();
      GameLayoutRoot localGameLayoutRoot = b.b().q();
      return localGameLayoutRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.H
 * JD-Core Version:    0.6.0
 */