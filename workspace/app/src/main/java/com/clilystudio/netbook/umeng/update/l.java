package com.clilystudio.netbook.umeng.update;

import android.view.View;
import android.view.View.OnClickListener;

final class l
  implements View.OnClickListener
{
  l(UpdateDialogActivity paramUpdateDialogActivity, int paramInt1, int paramInt2)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.b == paramView.getId())
      this.a.a = 5;
    while (true)
    {
      this.a.finish();
      return;
      if (this.c == paramView.getId())
      {
        this.a.a = 7;
        continue;
      }
      if (!this.a.b)
        continue;
      this.a.a = 7;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.l
 * JD-Core Version:    0.6.0
 */