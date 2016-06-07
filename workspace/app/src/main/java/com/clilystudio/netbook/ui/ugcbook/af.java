package com.clilystudio.netbook.ui.ugcbook;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

final class af
  implements View.OnKeyListener
{
  af(UGCMainActivity paramUGCMainActivity)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramInt == 82) && (paramKeyEvent.getRepeatCount() == 0))
    {
      UGCMainActivity.h(this.a);
      return true;
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.af
 * JD-Core Version:    0.6.0
 */