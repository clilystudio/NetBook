package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.RecommendUgcRoot;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.RelateUgcFragment.GetUgcsTask
 * JD-Core Version:    0.6.0
 */