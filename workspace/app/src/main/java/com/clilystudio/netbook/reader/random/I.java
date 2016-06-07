package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.ce;
import com.clilystudio.netbook.reader.o;

final class I
  implements ce
{
  I(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void a()
  {
    for (o localo : ReaderRandomActivity.i(this.a))
    {
      if (localo == null)
        continue;
      localo.b();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.random.I
 * JD-Core Version:    0.6.0
 */