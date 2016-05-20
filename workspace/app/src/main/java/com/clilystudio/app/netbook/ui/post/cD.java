package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.adapter.z;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostDetailComment;

final class cD extends e<String, Void, PostDetailComment>
{
  private cD(ReviewActivity paramReviewActivity)
  {
  }

  private PostDetailComment a(String[] paramArrayOfString)
  {
    try
    {
      PostDetailComment localPostDetailComment = b.b().f(paramArrayOfString[0], ReviewActivity.f(this.a).getCount(), 30);
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
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cD
 * JD-Core Version:    0.6.2
 */