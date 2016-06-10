package com.clilystudio.netbook.hpay100.c;

import android.app.Activity;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.clilystudio.netbook.hpay100.a_Pack.a;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class j
{
  static
  {
    new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'R', 'S', 'T', 'U', 'W', 'X', 'Y', 'Z' };
  }

  public static int a()
  {
    return Integer.parseInt(DateFormat.format("yyyyMMdd", new Date()).toString());
  }

  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return "";
    try
    {
      Matcher localMatcher = Pattern.compile("(?<=http://|\\.)[^.]*?\\.(com|cn|net|org|biz|info|cc|tv|top)", 2).matcher(paramString);
      localMatcher.find();
      String str2 = localMatcher.group();
      str1 = str2;
      a.b("dalongTest", "domain:" + str1);
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str1 = "";
        localException.printStackTrace();
      }
    }
  }

  public static void a(Activity paramActivity)
  {
    if (paramActivity == null);
    while (true)
    {
      return;
      try
      {
        View localView = paramActivity.getWindow().peekDecorView();
        if ((localView == null) || (localView.getWindowToken() == null))
          continue;
        ((InputMethodManager)paramActivity.getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
        return;
      }
      catch (Exception localException)
      {
      }
    }
  }

  public static void a(Activity paramActivity, int paramInt1, int paramInt2)
  {
    if (paramActivity == null);
    Method localMethod;
    do
    {
      return;
      localMethod = b();
    }
    while (localMethod == null);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    try
    {
      localMethod.invoke(paramActivity, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static String b(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    try
    {
      Matcher localMatcher = Pattern.compile("\\b((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\b").matcher(paramString);
      localMatcher.find();
      String str2 = localMatcher.group();
      str1 = str2;
      a.b("dalongTest", "ip:" + str1);
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        String str1 = null;
      }
    }
  }

  private static Method b()
  {
    try
    {
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = Integer.TYPE;
      Method localMethod = Activity.class.getMethod("overridePendingTransition", arrayOfClass);
      return localMethod;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.c.j
 * JD-Core Version:    0.6.0
 */