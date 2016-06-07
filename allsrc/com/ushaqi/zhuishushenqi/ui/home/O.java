package com.ushaqi.zhuishushenqi.ui.home;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.model.TopicSummary;
import java.util.List;

final class O extends e<String, Void, TopicSummary>
{
  private List<BookReadRecord> a;

  private O(HomeTopicFragment paramHomeTopicFragment)
  {
  }

  private TopicSummary a()
  {
    try
    {
      this.a = BookReadRecord.getAll();
      b.a();
      TopicSummary localTopicSummary = b.b().k();
      return localTopicSummary;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.O
 * JD-Core Version:    0.6.0
 */