package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;

final class aQ extends e<String, Void, Topic>
{
  private aQ(BookTopicListFragment paramBookTopicListFragment)
  {
  }

  private Topic a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      Topic localTopic = b.b().b(paramArrayOfString[0], paramArrayOfString[1], BookTopicListFragment.d(this.a).size(), 20);
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
 * Qualified Name:     com.clilystudio.netbook.ui.post.aQ
 * JD-Core Version:    0.6.0
 */