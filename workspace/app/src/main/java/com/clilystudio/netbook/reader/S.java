package com.clilystudio.netbook.reader;

import java.util.ArrayList;
import java.util.Iterator;

final class S
  implements Runnable
{
  S(Reader paramReader)
  {
  }

  public final void run()
  {
    Iterator localIterator = Reader.c(this.a).iterator();
    while (localIterator.hasNext())
      ((ae)localIterator.next()).b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.S
 * JD-Core Version:    0.6.0
 */