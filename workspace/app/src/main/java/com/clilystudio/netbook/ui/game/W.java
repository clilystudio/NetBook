package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameLayoutRoot;
import java.io.IOException;

final class W extends e<String, Void, GameLayoutRoot>
{
  private W(GameMicroFragment paramGameMicroFragment)
  {
  }

  private static GameLayoutRoot a()
  {
    try
    {
      b.a();
      GameLayoutRoot localGameLayoutRoot = b.b().s();
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
 * Qualified Name:     com.clilystudio.netbook.ui.game.W
 * JD-Core Version:    0.6.0
 */