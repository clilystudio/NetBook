package com.clilystudio.app.netbook.ui.post;

import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.PopupWindow.OnDismissListener;

final class de
  implements PopupWindow.OnDismissListener
{
  de(ReviewListActivity paramReviewListActivity)
  {
  }

  public final void onDismiss()
  {
    ReviewListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    ReviewListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    ReviewListActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.de
 * JD-Core Version:    0.6.2
 */