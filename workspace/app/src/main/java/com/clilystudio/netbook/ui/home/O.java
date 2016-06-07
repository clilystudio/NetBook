package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.TopicSummary;
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
 * Qualified Name:     com.clilystudio.netbook.ui.home.O
 * JD-Core Version:    0.6.0
 */