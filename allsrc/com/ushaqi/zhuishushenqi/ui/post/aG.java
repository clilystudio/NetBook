package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Review;
import com.ushaqi.zhuishushenqi.model.ReviewHistory;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aG
 * JD-Core Version:    0.6.0
 */