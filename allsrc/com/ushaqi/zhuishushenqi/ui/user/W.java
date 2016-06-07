package com.ushaqi.zhuishushenqi.ui.user;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;

final class W
  implements View.OnClickListener
{
  W(S paramS, int paramInt, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    boolean[] arrayOfBoolean = S.a(this.b);
    int i = this.a;
    if (S.a(this.b)[this.a] == 0);
    for (int j = 1; ; j = 0)
    {
      arrayOfBoolean[i] = j;
      this.b.notifyDataSetChanged();
      if (S.a(this.b)[this.a] != 0)
        new Handler().postDelayed(new X(this), 50L);
      this.c.dismiss();
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.W
 * JD-Core Version:    0.6.0
 */