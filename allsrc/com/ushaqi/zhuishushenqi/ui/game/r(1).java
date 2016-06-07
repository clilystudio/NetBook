package com.ushaqi.zhuishushenqi.ui.game;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.GamePostRoot;
import com.ushaqi.zhuishushenqi.model.GamePostRoot.GamePost;
import java.util.Arrays;
import java.util.List;

final class r extends e<String, Void, List<GamePostRoot.GamePost>>
{
  private r(GameDetailActivity paramGameDetailActivity)
  {
  }

  private List<GamePostRoot.GamePost> a(String[] paramArrayOfString)
  {
    try
    {
      GamePostRoot localGamePostRoot = b.b().d(paramArrayOfString[0], GameDetailActivity.c(this.a).size(), 10);
      if ((localGamePostRoot != null) && (localGamePostRoot.getPosts() != null))
      {
        List localList = Arrays.asList(localGamePostRoot.getPosts());
        return localList;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.r
 * JD-Core Version:    0.6.0
 */