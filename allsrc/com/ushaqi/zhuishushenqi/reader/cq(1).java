package com.ushaqi.zhuishushenqi.reader;

final class cq
  implements Runnable
{
  cq(ReaderViewPager paramReaderViewPager)
  {
  }

  public final void run()
  {
    ReaderViewPager.a(this.a, 0);
    this.a.b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cq
 * JD-Core Version:    0.6.0
 */