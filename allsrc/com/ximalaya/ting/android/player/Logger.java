package com.ximalaya.ting.android.player;

import android.os.Environment;
import android.os.Process;
import android.util.Log;
import java.io.File;

public class Logger
{
  public static final String JSON_ERROR = "解析json异常";
  private static final int LOG_LEVEL;

  public static void d(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 3)))
      Log.d(paramString1, paramString2);
  }

  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 3)))
      Log.d(paramString1, paramString2, paramThrowable);
  }

  public static void e(Exception paramException)
  {
    e("解析json异常", "解析json异常" + paramException.getMessage() + getLineInfo());
  }

  public static void e(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 6)))
      Log.e(paramString1, paramString2);
  }

  public static void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 6)))
      Log.e(paramString1, paramString2, paramThrowable);
  }

  public static String getLineInfo()
  {
    if (XMediaPlayerConstants.isDebug)
    {
      StackTraceElement localStackTraceElement = new Throwable().getStackTrace()[1];
      return "@" + localStackTraceElement.getFileName() + ": Line " + localStackTraceElement.getLineNumber();
    }
    return "";
  }

  public static File getLogFilePath()
  {
    File localFile;
    if (!Environment.getExternalStorageState().equals("mounted"))
      localFile = null;
    do
    {
      return localFile;
      localFile = new File("/sdcard/ting/errorLog/infor.log");
      if (localFile.getParentFile().getParentFile().exists())
        continue;
      localFile.getParentFile().getParentFile().mkdir();
    }
    while (localFile.getParentFile().exists());
    localFile.getParentFile().mkdir();
    return localFile;
  }

  public static void i(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 4)))
      Log.i(paramString1, paramString2);
  }

  public static void i(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 4)))
      Log.i(paramString1, paramString2, paramThrowable);
  }

  public static boolean isLoggable(String paramString, int paramInt)
  {
    if (!XMediaPlayerConstants.isDebug);
    do
      return false;
    while (paramInt < 0);
    return true;
  }

  public static void log(Object paramObject)
  {
    if (XMediaPlayerConstants.isDebug)
      Log.i("ting", String.valueOf(paramObject));
  }

  public static void log(String paramString, Object paramObject)
  {
    if ((XMediaPlayerConstants.isDebug) && (paramObject != null) && (!paramString.equals("dl_mp3")))
      Log.i(paramString, "JTid(" + Long.toString(Thread.currentThread().getId()) + ")STid(" + Process.myTid() + ")SPid(" + Process.myPid() + ")" + paramObject);
  }

  // ERROR //
  public static void logToSd(String paramString)
  {
    // Byte code:
    //   0: getstatic 64	com/ximalaya/ting/android/player/XMediaPlayerConstants:isDebug	Z
    //   3: ifeq +11 -> 14
    //   6: invokestatic 172	com/ximalaya/ting/android/player/Logger:getLogFilePath	()Ljava/io/File;
    //   9: astore_1
    //   10: aload_1
    //   11: ifnonnull +4 -> 15
    //   14: return
    //   15: aconst_null
    //   16: astore_2
    //   17: new 174	java/io/PrintWriter
    //   20: dup
    //   21: new 176	java/io/FileWriter
    //   24: dup
    //   25: aload_1
    //   26: iconst_1
    //   27: invokespecial 179	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   30: invokespecial 182	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   33: astore_3
    //   34: aload_3
    //   35: aload_0
    //   36: invokevirtual 185	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   39: aload_3
    //   40: invokevirtual 188	java/io/PrintWriter:close	()V
    //   43: return
    //   44: astore 7
    //   46: aconst_null
    //   47: astore_3
    //   48: aload_3
    //   49: ifnull -35 -> 14
    //   52: goto -13 -> 39
    //   55: astore 6
    //   57: aload_2
    //   58: ifnull +7 -> 65
    //   61: aload_2
    //   62: invokevirtual 188	java/io/PrintWriter:close	()V
    //   65: aload 6
    //   67: athrow
    //   68: astore 5
    //   70: aload_3
    //   71: astore_2
    //   72: aload 5
    //   74: astore 6
    //   76: goto -19 -> 57
    //   79: astore 4
    //   81: goto -33 -> 48
    //
    // Exception table:
    //   from	to	target	type
    //   17	34	44	java/lang/Throwable
    //   17	34	55	finally
    //   34	39	68	finally
    //   34	39	79	java/lang/Throwable
  }

  public static void throwRuntimeException(Object paramObject)
  {
    if (XMediaPlayerConstants.isDebug)
      throw new RuntimeException("出现异常：" + paramObject);
  }

  public static void v(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 2)))
      Log.v(paramString1, paramString2);
  }

  public static void v(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 2)))
      Log.v(paramString1, paramString2, paramThrowable);
  }

  public static void w(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 5)))
      Log.w(paramString1, paramString2);
  }

  public static void w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 5)))
      Log.w(paramString1, paramString2, paramThrowable);
  }

  public static void w(String paramString, Throwable paramThrowable)
  {
    if ((paramThrowable != null) && (isLoggable(paramString, 5)))
      Log.w(paramString, paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.Logger
 * JD-Core Version:    0.6.0
 */