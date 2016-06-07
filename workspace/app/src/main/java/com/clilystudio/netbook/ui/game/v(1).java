package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GamesGiftRoot;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.model.GiftGameGift;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class v extends e<String, Void, List<GameGiftGroup>>
{
  private v(GameGiftFragment paramGameGiftFragment)
  {
  }

  private static List<GameGiftGroup> a()
  {
    int k;
    int m;
    try
    {
      b.a();
      GamesGiftRoot localGamesGiftRoot = b.b().b(0, 30);
      if ((localGamesGiftRoot != null) && (localGamesGiftRoot.ok) && (localGamesGiftRoot.games != null))
      {
        List localList = Arrays.asList(localGamesGiftRoot.games);
        ArrayList localArrayList = new ArrayList();
        for (int i = 0; i < localList.size(); i++)
        {
          GiftGame localGiftGame = (GiftGame)localList.get(i);
          GameGiftGroup localGameGiftGroup1 = new GameGiftGroup();
          localGameGiftGroup1.setType(0);
          localGameGiftGroup1.setGame(localGiftGame);
          localArrayList.add(localGameGiftGroup1);
          GiftGameGift[] arrayOfGiftGameGift = localGiftGame.gifts;
          if ((arrayOfGiftGameGift == null) || (arrayOfGiftGameGift.length == 0))
            continue;
          int j = arrayOfGiftGameGift.length;
          if (j <= 3)
            break label260;
          j = 3;
          k = 1;
          break label254;
          while (m < j)
          {
            GameGiftGroup localGameGiftGroup2 = new GameGiftGroup();
            localGameGiftGroup2.setType(1);
            localGameGiftGroup2.setGift(arrayOfGiftGameGift[m]);
            localGameGiftGroup2.setGame(localGiftGame);
            localArrayList.add(localGameGiftGroup2);
            m++;
          }
          if (k == 0)
            continue;
          GameGiftGroup localGameGiftGroup3 = new GameGiftGroup();
          localGameGiftGroup3.setType(2);
          localGameGiftGroup3.setGame(localGiftGame);
          localArrayList.add(localGameGiftGroup3);
        }
        return localArrayList;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
    while (true)
    {
      label254: m = 0;
      break;
      label260: k = 0;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.v
 * JD-Core Version:    0.6.0
 */