package com.umeng.update.net;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Stack;
import java.util.WeakHashMap;
import u.a.a;
import u.a.b;

public class w
{
  private static final String a = w.class.getName();
  private static Thread b;

  static
  {
    Collections.synchronizedMap(new WeakHashMap());
  }

  public static File a(String paramString, Context paramContext, boolean[] paramArrayOfBoolean)
  {
    if (a.a())
    {
      File localFile1 = new File(Environment.getExternalStorageDirectory().getCanonicalPath() + "/download/.um" + paramString);
      localFile1.mkdirs();
      if (localFile1.exists())
      {
        paramArrayOfBoolean[0] = true;
        return localFile1;
      }
    }
    String str1 = paramContext.getCacheDir().getAbsolutePath();
    new File(str1).mkdir();
    a(str1, 505);
    String str2 = str1 + "/umdownload";
    new File(str2).mkdir();
    a(str2, 505);
    File localFile2 = new File(str2);
    paramArrayOfBoolean[0] = false;
    return localFile2;
  }

  public static void a(File paramFile, long paramLong1, long paramLong2)
  {
    File localFile1;
    long l1;
    if (paramFile.exists())
    {
      localFile1 = paramFile.getCanonicalFile();
      if ((localFile1 == null) || (!localFile1.exists()) || (!localFile1.isDirectory()))
      {
        l1 = 0L;
        if (l1 > paramLong1)
          if (b == null)
            b = new Thread(new x(paramFile, 259200000L));
      }
    }
    label165: 
    do
      synchronized (b)
      {
        b.start();
        return;
        Stack localStack = new Stack();
        localStack.clear();
        localStack.push(localFile1);
        l1 = 0L;
        File[] arrayOfFile;
        int j;
        long l3;
        while (!localStack.isEmpty())
        {
          arrayOfFile = ((File)localStack.pop()).listFiles();
          int i = arrayOfFile.length;
          long l2 = l1;
          j = 0;
          l3 = l2;
          if (j < i)
            break label165;
          l1 = l3;
        }
        File localFile2 = arrayOfFile[j];
        if (!localFile2.isDirectory())
          l3 += localFile2.length();
        j++;
      }
    while (paramFile.mkdirs());
    b.b(a, "Failed to create directory" + paramFile.getAbsolutePath() + ". Check permission. Make sure WRITE_EXTERNAL_STORAGE is added in your Manifest.xml");
  }

  public static boolean a(String paramString, int paramInt)
  {
    try
    {
      Class localClass = Class.forName("android.os.FileUtils");
      Class[] arrayOfClass = new Class[4];
      arrayOfClass[0] = String.class;
      arrayOfClass[1] = Integer.TYPE;
      arrayOfClass[2] = Integer.TYPE;
      arrayOfClass[3] = Integer.TYPE;
      Method localMethod = localClass.getMethod("setPermissions", arrayOfClass);
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = Integer.valueOf(paramInt);
      arrayOfObject[2] = Integer.valueOf(-1);
      arrayOfObject[3] = Integer.valueOf(-1);
      localMethod.invoke(null, arrayOfObject);
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      b.b(a, "error when set permissions:", localClassNotFoundException);
      return false;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        b.b(a, "error when set permissions:", localNoSuchMethodException);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        b.b(a, "error when set permissions:", localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        b.b(a, "error when set permissions:", localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        b.b(a, "error when set permissions:", localInvocationTargetException);
    }
  }

  public static boolean b(String paramString, int paramInt)
  {
    return a(paramString, 438);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.net.w
 * JD-Core Version:    0.6.0
 */