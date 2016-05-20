package com.clilystudio.app.netbook.ui.ugcbook;

import android.view.inputmethod.InputMethodManager;

final class L
  implements Runnable
{
  L(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity)
  {
  }

  public final void run()
  {
    ((InputMethodManager)this.a.getSystemService("input_method")).toggleSoftInput(0, 2);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.L
 * JD-Core Version:    0.6.2
 */