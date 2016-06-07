package com.clilystudio.netbook.widget;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.text.StaticLayout;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

final class ai
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ai(MenuGameTitle paramMenuGameTitle, String paramString1, String paramString2)
  {
  }

  @TargetApi(16)
  public final void onGlobalLayout()
  {
    int i = 1;
    int j;
    int k;
    label63: ViewTreeObserver localViewTreeObserver;
    if (StaticLayout.getDesiredWidth(this.a, this.c.mSlmReaderAppName.getPaint()) + StaticLayout.getDesiredWidth(this.b, this.c.mSlmReaderAppSize.getPaint()) > this.c.getMeasuredWidth())
    {
      j = i;
      MenuGameTitle localMenuGameTitle = this.c;
      if (j == 0)
        break label173;
      k = i;
      localMenuGameTitle.setOrientation(k);
      if (j != 0)
      {
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
        localLayoutParams.topMargin = (int)MenuGameTitle.a(this.c, 3);
        this.c.mSlmReaderAppSize.setLayoutParams(localLayoutParams);
      }
      this.c.mSlmReaderAppName.setText(this.a);
      this.c.mSlmReaderAppSize.setText(this.b);
      localViewTreeObserver = this.c.getViewTreeObserver();
      if (Build.VERSION.SDK_INT < 16)
        break label179;
    }
    while (true)
    {
      if (i == 0)
        break label184;
      localViewTreeObserver.removeOnGlobalLayoutListener(this);
      return;
      j = 0;
      break;
      label173: k = 0;
      break label63;
      label179: i = 0;
    }
    label184: localViewTreeObserver.removeGlobalOnLayoutListener(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.ai
 * JD-Core Version:    0.6.0
 */