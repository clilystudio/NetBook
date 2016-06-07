package com.clilystudio.netbook.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class bF
  implements View.OnTouchListener
{
  bF(SearchActivity paramSearchActivity)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    SearchActivity.c(this.a);
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bF
 * JD-Core Version:    0.6.0
 */