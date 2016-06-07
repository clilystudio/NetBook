package com.clilystudio.netbook.ui.post;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.S
 * JD-Core Version:    0.6.0
 */