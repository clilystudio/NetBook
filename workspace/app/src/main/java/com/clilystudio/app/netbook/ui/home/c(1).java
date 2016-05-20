package com.clilystudio.app.netbook.ui.home;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

final class c
  implements View.OnKeyListener
{
  c(HomeActivity paramHomeActivity)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramInt == 82) && (paramKeyEvent.getRepeatCount() == 0))
    {
      HomeActivity.d(this.a);
      return true;
    }
    return false;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.c
 * JD-Core Version:    0.6.2
 */