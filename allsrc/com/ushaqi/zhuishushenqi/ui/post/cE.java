package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ReviewResult;

final class cE extends e<String, Void, ReviewResult>
{
  private cE(ReviewActivity paramReviewActivity)
  {
  }

  private ReviewResult a(String[] paramArrayOfString)
  {
    try
    {
      ReviewResult localReviewResult = b.b().D(paramArrayOfString[0]);
      return localReviewResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cE
 * JD-Core Version:    0.6.0
 */