package com.clilystudio.netbook.ui;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.webkit.WebView;

final class c
  implements View.OnKeyListener
{
  c(AdWebViewActivity paramAdWebViewActivity)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (AdWebViewActivity.e(this.a).canGoBack()))
    {
      AdWebViewActivity.e(this.a).goBack();
      return true;
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.c
 * JD-Core Version:    0.6.0
 */