package com.mob.tools.log;

import android.content.Context;
import android.os.Environment;
import com.mob.tools.e;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

public class NativeErrorHandler
{
  private static final boolean a;

  static
  {
    try
    {
      System.loadLibrary("neh");
      bool = true;
      a = bool;
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        boolean bool = false;
    }
  }

  private static String a(String paramString, f paramf)
  {
    File localFile = new File(paramString, "." + paramf.a);
    if (!localFile.exists())
      return "";
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(localFile)));
    LinkedList localLinkedList = new LinkedList();
    for (String str = localBufferedReader.readLine(); str != null; str = localBufferedReader.readLine())
    {
      localLinkedList.add(str);
      if (localLinkedList.size() <= 100)
        continue;
      localLinkedList.remove(0);
    }
    localBufferedReader.close();
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = localLinkedList.iterator();
    while (localIterator.hasNext())
      localStringBuffer.append((String)localIterator.next()).append('\n');
    if (localStringBuffer.length() > 0)
      return localStringBuffer.substring(0, -1 + localStringBuffer.length());
    return "";
  }

  private static void a(String paramString)
  {
    while (true)
    {
      File localFile;
      try
      {
        localFile = new File(paramString, ".ncl");
        if (!localFile.exists())
        {
          localArrayList = new ArrayList();
          Iterator localIterator = localArrayList.iterator();
          if (!localIterator.hasNext())
            break;
          String str1 = a(paramString, (f)localIterator.next());
          e.a().nativeCrashLog(str1);
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        e.a().w(localThrowable);
        return;
      }
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(localFile)));
      ArrayList localArrayList = new ArrayList();
      String str2 = localBufferedReader.readLine();
      while (str2 != null)
      {
        String[] arrayOfString = str2.split(",");
        if (arrayOfString.length < 2)
          continue;
        f localf = new f(0);
        localf.a = com.arcsoft.hpay100.a.a.o(arrayOfString[0]);
        com.arcsoft.hpay100.a.a.n(arrayOfString[1]);
        localArrayList.add(localf);
        str2 = localBufferedReader.readLine();
      }
      localBufferedReader.close();
    }
    com.arcsoft.hpay100.a.a.a(new File(paramString));
  }

  public static boolean a(Context paramContext)
  {
    String str1 = paramContext.getFilesDir().getAbsolutePath() + "/Mob/";
    com.mob.tools.b.a.a(paramContext);
    if (com.mob.tools.b.a.p())
      str1 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Mob/";
    File localFile1 = new File(str1);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File localFile2 = new File(str1, "NativeCrashLogs");
    if (!localFile2.exists())
      localFile2.mkdirs();
    String str2 = localFile2.getAbsolutePath();
    if (a)
    {
      a(str2);
      nativePrepare(str2);
    }
    return a;
  }

  private static native void nativePrepare(String paramString);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.log.NativeErrorHandler
 * JD-Core Version:    0.6.0
 */