package com.mob.tools.log;

import android.content.Context;
import android.util.Log;
import java.util.HashMap;

public abstract class d
{
  private static HashMap<String, d> loggers = new HashMap();
  private static b printer = new b();

  static
  {
    c.a();
  }

  public d()
  {
    loggers.put(getSDKTag(), this);
    if (loggers.size() == 1)
      loggers.put("__FIRST__", this);
  }

  protected static final d getInstanceForSDK(String paramString, boolean paramBoolean)
  {
    Object localObject = (d)loggers.get(paramString);
    if (localObject == null)
      localObject = (d)loggers.get("__FIRST__");
    if ((localObject == null) && (paramBoolean))
      localObject = new e(paramString);
    return (d)localObject;
  }

  public static void setCollector(String paramString, a parama)
  {
    printer.a(paramString, parama);
  }

  public static void setContext(Context paramContext)
  {
    if (paramContext != null)
    {
      printer.a(paramContext);
      NativeErrorHandler.a(paramContext);
    }
  }

  public final int crash(Throwable paramThrowable)
  {
    return printer.a(getSDKTag(), 6, 1, Log.getStackTraceString(paramThrowable));
  }

  public final int d(Object paramObject, Object[] paramArrayOfObject)
  {
    String str = paramObject.toString();
    if (paramArrayOfObject.length > 0)
      str = String.format(str, paramArrayOfObject);
    return printer.a(getSDKTag(), 3, 0, str);
  }

  public final int d(Throwable paramThrowable)
  {
    return printer.a(getSDKTag(), 3, 0, Log.getStackTraceString(paramThrowable));
  }

  public final int d(Throwable paramThrowable, Object paramObject, Object[] paramArrayOfObject)
  {
    String str1 = paramObject.toString();
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramArrayOfObject.length > 0)
      str1 = String.format(str1, paramArrayOfObject);
    String str2 = str1 + '\n' + Log.getStackTraceString(paramThrowable);
    return printer.a(getSDKTag(), 3, 0, str2);
  }

  public final int e(Object paramObject, Object[] paramArrayOfObject)
  {
    String str = paramObject.toString();
    if (paramArrayOfObject.length > 0)
      str = String.format(str, paramArrayOfObject);
    return printer.a(getSDKTag(), 6, 0, str);
  }

  public final int e(Throwable paramThrowable)
  {
    return printer.a(getSDKTag(), 6, 0, Log.getStackTraceString(paramThrowable));
  }

  public final int e(Throwable paramThrowable, Object paramObject, Object[] paramArrayOfObject)
  {
    String str1 = paramObject.toString();
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramArrayOfObject.length > 0)
      str1 = String.format(str1, paramArrayOfObject);
    String str2 = str1 + '\n' + Log.getStackTraceString(paramThrowable);
    return printer.a(getSDKTag(), 6, 0, str2);
  }

  protected abstract String getSDKTag();

  public final int i(Object paramObject, Object[] paramArrayOfObject)
  {
    String str = paramObject.toString();
    if (paramArrayOfObject.length > 0)
      str = String.format(str, paramArrayOfObject);
    return printer.a(getSDKTag(), 4, 0, str);
  }

  public final int i(Throwable paramThrowable)
  {
    return printer.a(getSDKTag(), 4, 0, Log.getStackTraceString(paramThrowable));
  }

  public final int i(Throwable paramThrowable, Object paramObject, Object[] paramArrayOfObject)
  {
    String str1 = paramObject.toString();
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramArrayOfObject.length > 0)
      str1 = String.format(str1, paramArrayOfObject);
    String str2 = str1 + '\n' + Log.getStackTraceString(paramThrowable);
    return printer.a(getSDKTag(), 4, 0, str2);
  }

  public final void nativeCrashLog(String paramString)
  {
    printer.a(getSDKTag(), paramString);
  }

  public final int v(Object paramObject, Object[] paramArrayOfObject)
  {
    String str = paramObject.toString();
    if (paramArrayOfObject.length > 0)
      str = String.format(str, paramArrayOfObject);
    return printer.a(getSDKTag(), 2, 0, str);
  }

  public final int v(Throwable paramThrowable)
  {
    return printer.a(getSDKTag(), 2, 0, Log.getStackTraceString(paramThrowable));
  }

  public final int v(Throwable paramThrowable, Object paramObject, Object[] paramArrayOfObject)
  {
    String str1 = paramObject.toString();
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramArrayOfObject.length > 0)
      str1 = String.format(str1, paramArrayOfObject);
    String str2 = str1 + '\n' + Log.getStackTraceString(paramThrowable);
    return printer.a(getSDKTag(), 2, 0, str2);
  }

  public final int w(Object paramObject, Object[] paramArrayOfObject)
  {
    String str = paramObject.toString();
    if (paramArrayOfObject.length > 0)
      str = String.format(str, paramArrayOfObject);
    return printer.a(getSDKTag(), 5, 0, str);
  }

  public final int w(Throwable paramThrowable)
  {
    return printer.a(getSDKTag(), 5, 0, Log.getStackTraceString(paramThrowable));
  }

  public final int w(Throwable paramThrowable, Object paramObject, Object[] paramArrayOfObject)
  {
    String str1 = paramObject.toString();
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramArrayOfObject.length > 0)
      str1 = String.format(str1, paramArrayOfObject);
    String str2 = str1 + '\n' + Log.getStackTraceString(paramThrowable);
    return printer.a(getSDKTag(), 5, 0, str2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.log.d
 * JD-Core Version:    0.6.0
 */