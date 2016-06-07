package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View.OnLongClickListener;

final class bV
  implements View.OnLongClickListener
{
  bV(SettingsActivity paramSettingsActivity)
  {
  }

  public final boolean onLongClick(View paramView)
  {
    SettingsActivity.b(this.a);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bV
 * JD-Core Version:    0.6.0
 */