package com.ushaqi.zhuishushenqi.reader.random;

import com.ushaqi.zhuishushenqi.reader.ce;
import com.ushaqi.zhuishushenqi.reader.o;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.random.I
 * JD-Core Version:    0.6.0
 */