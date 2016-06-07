package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class dh
  implements View.OnClickListener
{
  dh(ReviewListActivity paramReviewListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ReviewListActivity.a(this.a, 2).showAsDropDown(paramView, 0, 1);
    ReviewListActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dh
 * JD-Core Version:    0.6.0
 */