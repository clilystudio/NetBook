package com.clilystudio.app.netbook.ui.post;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class cU
  implements View.OnClickListener
{
  cU(ReviewListActivity paramReviewListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ReviewListActivity.a(this.a, 0).showAsDropDown(paramView, 0, 1);
    ReviewListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cU
 * JD-Core Version:    0.6.2
 */