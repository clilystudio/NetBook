package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.cd;
import com.clilystudio.netbook.reader.o;

final class L
  implements cd
{
  L(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void a()
  {
    for (o localo : ReaderTxtActivity.d(this.a))
    {
      if (localo == null)
        continue;
      localo.c();
    }
    ReaderTxtActivity.q(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.txt.L
 * JD-Core Version:    0.6.0
 */