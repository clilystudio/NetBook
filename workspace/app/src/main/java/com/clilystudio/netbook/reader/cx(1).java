package com.clilystudio.netbook.reader;

import android.database.DataSetObserver;

final class cx extends DataSetObserver
{
  private cx(ReaderViewPager paramReaderViewPager)
  {
  }

  public final void onChanged()
  {
    this.a.a();
  }

  public final void onInvalidated()
  {
    this.a.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cx
 * JD-Core Version:    0.6.0
 */