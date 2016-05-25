package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostPublish;

final class dB extends c<String, PostPublish>
{
  public dB(TweetDetailActivity paramTweetDetailActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034430);
  }

  private PostPublish a(String[] paramArrayOfString)
  {
    try
    {
      PostPublish localPostPublish = b.b().a(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], paramArrayOfString[3]);
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
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dB
 * JD-Core Version:    0.6.2
 */