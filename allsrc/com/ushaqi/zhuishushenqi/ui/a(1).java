package com.ushaqi.zhuishushenqi.ui;

import android.webkit.DownloadListener;

final class a
  implements DownloadListener
{
  a(AdWebViewActivity paramAdWebViewActivity)
  {
  }

  public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    if (AdWebViewActivity.a(this.a) != null)
    {
      AdWebViewActivity.a(this.a, paramString1);
      return;
    }
    AdWebViewActivity.b(this.a, paramString1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.a
 * JD-Core Version:    0.6.0
 */