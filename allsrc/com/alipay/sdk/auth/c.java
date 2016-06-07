package com.alipay.sdk.auth;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;

final class c
  implements DownloadListener
{
  c(AuthActivity paramAuthActivity)
  {
  }

  public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.auth.c
 * JD-Core Version:    0.6.0
 */