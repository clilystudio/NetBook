package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameRoot;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.am
 * JD-Core Version:    0.6.0
 */