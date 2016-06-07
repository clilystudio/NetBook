package com.maxthon.main;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class MgeProperties
{
  public static String KEY_HAS_SDK;
  public static String KEY_LAST_RESTARTUP_TIME;
  public static String KEY_SDK_JVERSION = "jv";
  private static MgeProperties mProperties;

  static
  {
    KEY_HAS_SDK = "hasSdk";
    KEY_LAST_RESTARTUP_TIME = "lastRestartupTime";
  }

  public static MgeProperties getInstance()
  {
    if (mProperties == null)
      mProperties = new MgeProperties();
    return mProperties;
  }

  public static SharedPreferences getMgeSharedPreferences(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.main.MgeProperties
 * JD-Core Version:    0.6.0
 */