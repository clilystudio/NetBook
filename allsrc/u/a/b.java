package u.a;

import android.util.Log;

public final class b
{
  public static boolean a = false;

  public static void a(String paramString1, String paramString2)
  {
    if (a)
      Log.i(paramString1, paramString2);
  }

  public static void a(String paramString1, String paramString2, Exception paramException)
  {
    if (a)
      Log.i(paramString1, paramException.toString() + ":  [" + paramString2 + "]");
  }

  public static void b(String paramString1, String paramString2)
  {
    if (a)
      Log.e(paramString1, paramString2);
  }

  public static void b(String paramString1, String paramString2, Exception paramException)
  {
    StackTraceElement[] arrayOfStackTraceElement;
    int i;
    if (a)
    {
      Log.e(paramString1, paramException.toString() + ":  [" + paramString2 + "]");
      arrayOfStackTraceElement = paramException.getStackTrace();
      i = arrayOfStackTraceElement.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
      Log.e(paramString1, "        at\t " + localStackTraceElement.toString());
    }
  }

  public static void c(String paramString1, String paramString2)
  {
    if (a)
      Log.d(paramString1, paramString2);
  }

  public static void c(String paramString1, String paramString2, Exception paramException)
  {
    if (a)
      Log.d(paramString1, paramException.toString() + ":  [" + paramString2 + "]");
  }

  public static void d(String paramString1, String paramString2)
  {
    if (a)
      Log.w(paramString1, paramString2);
  }

  public static void d(String paramString1, String paramString2, Exception paramException)
  {
    StackTraceElement[] arrayOfStackTraceElement;
    int i;
    if (a)
    {
      Log.w(paramString1, paramException.toString() + ":  [" + paramString2 + "]");
      arrayOfStackTraceElement = paramException.getStackTrace();
      i = arrayOfStackTraceElement.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
      Log.w(paramString1, "        at\t " + localStackTraceElement.toString());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.a.b
 * JD-Core Version:    0.6.0
 */