package com.ushaqi.zhuishushenqi.reader;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.W
 * JD-Core Version:    0.6.0
 */