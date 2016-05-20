package com.clilystudio.app.netbook.reader;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.de
 * JD-Core Version:    0.6.2
 */