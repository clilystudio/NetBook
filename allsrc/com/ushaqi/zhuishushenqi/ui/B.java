package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

final class B
  implements View.OnClickListener
{
  B(A paramA)
  {
  }

  public final void onClick(View paramView)
  {
    if (AudiobookInfoActivity.b(this.a.b))
    {
      this.a.a.setMaxLines(4);
      AudiobookInfoActivity.a(this.a.b, false);
      return;
    }
    this.a.a.setMaxLines(2147483647);
    AudiobookInfoActivity.a(this.a.b, true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.B
 * JD-Core Version:    0.6.0
 */