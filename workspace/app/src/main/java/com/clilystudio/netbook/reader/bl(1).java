package com.clilystudio.netbook.reader;

final class bl
  implements ce
{
  bl(ReaderActivity paramReaderActivity)
  {
  }

  public final void a()
  {
    for (o localo : ReaderActivity.i(this.a))
    {
      if (localo == null)
        continue;
      localo.b();
    }
    ReaderActivity.u(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.bl
 * JD-Core Version:    0.6.0
 */