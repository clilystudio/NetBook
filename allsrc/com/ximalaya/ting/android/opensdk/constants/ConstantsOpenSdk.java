package com.ximalaya.ting.android.opensdk.constants;

import android.os.Environment;

public class ConstantsOpenSdk
{
  public static final String ADS_DIR;
  public static final String APP_BASE_DIR;
  public static String OPEN_APP_ACTION = "iting://open";
  public static final boolean isDebug = true;
  public static final boolean isRelease;

  static
  {
    APP_BASE_DIR = Environment.getExternalStorageDirectory() + "/ting";
    ADS_DIR = APP_BASE_DIR + "/ads";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.constants.ConstantsOpenSdk
 * JD-Core Version:    0.6.0
 */