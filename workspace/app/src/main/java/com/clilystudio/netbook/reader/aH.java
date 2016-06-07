package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.model.ChapterLink;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.aH
 * JD-Core Version:    0.6.0
 */