package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.VoteResult;

final class cx extends c<String, VoteResult>
{
  public cx(PostDetailActivity paramPostDetailActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034584);
  }

  private VoteResult a(String[] paramArrayOfString)
  {
    try
    {
      VoteResult localVoteResult = b.b().k(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
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
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cx
 * JD-Core Version:    0.6.2
 */