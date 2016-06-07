package com.iflytek.cloud;

import android.os.Environment;
import java.io.File;

public class Setting
{
  public static final String a = Environment.getExternalStorageDirectory().getPath() + "/msc/msc.log";
  private static Setting.LOG_LEVEL b = Setting.LOG_LEVEL.none;
  private static String c = a;
  private static boolean d = true;
  private static boolean e = false;
  private static boolean f = true;

  public static boolean getLocationEnable()
  {
    return f;
  }

  public static Setting.LOG_LEVEL getLogLevel()
  {
    return b;
  }

  public static String getLogPath()
  {
    return c;
  }

  public static boolean getSaveTestLog()
  {
    return e;
  }

  public static boolean getShowLog()
  {
    return d;
  }

  public static void setLocationEnable(boolean paramBoolean)
  {
    f = paramBoolean;
  }

  public static void setLogLevel(Setting.LOG_LEVEL paramLOG_LEVEL)
  {
    b = paramLOG_LEVEL;
  }

  public static void setLogPath(String paramString)
  {
    c = paramString;
  }

  public static void setSaveTestLog(boolean paramBoolean)
  {
    e = paramBoolean;
  }

  public static void setShowLog(boolean paramBoolean)
  {
    d = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.Setting
 * JD-Core Version:    0.6.0
 */