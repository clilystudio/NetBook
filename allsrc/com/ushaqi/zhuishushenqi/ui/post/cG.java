package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TweetResult;

final class cG extends e<String, Void, TweetResult>
{
  private cG(ReviewActivity paramReviewActivity)
  {
  }

  private TweetResult a(String[] paramArrayOfString)
  {
    try
    {
      TweetResult localTweetResult = b.b().l(paramArrayOfString[0]);
      return localTweetResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cG
 * JD-Core Version:    0.6.0
 */