package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ReviewResult;

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
 * Qualified Name:     com.clilystudio.netbook.ui.post.cE
 * JD-Core Version:    0.6.0
 */