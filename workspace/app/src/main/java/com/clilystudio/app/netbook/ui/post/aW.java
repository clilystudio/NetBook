package com.clilystudio.app.netbook.ui.post;

import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.PopupWindow.OnDismissListener;

final class aW
  implements PopupWindow.OnDismissListener
{
  aW(CommonPostListActivity paramCommonPostListActivity)
  {
  }

  public final void onDismiss()
  {
    CommonPostListActivity.l(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    CommonPostListActivity.m(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aW
 * JD-Core Version:    0.6.2
 */