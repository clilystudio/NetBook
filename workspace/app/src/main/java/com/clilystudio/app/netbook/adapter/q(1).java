package com.clilystudio.app.netbook.adapter;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class q
  implements CompoundButton.OnCheckedChangeListener
{
  q(HomeShelfAdapter paramHomeShelfAdapter, int paramInt)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (HomeShelfAdapter.a(this.b))
      return;
    HomeShelfAdapter.b(this.b)[this.a] = paramBoolean;
    HomeShelfAdapter.a(this.b, this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.q
 * JD-Core Version:    0.6.2
 */