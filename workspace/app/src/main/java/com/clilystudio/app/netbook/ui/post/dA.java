package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.VoteResult;

final class dA extends c<String, VoteResult>
{
  public dA(TweetDetailActivity paramTweetDetailActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034584);
  }

  private VoteResult a(String[] paramArrayOfString)
  {
    try
    {
      VoteResult localVoteResult = b.b().a(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
      return localVoteResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dA
 * JD-Core Version:    0.6.2
 */