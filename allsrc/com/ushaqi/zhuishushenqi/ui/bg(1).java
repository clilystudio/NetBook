package com.ushaqi.zhuishushenqi.ui;

import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

final class bg extends WebChromeClient
{
  bg(LuckyGameWebActivity paramLuckyGameWebActivity)
  {
  }

  public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    Log.i(LuckyGameWebActivity.b(), paramConsoleMessage.message().toString());
    return super.onConsoleMessage(paramConsoleMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bg
 * JD-Core Version:    0.6.0
 */