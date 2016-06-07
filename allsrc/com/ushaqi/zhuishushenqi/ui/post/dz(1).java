package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TweetResult;

final class dz extends e<String, Void, TweetResult>
{
  private dz(TweetDetailActivity paramTweetDetailActivity)
  {
  }

  private TweetResult a()
  {
    try
    {
      TweetResult localTweetResult = b.b().l(this.a.a);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dz
 * JD-Core Version:    0.6.0
 */