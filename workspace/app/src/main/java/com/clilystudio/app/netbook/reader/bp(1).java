package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ChapterKeysRoot;

final class bp extends e<Void, Void, ChapterKeysRoot>
{
  private bp(ReaderActivity paramReaderActivity)
  {
  }

  private ChapterKeysRoot a()
  {
    try
    {
      b.a();
      ChapterKeysRoot localChapterKeysRoot = b.b().g(am_CommonUtils.e().getToken(), ReaderActivity.M(this.a));
      return localChapterKeysRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bp
 * JD-Core Version:    0.6.2
 */