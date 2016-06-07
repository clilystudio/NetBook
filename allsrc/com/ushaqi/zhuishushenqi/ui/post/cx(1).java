package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.VoteResult;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cx
 * JD-Core Version:    0.6.0
 */