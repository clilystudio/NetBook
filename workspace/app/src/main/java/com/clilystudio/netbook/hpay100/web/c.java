package com.clilystudio.netbook.hpay100.web;

import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

final class c
  implements m
{
  c(HPayWebActivity paramHPayWebActivity)
  {
  }

  public final void a(int paramInt, Object paramObject)
  {
    switch (paramInt)
    {
    case 1:
    case 2:
    case 3:
    default:
    case 0:
    case 4:
    case 6:
    case 5:
    }
    do
    {
      do
      {
        return;
        HPayWebActivity.a(this.a).setVisibility(0);
        return;
      }
      while (paramObject == null);
      HPayWebActivity.b(this.a).setText((String)paramObject);
      return;
      HPayWebActivity.a(this.a).setVisibility(8);
      return;
    }
    while (paramObject == null);
    int i = ((Integer)paramObject).intValue();
    if (i == 100)
    {
      HPayWebActivity.c(this.a).setVisibility(4);
      return;
    }
    if (HPayWebActivity.c(this.a).getVisibility() == 4)
      HPayWebActivity.c(this.a).setVisibility(0);
    HPayWebActivity.c(this.a).setProgress(i);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.web.c
 * JD-Core Version:    0.6.0
 */