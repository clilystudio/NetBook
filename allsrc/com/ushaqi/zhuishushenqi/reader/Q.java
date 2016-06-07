package com.ushaqi.zhuishushenqi.reader;

import java.util.ArrayList;
import java.util.Iterator;

final class Q
  implements Runnable
{
  Q(Reader paramReader)
  {
  }

  public final void run()
  {
    Iterator localIterator = Reader.c(this.a).iterator();
    while (localIterator.hasNext())
      ((ae)localIterator.next()).a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.Q
 * JD-Core Version:    0.6.0
 */