package com.ushaqi.zhuishushenqi.ui.post;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

final class bd
  implements View.OnTouchListener
{
  bd(CommonPostListActivity paramCommonPostListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((this.a != null) && (this.a.isShowing()))
      this.a.dismiss();
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bd
 * JD-Core Version:    0.6.0
 */