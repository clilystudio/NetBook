package com.ushaqi.zhuishushenqi.ui.game;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.model.GameRoot;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.am
 * JD-Core Version:    0.6.0
 */