package com.ushaqi.zhuishushenqi.a;

import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.db.BookTopicEnterRecord;
import com.ushaqi.zhuishushenqi.model.TopicCount;
import java.io.IOException;

public final class f extends e<Void, Void, Void>
{
  private String a;

  public f(String paramString)
  {
    this.a = paramString;
  }

  private Void a()
  {
    try
    {
      b.a();
      TopicCount localTopicCount = b.b().I(this.a);
      if ((localTopicCount != null) && (localTopicCount.isOk()))
        BookTopicEnterRecord.updateCount(this.a, localTopicCount.getCount());
      return null;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.a.f
 * JD-Core Version:    0.6.0
 */