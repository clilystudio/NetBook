package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.a_packA.b;
import com.clilystudio.app.netbook.db.BookTopicEnterRecord;
import com.clilystudio.app.netbook.model.TopicCount;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bq
 * JD-Core Version:    0.6.2
 */