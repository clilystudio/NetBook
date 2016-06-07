package com.ushaqi.zhuishushenqi.widget;

import android.view.View;
import android.view.View.OnClickListener;

final class aA
  implements View.OnClickListener
{
  aA(ShareWarningView paramShareWarningView)
  {
  }

  public final void onClick(View paramView)
  {
    if (ShareWarningView.a(this.a) != null)
      ShareWarningView.a(this.a).a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.aA
 * JD-Core Version:    0.6.0
 */