package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Review;
import com.clilystudio.app.netbook.model.ReviewHistory;
import java.io.IOException;

final class aG extends c<String, Review>
{
  public aG(BookReviewListFragment paramBookReviewListFragment, Activity paramActivity)
  {
    super(paramActivity, "正在获取历史书评...");
  }

  private static Review a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      ReviewHistory localReviewHistory = b.b().q(paramArrayOfString[0], paramArrayOfString[1]);
      if ((localReviewHistory != null) && (localReviewHistory.ok))
      {
        Review localReview = localReviewHistory.review;
        return localReview;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aG
 * JD-Core Version:    0.6.2
 */