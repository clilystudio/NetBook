package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;

final class T
  implements View.OnClickListener
{
  T(AddVoteItemActivity paramAddVoteItemActivity)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    AddVoteItemActivity.a(this.a, i);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.T
 * JD-Core Version:    0.6.0
 */