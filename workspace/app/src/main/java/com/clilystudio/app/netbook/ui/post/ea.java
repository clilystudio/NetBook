package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TimelineResult;

final class ea extends e<String, Void, TimelineResult>
{
  private ea(TweetTimelineFragment paramTweetTimelineFragment)
  {
  }

  private static TimelineResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      TimelineResult localTimelineResult = b.b().d(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
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
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ea
 * JD-Core Version:    0.6.2
 */