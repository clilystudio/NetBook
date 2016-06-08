package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Topic;

final class G extends e<String, Void, Topic>
{
  private G(MyTopicFragment paramMyTopicFragment)
  {
  }

  private static Topic a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      Topic localTopic = b.b().e(paramArrayOfString[0], 0);
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
 * Qualified Name:     com.clilystudio.netbook.ui.user.G
 * JD-Core Version:    0.6.0
 */