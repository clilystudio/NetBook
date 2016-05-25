package com.clilystudio.app.netbook.ui.game;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GameCat;
import com.clilystudio.app.netbook.model.GameCatRoot;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class c extends e<String, Void, List<GameCat>>
{
  private c(GameCatListFragment paramGameCatListFragment)
  {
  }

  private static List<GameCat> a()
  {
    try
    {
      b.a();
      GameCatRoot localGameCatRoot = b.b().r();
      if ((localGameCatRoot != null) && (localGameCatRoot.isOk()) && (localGameCatRoot.getGames() != null))
      {
        List localList = Arrays.asList(localGameCatRoot.getGames());
        return localList;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.c
 * JD-Core Version:    0.6.2
 */