package com.clilystudio.netbook.ui.ugcbook;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.L
 * JD-Core Version:    0.6.0
 */