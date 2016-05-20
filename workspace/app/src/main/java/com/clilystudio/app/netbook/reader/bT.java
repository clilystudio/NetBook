package com.clilystudio.app.netbook.reader;

import android.view.View;
import com.clilystudio.app.netbook.a.b;
import com.clilystudio.app.netbook.db.BookTopicEnterRecord;
import com.clilystudio.app.netbook.model.TopicCount;

final class bT extends b
{
  private bT(ReaderResActivity paramReaderResActivity)
  {
  }

  protected final void a(TopicCount paramTopicCount)
  {
    ReaderResActivity.a(this.a, paramTopicCount.getCount());
    if (Math.max(0, ReaderResActivity.a(this.a) - BookTopicEnterRecord.get(this.a.b).getVisitCount()) == 0)
    {
      ReaderResActivity.b(this.a).setVisibility(4);
      return;
    }
    ReaderResActivity.b(this.a).setVisibility(0);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bT
 * JD-Core Version:    0.6.2
 */