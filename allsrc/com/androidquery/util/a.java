package com.androidquery.util;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class a
{
  private static boolean a = false;
  private static Handler b;
  private static boolean c;
  private static ScheduledExecutorService d;
  private static File e;
  private static File f;
  private static final char[] g;
  private static final byte[] h;

  static
  {
    new HashMap();
    c = false;
    g = new char[64];
    int i = 65;
    int j = 0;
    int m;
    label38: int i1;
    label49: int i4;
    label91: int i5;
    if (i > 90)
    {
      m = 97;
      if (m <= 122)
        break label134;
      i1 = 48;
      if (i1 <= 57)
        break label163;
      char[] arrayOfChar4 = g;
      int i3 = j + 1;
      arrayOfChar4[j] = '+';
      g[i3] = '/';
      h = new byte[''];
      i4 = 0;
      i5 = 0;
      if (i4 < 128)
        break label192;
    }
    while (true)
    {
      if (i5 >= 64)
      {
        return;
        char[] arrayOfChar1 = g;
        int k = j + 1;
        arrayOfChar1[j] = i;
        i = (char)(i + 1);
        j = k;
        break;
        label134: char[] arrayOfChar2 = g;
        int n = j + 1;
        arrayOfChar2[j] = m;
        m = (char)(m + 1);
        j = n;
        break label38;
        label163: char[] arrayOfChar3 = g;
        int i2 = j + 1;
        arrayOfChar3[j] = i1;
        i1 = (char)(i1 + 1);
        j = i2;
        break label49;
        label192: h[i4] = -1;
        i4++;
        break label91;
      }
      h[g[i5]] = (byte)i5;
      i5++;
    }
  }

  private static File a(Context paramContext)
  {
    if (e == null)
    {
      File localFile = new File(paramContext.getCacheDir(), "aquery");
      e = localFile;
      localFile.mkdirs();
    }
    return e;
  }

  public static File a(Context paramContext, int paramInt)
  {
    if (paramInt == 1)
    {
      if (f != null)
        return f;
      File localFile = new File(a(paramContext), "persistent");
      f = localFile;
      localFile.mkdirs();
      return f;
    }
    return a(paramContext);
  }

  public static File a(File paramFile, String paramString)
  {
    if (paramString == null)
      return null;
    if (paramString.startsWith(File.separator))
      return new File(paramString);
    return new File(paramFile, new BigInteger(a(paramString.getBytes())).abs().toString(36));
  }

  public static void a()
  {
  }

  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void a(File paramFile, long paramLong1, long paramLong2)
  {
    long l1 = 0L;
    while (true)
    {
      File[] arrayOfFile;
      int i;
      int j;
      try
      {
        arrayOfFile = paramFile.listFiles();
        if (arrayOfFile == null)
          return;
        Arrays.sort(arrayOfFile, new b());
        i = arrayOfFile.length;
        j = 0;
        break label122;
        if (k == 0)
          continue;
        a(arrayOfFile, paramLong2);
        File localFile = c();
        if ((localFile != null) && (localFile.exists()))
        {
          a(localFile.listFiles(), 0L);
          return;
        }
      }
      catch (Exception localException)
      {
        b(localException);
        return;
      }
      label122: 
      do
      {
        long l2 = arrayOfFile[j].length();
        l1 += l2;
        if (l1 > paramLong1)
        {
          k = 1;
          break;
        }
        j++;
        continue;
        return;
      }
      while (j < i);
      int k = 0;
    }
  }

  public static void a(File paramFile, byte[] paramArrayOfByte)
  {
    if (paramFile != null)
      try
      {
        boolean bool = paramFile.exists();
        if (!bool);
        try
        {
          paramFile.createNewFile();
          FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
          localFileOutputStream.write(paramArrayOfByte);
          localFileOutputStream.close();
          return;
        }
        catch (Exception localException3)
        {
          while (true)
            b(localException3);
        }
      }
      catch (Exception localException1)
      {
        try
        {
          b(localException1);
          return;
        }
        catch (Exception localException2)
        {
          b(localException2);
        }
      }
  }

  public static void a(File paramFile, byte[] paramArrayOfByte, long paramLong)
  {
    if (d == null)
      d = Executors.newSingleThreadScheduledExecutor();
    d.schedule(new b().a(1, new Object[] { paramFile, paramArrayOfByte }), 0L, TimeUnit.MILLISECONDS);
  }

  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    a(paramInputStream, paramOutputStream, 0, null);
  }

  public static void a(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt, d paramd)
  {
    if (paramd != null)
    {
      paramd.a();
      paramd.a(paramInt);
    }
    byte[] arrayOfByte = new byte[4096];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1)
      {
        if (paramd != null)
          paramd.b();
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
      if (paramd == null)
        continue;
      paramd.b(i);
    }
  }

  public static void a(Object paramObject)
  {
  }

  public static void a(Object paramObject1, Object paramObject2)
  {
    Log.w("AQuery", paramObject1 + ":" + paramObject2);
  }

  public static void a(Runnable paramRunnable)
  {
    if (b == null)
      b = new Handler(Looper.getMainLooper());
    b.post(paramRunnable);
  }

  public static void a(Throwable paramThrowable)
  {
  }

  private static void a(File[] paramArrayOfFile, long paramLong)
  {
    int i = 0;
    long l = 0L;
    int j = 0;
    while (true)
    {
      if (i >= paramArrayOfFile.length)
      {
        Integer.valueOf(j);
        return;
      }
      File localFile = paramArrayOfFile[i];
      if (localFile.isFile())
      {
        l += localFile.length();
        if (l >= paramLong)
        {
          localFile.delete();
          j++;
        }
      }
      i++;
    }
  }

  public static byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      a(paramInputStream, localByteArrayOutputStream);
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      arrayOfByte1 = arrayOfByte2;
      a(paramInputStream);
      return arrayOfByte1;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        b(localIOException);
        byte[] arrayOfByte1 = null;
      }
    }
  }

  private static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      byte[] arrayOfByte = localMessageDigest.digest();
      return arrayOfByte;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      b(localNoSuchAlgorithmException);
    }
    return null;
  }

  public static File b(File paramFile, String paramString)
  {
    File localFile = a(paramFile, paramString);
    if ((localFile == null) || (!localFile.exists()) || (localFile.length() == 0L))
      localFile = null;
    return localFile;
  }

  public static void b(Object paramObject1, Object paramObject2)
  {
  }

  public static void b(Throwable paramThrowable)
  {
    try
    {
      a("reporting", Log.getStackTraceString(paramThrowable));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static boolean b()
  {
    return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
  }

  public static File c()
  {
    File localFile = new File(Environment.getExternalStorageDirectory(), "aquery/temp");
    localFile.mkdirs();
    if ((!localFile.exists()) || (!localFile.canWrite()))
      localFile = null;
    return localFile;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.util.a
 * JD-Core Version:    0.6.0
 */