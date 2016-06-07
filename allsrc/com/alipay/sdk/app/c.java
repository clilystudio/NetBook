package com.alipay.sdk.app;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;

final class c
  implements DownloadListener
{
  c(H5AuthActivity paramH5AuthActivity)
  {
  }

  public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.app.c
 * JD-Core Version:    0.6.0
 */