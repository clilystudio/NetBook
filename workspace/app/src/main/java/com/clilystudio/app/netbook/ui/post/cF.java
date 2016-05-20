package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostDetailComment;

final class cF extends e<String, Void, PostDetailComment>
{
  private cF(ReviewActivity paramReviewActivity)
  {
  }

  private PostDetailComment a(String[] paramArrayOfString)
  {
    try
    {
      if (paramArrayOfString.length > 1)
        return b.b().l(paramArrayOfString[0], paramArrayOfString[1]);
      PostDetailComment localPostDetailComment = b.b().l(paramArrayOfString[0], null);
      return localPostDetailComment;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cF
 * JD-Core Version:    0.6.2
 */