package com.iflytek.speech;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.HashMap;

public class UtilityConfig
{
  public static final String ACTION_SPEAKER_VERIFIER = "com.iflytek.vflynote.speakerverify";
  public static final String ACTION_SPEECH_RECOGNIZER = "com.iflytek.vflynote.recognize";
  public static final String ACTION_SPEECH_SYNTHESIZER = "com.iflytek.vflynote.synthesize";
  public static final String ACTION_SPEECH_UNDERSTANDER = "com.iflytek.vflynote.speechunderstand";
  public static final String ACTION_SPEECH_WAKEUP = "com.iflytek.vflynote.wakeup";
  public static final String ACTION_TEXT_UNDERSTANDER = "com.iflytek.vflynote.textunderstand";
  public static final String CHANNEL_ID = "16010000";
  public static final String CHANNEL_NAME = "dev.voicecloud";
  public static final String COMPONENT_PKG = "com.iflytek.vflynote";
  public static final String COMPONENT_URL = "http://iss.openspeech.cn/v?";
  public static final String KEY_CALLER_APPID = "caller.appid";
  public static final String KEY_CALLER_NAME = "caller.name";
  public static final String KEY_CALLER_PKG_NAME = "caller.pkg";
  public static final String KEY_CALLER_VER_CODE = "caller.ver.code";
  public static final String KEY_CALLER_VER_NAME = "caller.ver.name";
  public static final String KEY_CHANNEL_ID = "channel.id";
  public static final String KEY_CHANNEL_NAME = "channel.name";
  public static final String KEY_REQUEST_PACKAGE = "request.package";
  public static final String METADATA_KEY_ENGINE_TYPE = "enginetype";
  public static final String SDK_VER_NAME = "sdk.ver.name";
  public static final String SETTINGS_ACTION_ASR = "com.iflytek.vflynote.settings.asr";
  public static final String SETTINGS_ACTION_MAIN = "com.iflytek.vflynote.settings.main";
  public static final String SETTINGS_ACTION_TTS = "com.iflytek.vflynote.activity.speaker.SpeakerSetting";
  private static HashMap<String, String> callerHashMap = new HashMap();

  public static void appendHttpParam(StringBuffer paramStringBuffer, String paramString1, String paramString2)
  {
    if ((paramStringBuffer != null) && (paramString1 != null) && (paramString2 != null) && (paramString2.length() > 0))
    {
      paramStringBuffer.append('&');
      paramStringBuffer.append(paramString1);
      paramStringBuffer.append('=');
      paramStringBuffer.append(paramString2);
    }
  }

  public static String getCallerInfo(Context paramContext, String paramString)
  {
    if (callerHashMap.containsKey(paramString))
      return (String)callerHashMap.get(paramString);
    try
    {
      String str = paramContext.getPackageName();
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(str, 0);
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(str, 0);
      callerHashMap.put("caller.name", localApplicationInfo.loadLabel(paramContext.getPackageManager()).toString());
      callerHashMap.put("caller.pkg", localApplicationInfo.packageName);
      callerHashMap.put("caller.ver.name", localPackageInfo.versionName);
      callerHashMap.put("caller.ver.code", String.valueOf(localPackageInfo.versionCode));
      return (String)callerHashMap.get(paramString);
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static String getComponentUrlParam(Context paramContext)
  {
    String str1 = getCallerInfo(paramContext, "caller.name");
    String str2 = getCallerInfo(paramContext, "caller.pkg");
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("channel.id");
    localStringBuffer.append('=');
    localStringBuffer.append("16010000");
    appendHttpParam(localStringBuffer, "sdk.ver.name", Version.getVersionName());
    appendHttpParam(localStringBuffer, "caller.name", str1);
    appendHttpParam(localStringBuffer, "caller.pkg", str2);
    return localStringBuffer.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.UtilityConfig
 * JD-Core Version:    0.6.0
 */