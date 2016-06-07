package com.mob.tools.log;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;

public class b
{
  private HashMap<String, a> a = new HashMap();
  private String b = "";
  private String c = "";

  public final int a(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    Thread localThread = Thread.currentThread();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = localThread.getName();
    arrayOfObject[1] = paramString2;
    String str1 = String.format("%s %s", arrayOfObject);
    StackTraceElement[] arrayOfStackTraceElement = localThread.getStackTrace();
    String str3;
    String str4;
    String str5;
    if ((arrayOfStackTraceElement != null) && (arrayOfStackTraceElement.length > 0))
    {
      StackTraceElement localStackTraceElement = arrayOfStackTraceElement[(-1 + arrayOfStackTraceElement.length)];
      str3 = localStackTraceElement.getFileName();
      if ((str3 == null) || (str3.length() <= 0))
      {
        str4 = localStackTraceElement.getClassName();
        int i = localStackTraceElement.getLineNumber();
        str5 = String.valueOf(i);
        if (i < 0)
        {
          str5 = localStackTraceElement.getMethodName();
          if ((str5 == null) || (str5.length() <= 0))
            str5 = "Unknown Source";
        }
      }
    }
    for (String str2 = str4 + "(" + str5 + ")"; ; str2 = this.c)
    {
      a locala = (a)this.a.get(paramString1);
      if (locala != null)
        locala.log(paramString1, paramInt1, paramInt2, str2, str1);
      return 0;
      str4 = this.c + "/" + str3;
      break;
    }
  }

  public final void a(Context paramContext)
  {
    this.b = paramContext.getPackageName();
    if (TextUtils.isEmpty(this.b))
    {
      this.b = "";
      return;
    }
    this.c = this.b;
  }

  public final void a(String paramString, a parama)
  {
    this.a.put(paramString, parama);
  }

  public final void a(String paramString1, String paramString2)
  {
    a locala = (a)this.a.get(paramString1);
    if (locala != null)
      locala.log(paramString1, 6, 2, this.c, paramString2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.log.b
 * JD-Core Version:    0.6.0
 */