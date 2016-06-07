package com.ushaqi.zhuishushenqi.reader;

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
    bY localbY = new bY(this.a, 0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ReaderResourceFragment.a(this.a);
    localbY.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bU
 * JD-Core Version:    0.6.0
 */