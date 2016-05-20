package com.clilystudio.app.netbook.ui.ugcbook;

import android.view.View;
import android.view.View.OnClickListener;

final class z
  implements View.OnClickListener
{
  z(y paramy, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    UGCGuideAddBookActivity.a(this.b.a, this.a);
    this.b.notifyDataSetChanged();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.z
 * JD-Core Version:    0.6.2
 */