package com.alipay.security.mobile.module.a;

import android.support.design.widget.am;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a
{
  private static String a = "";
  private static String b = "";
  private static String c = "";

  public static void a(String paramString)
  {
    monitorenter;
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramString);
      a(localArrayList);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void a(String paramString1, String paramString2, String paramString3)
  {
    monitorenter;
    try
    {
      a = paramString1;
      b = paramString2;
      c = paramString3;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void a(Throwable paramThrowable)
  {
    monitorenter;
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(b(paramThrowable));
      a(localArrayList);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private static void a(List<String> paramList)
  {
    monitorenter;
    StringBuffer localStringBuffer;
    try
    {
      if (!am.a(b))
      {
        boolean bool = am.a(c);
        if (!bool);
      }
      else
      {
        return;
      }
      localStringBuffer = new StringBuffer();
      localStringBuffer.append(c);
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localStringBuffer.append(", " + str);
      }
    }
    finally
    {
      monitorexit;
    }
    localStringBuffer.append("\n");
    while (true)
    {
      File localFile2;
      try
      {
        File localFile1 = new File(a);
        if (localFile1.exists())
          continue;
        localFile1.mkdirs();
        localFile2 = new File(a, b);
        if (localFile2.exists())
          continue;
        localFile2.createNewFile();
        if (localFile2.length() + localStringBuffer.length() > 51200L)
          break label229;
        localFileWriter = new FileWriter(localFile2, true);
        localFileWriter.write(localStringBuffer.toString());
        localFileWriter.flush();
        localFileWriter.close();
      }
      catch (Exception localException)
      {
        localException.toString();
      }
      break;
      label229: FileWriter localFileWriter = new FileWriter(localFile2);
    }
  }

  public static String b(Throwable paramThrowable)
  {
    if (paramThrowable != null)
    {
      StringWriter localStringWriter = new StringWriter();
      paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
      return localStringWriter.toString();
    }
    return "";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.security.mobile.module.a.a
 * JD-Core Version:    0.6.0
 */