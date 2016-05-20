package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.model.ChapterLink;

final class aH
  implements af
{
  aH(ReaderActivity paramReaderActivity, int paramInt)
  {
  }

  public final void a()
  {
    ReaderActivity.P(this.b);
    ChapterLink[] arrayOfChapterLink = ReaderActivity.Y(this.b).d();
    if (arrayOfChapterLink != null)
    {
      if (this.a < arrayOfChapterLink.length)
        ReaderActivity.h(this.b, arrayOfChapterLink.length);
    }
    else
      return;
    this.b.h_();
  }

  public final void b()
  {
    ReaderActivity.P(this.b);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.aH
 * JD-Core Version:    0.6.2
 */