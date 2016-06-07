package com.clilystudio.netbook.ui;

import android.webkit.WebView;

final class cz
  implements Runnable
{
  cz(cw paramcw, String paramString)
  {
  }

  public final void run()
  {
    cw.c(this.b).loadUrl("javascript:ZssqJsApiOnShared('" + this.a + "')");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.cz
 * JD-Core Version:    0.6.0
 */