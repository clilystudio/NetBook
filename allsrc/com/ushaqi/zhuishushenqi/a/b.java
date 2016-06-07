package com.ushaqi.zhuishushenqi.a;

import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.model.TopicCount;

public abstract class b extends e<String, Void, TopicCount>
{
  private static TopicCount a(String[] paramArrayOfString)
  {
    try
    {
      com.ushaqi.zhuishushenqi.api.b.a();
      TopicCount localTopicCount = com.ushaqi.zhuishushenqi.api.b.b().I(paramArrayOfString[0]);
      return localTopicCount;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  protected abstract void a(TopicCount paramTopicCount);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.a.b
 * JD-Core Version:    0.6.0
 */