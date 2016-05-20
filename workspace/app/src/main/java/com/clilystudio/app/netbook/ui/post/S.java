package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;

final class S
  implements View.OnClickListener
{
  S(AddVoteItemActivity paramAddVoteItemActivity)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    AddVoteItemActivity.a(this.a, AddVoteItemActivity.d(this.a)[i], i);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.S
 * JD-Core Version:    0.6.2
 */