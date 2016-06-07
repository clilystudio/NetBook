package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;

final class cA
  implements View.OnClickListener
{
  cA(ReaderWebActionBar paramReaderWebActionBar)
  {
  }

  public final void onClick(View paramView)
  {
    ReaderWebActionBar.a(this.a, paramView.getId());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cA
 * JD-Core Version:    0.6.0
 */