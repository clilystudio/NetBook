package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.ce;
import com.clilystudio.netbook.reader.o;

final class J
  implements ce
{
  J(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void a()
  {
    for (o localo : ReaderTxtActivity.d(this.a))
    {
      if (localo == null)
        continue;
      localo.b();
    }
    ReaderTxtActivity.q(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.txt.J
 * JD-Core Version:    0.6.0
 */