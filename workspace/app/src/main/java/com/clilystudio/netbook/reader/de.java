package com.clilystudio.netbook.reader;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.webkit.WebView;

final class de
  implements View.OnKeyListener
{
  de(WebPageFragment paramWebPageFragment)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (WebPageFragment.d(this.a).canGoBack()))
    {
      WebPageFragment.d(this.a).goBack();
      return true;
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.de
 * JD-Core Version:    0.6.0
 */