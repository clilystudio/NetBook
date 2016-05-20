package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostPublish;

final class dC extends c<String, PostPublish>
{
  public dC(TweetDetailActivity paramTweetDetailActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034473);
  }

  private PostPublish a(String[] paramArrayOfString)
  {
    try
    {
      PostPublish localPostPublish = b.b().m(paramArrayOfString[0], paramArrayOfString[1]);
      return localPostPublish;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dC
 * JD-Core Version:    0.6.2
 */