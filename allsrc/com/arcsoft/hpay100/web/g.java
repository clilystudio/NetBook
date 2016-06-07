package com.arcsoft.hpay100.web;

import android.view.View;
import android.view.View.OnClickListener;

final class g
  implements View.OnClickListener
{
  g(HPayWebActivity paramHPayWebActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (HPayWebActivity.e(this.a) != null)
    {
      HPayWebActivity.e(this.a).stopLoading();
      HPayWebActivity.e(this.a).reload();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.web.g
 * JD-Core Version:    0.6.0
 */