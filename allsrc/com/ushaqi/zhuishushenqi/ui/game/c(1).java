package com.ushaqi.zhuishushenqi.ui.game;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.GameCat;
import com.ushaqi.zhuishushenqi.model.GameCatRoot;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.c
 * JD-Core Version:    0.6.0
 */