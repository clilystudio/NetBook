package com.ushaqi.zhuishushenqi.reader;

import com.ushaqi.zhuishushenqi.a.b;
import com.ushaqi.zhuishushenqi.db.BookTopicEnterRecord;
import com.ushaqi.zhuishushenqi.model.TopicCount;

final class bq extends b
{
  private bq(ReaderActivity paramReaderActivity)
  {
  }

  protected final void a(TopicCount paramTopicCount)
  {
    ReaderActivity.i(this.a, paramTopicCount.getCount());
    ReaderActivity.j(this.a, ReaderActivity.af(this.a) - BookTopicEnterRecord.get(ReaderActivity.M(this.a)).getVisitCount());
    if (ReaderActivity.d(this.a) > 0)
    {
      ReaderActivity.A(this.a).f(true);
      return;
    }
    ReaderActivity.A(this.a).f(false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bq
 * JD-Core Version:    0.6.0
 */