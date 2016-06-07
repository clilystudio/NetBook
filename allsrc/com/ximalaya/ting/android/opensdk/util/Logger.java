package com.ximalaya.ting.android.opensdk.util;

import android.os.Environment;
import android.util.Log;
import java.io.File;

public class Logger
{
  public static final String JSON_ERROR = "解析json异常";
  private static final int LOG_LEVEL;
  private static long nowTime = System.currentTimeMillis();

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
    StackTraceElement localStackTraceElement = new Throwable().getStackTrace()[1];
    return "@" + localStackTraceElement.getFileName() + ": Line " + localStackTraceElement.getLineNumber();
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
    return paramInt >= 0;
  }

  public static void log(Object paramObject)
  {
    Log.i("ting", String.valueOf(paramObject));
  }

  public static void log(String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((paramString2 != null) && (isLoggable(paramString1, 3)))
      Log.d(paramString1, paramString2);
  }

  public static void logFuncRunTime(String paramString)
  {
    log("time " + paramString + ":" + (System.currentTimeMillis() - nowTime));
    nowTime = System.currentTimeMillis();
  }

  // ERROR //
  public static void logToSd(String paramString)
  {
    // Byte code:
    //   0: invokestatic 149	com/ximalaya/ting/android/opensdk/util/Logger:getLogFilePath	()Ljava/io/File;
    //   3: astore_1
    //   4: aload_1
    //   5: ifnonnull +4 -> 9
    //   8: return
    //   9: aconst_null
    //   10: astore_2
    //   11: new 151	java/io/PrintWriter
    //   14: dup
    //   15: new 153	java/io/FileWriter
    //   18: dup
    //   19: aload_1
    //   20: iconst_1
    //   21: invokespecial 156	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   24: invokespecial 159	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   27: astore_3
    //   28: aload_3
    //   29: aload_0
    //   30: invokevirtual 162	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   33: aload_3
    //   34: invokevirtual 165	java/io/PrintWriter:close	()V
    //   37: return
    //   38: astore 7
    //   40: aconst_null
    //   41: astore_3
    //   42: aload_3
    //   43: ifnull -35 -> 8
    //   46: goto -13 -> 33
    //   49: astore 6
    //   51: aload_2
    //   52: ifnull +7 -> 59
    //   55: aload_2
    //   56: invokevirtual 165	java/io/PrintWriter:close	()V
    //   59: aload 6
    //   61: athrow
    //   62: astore 5
    //   64: aload_3
    //   65: astore_2
    //   66: aload 5
    //   68: astore 6
    //   70: goto -19 -> 51
    //   73: astore 4
    //   75: goto -33 -> 42
    //
    // Exception table:
    //   from	to	target	type
    //   11	28	38	java/lang/Throwable
    //   11	28	49	finally
    //   28	33	62	finally
    //   28	33	73	java/lang/Throwable
  }

  public static void throwRuntimeException(Object paramObject)
  {
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
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.Logger
 * JD-Core Version:    0.6.0
 */