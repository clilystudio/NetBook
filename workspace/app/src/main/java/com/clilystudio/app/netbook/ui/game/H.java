package com.clilystudio.app.netbook.ui.game;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GameLayoutRoot;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.H
 * JD-Core Version:    0.6.2
 */