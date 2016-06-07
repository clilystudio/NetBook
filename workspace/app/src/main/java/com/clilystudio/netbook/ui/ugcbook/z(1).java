package com.clilystudio.netbook.ui.ugcbook;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.z
 * JD-Core Version:    0.6.0
 */