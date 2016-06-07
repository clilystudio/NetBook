package com.iflytek.cloud;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class SpeechUtility$a extends BroadcastReceiver
{
  private SpeechUtility$a(SpeechUtility paramSpeechUtility)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    String str2 = paramIntent.getDataString();
    String str3 = String.valueOf("package:").concat("com.iflytek.vflynote");
    if ((("android.intent.action.PACKAGE_ADDED".equals(str1)) || ("android.intent.action.PACKAGE_REMOVED".equals(str1)) || ("android.intent.action.PACKAGE_REPLACED".equals(str1))) && (str3.equals(str2)) && (SpeechUtility.getUtility() != null))
      SpeechUtility.getUtility().checkServiceInstalled();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechUtility.a
 * JD-Core Version:    0.6.0
 */