package com.clilystudio.app.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;

final class ah
  implements View.OnClickListener
{
  ah(ReaderActionBar paramReaderActionBar)
  {
  }

  public final void onClick(View paramView)
  {
    ReaderActionBar.a(this.a, paramView.getId());
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ah
 * JD-Core Version:    0.6.2
 */