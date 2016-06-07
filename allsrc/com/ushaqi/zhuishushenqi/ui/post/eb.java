package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TimelineResult;

final class eb extends e<String, Void, TimelineResult>
{
  private eb(TweetTimelineFragment paramTweetTimelineFragment)
  {
  }

  private static TimelineResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      TimelineResult localTimelineResult = b.b().d(paramArrayOfString[0], paramArrayOfString[1], null);
      return localTimelineResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.eb
 * JD-Core Version:    0.6.0
 */