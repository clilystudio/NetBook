package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

final class aD
  implements View.OnClickListener
{
  aD(aC paramaC)
  {
  }

  public final void onClick(View paramView)
  {
    if (BookInfoActivity.c(this.a.b))
    {
      this.a.a.setMaxLines(4);
      BookInfoActivity.b(this.a.b, false);
      return;
    }
    this.a.a.setMaxLines(2147483647);
    BookInfoActivity.b(this.a.b, true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.aD
 * JD-Core Version:    0.6.0
 */