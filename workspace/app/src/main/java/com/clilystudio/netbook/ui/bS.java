package com.clilystudio.netbook.ui;

import android.widget.ListView;

final class bS
  implements Runnable
{
  bS(bR parambR)
  {
  }

  public final void run()
  {
    if (SearchActivity.a(this.a.a) != null)
    {
      SearchActivity.a(this.a.a).setSelectionAfterHeaderView();
      SearchActivity.a(this.a.a).setSelection(0);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bS
 * JD-Core Version:    0.6.0
 */