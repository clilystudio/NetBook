package com.clilystudio.app.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;

final class bU
  implements View.OnClickListener
{
  bU(ReaderResourceFragment paramReaderResourceFragment)
  {
  }

  public final void onClick(View paramView)
  {
    ReaderResourceFragment.a(this.a, 0);
    bY localbY = new bY(this.a, (byte)0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ReaderResourceFragment.a(this.a);
    localbY.b(arrayOfString);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bU
 * JD-Core Version:    0.6.2
 */