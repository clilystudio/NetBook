package com.clilystudio.app.netbook.reader;

import java.util.Iterator;
import java.util.List;

final class W
  implements Runnable
{
  W(V paramV, List paramList, ReaderChapter paramReaderChapter)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((e)localIterator.next()).a(this.b);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.W
 * JD-Core Version:    0.6.2
 */