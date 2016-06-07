package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Topic;
import java.util.List;

final class dN extends e<String, Void, Topic>
{
  private dN(TweetListFragment paramTweetListFragment)
  {
  }

  private Topic a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      Topic localTopic = b.b().b(paramArrayOfString[0], paramArrayOfString[1], TweetListFragment.e(this.a).size(), 20);
      return localTopic;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dN
 * JD-Core Version:    0.6.0
 */