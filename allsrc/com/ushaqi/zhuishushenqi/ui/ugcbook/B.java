package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.widget.ListView;

final class B
  implements Runnable
{
  B(A paramA)
  {
  }

  public final void run()
  {
    if (UGCGuideAddBookActivity.d(this.a.a) != null)
      UGCGuideAddBookActivity.d(this.a.a).setSelection(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.B
 * JD-Core Version:    0.6.0
 */