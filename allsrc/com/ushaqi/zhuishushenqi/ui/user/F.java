package com.ushaqi.zhuishushenqi.ui.user;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Topic;
import java.util.List;

final class F extends e<String, Void, Topic>
{
  private F(MyTopicFragment paramMyTopicFragment)
  {
  }

  private Topic a(String[] paramArrayOfString)
  {
    if (!isCancelled())
      try
      {
        b.a();
        Topic localTopic = b.b().e(paramArrayOfString[0], MyTopicFragment.h(this.a).size());
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.F
 * JD-Core Version:    0.6.0
 */