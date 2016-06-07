package com.ushaqi.zhuishushenqi.reader.txt;

import com.ushaqi.zhuishushenqi.reader.ce;
import com.ushaqi.zhuishushenqi.reader.o;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.txt.J
 * JD-Core Version:    0.6.0
 */