package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TimelineResult;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.eb
 * JD-Core Version:    0.6.2
 */