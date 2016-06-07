package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class t
  implements TextView.OnEditorActionListener
{
  t(UGCGuideAddBookActivity paramUGCGuideAddBookActivity)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    UGCGuideAddBookActivity.b(this.a, true);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.t
 * JD-Core Version:    0.6.0
 */