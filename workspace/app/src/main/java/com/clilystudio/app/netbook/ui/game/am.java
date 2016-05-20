package com.clilystudio.app.netbook.ui.game;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Game;
import com.clilystudio.app.netbook.model.GameRoot;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class am extends e<String, Void, List<Game>>
{
  private am(GameRankListFragment paramGameRankListFragment)
  {
  }

  private List<Game> a()
  {
    try
    {
      b.a();
      GameRoot localGameRoot = b.b().a(GameRankListFragment.b(this.a).size(), 20);
      if ((localGameRoot != null) && (localGameRoot.isOk()) && (localGameRoot.getGames() != null))
      {
        List localList = Arrays.asList(localGameRoot.getGames());
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
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.am
 * JD-Core Version:    0.6.2
 */