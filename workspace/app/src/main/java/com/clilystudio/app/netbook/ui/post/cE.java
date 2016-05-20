package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ReviewResult;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cE
 * JD-Core Version:    0.6.2
 */