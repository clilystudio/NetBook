package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.model.RecommendUgcRoot;

public final class RelateUgcFragment$GetUgcsTask extends e<String, Void, RecommendUgcRoot>
{
  private String b = "共%1$d本书  |  %2$d人收藏";

  public RelateUgcFragment$GetUgcsTask(RelateUgcFragment paramRelateUgcFragment)
  {
  }

  private static RecommendUgcRoot a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      RecommendUgcRoot localRecommendUgcRoot = b.b().i(paramArrayOfString[0], 3);
      return localRecommendUgcRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.RelateUgcFragment.GetUgcsTask
 * JD-Core Version:    0.6.2
 */