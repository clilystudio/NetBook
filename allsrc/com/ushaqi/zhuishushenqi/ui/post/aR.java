package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Topic;

final class aR extends e<String, Void, Topic>
{
  private aR(BookTopicListFragment paramBookTopicListFragment)
  {
  }

  private static Topic a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      Topic localTopic = b.b().b(paramArrayOfString[0], paramArrayOfString[1], 0, 20);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aR
 * JD-Core Version:    0.6.0
 */