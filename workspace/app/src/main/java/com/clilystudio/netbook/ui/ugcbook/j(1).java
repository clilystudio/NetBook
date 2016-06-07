package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.TextView;

final class j
  implements View.OnClickListener
{
  j(UGCDetailActivity paramUGCDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    UGCDetailActivity.d(this.a).setMaxLines(2147483647);
    UGCDetailActivity.d(this.a).setEllipsize(null);
    UGCDetailActivity.e(this.a).setVisibility(8);
    UGCDetailActivity.d(this.a).setClickable(false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.j
 * JD-Core Version:    0.6.0
 */