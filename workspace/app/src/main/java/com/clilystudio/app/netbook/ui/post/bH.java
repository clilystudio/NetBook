package com.clilystudio.app.netbook.ui.post;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

final class bH
  implements View.OnTouchListener
{
  bH(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((this.a != null) && (this.a.isShowing()))
      this.a.dismiss();
    return true;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bH
 * JD-Core Version:    0.6.2
 */