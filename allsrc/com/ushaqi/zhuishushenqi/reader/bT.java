package com.ushaqi.zhuishushenqi.reader;

import android.view.View;
import com.ushaqi.zhuishushenqi.a.b;
import com.ushaqi.zhuishushenqi.db.BookTopicEnterRecord;
import com.ushaqi.zhuishushenqi.model.TopicCount;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bT
 * JD-Core Version:    0.6.0
 */