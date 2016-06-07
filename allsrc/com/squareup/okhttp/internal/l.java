package com.squareup.okhttp.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Array;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.f;
import okio.y;
import okio.z;

public final class l
{
  public static final byte[] a = new byte[0];
  public static final String[] b = new String[0];
  public static final Charset c = Charset.forName("UTF-8");

  public static int a(String paramString)
  {
    if ("http".equals(paramString))
      return 80;
    if ("https".equals(paramString))
      return 443;
    return -1;
  }

  private static int a(String paramString, int paramInt)
  {
    if (paramInt != -1)
      return paramInt;
    return a(paramString);
  }

  public static int a(URI paramURI)
  {
    return a(paramURI.getScheme(), paramURI.getPort());
  }

  public static int a(URL paramURL)
  {
    return a(paramURL.getProtocol(), paramURL.getPort());
  }

  public static <T> List<T> a(List<T> paramList)
  {
    return Collections.unmodifiableList(new ArrayList(paramList));
  }

  public static <T> List<T> a(T[] paramArrayOfT)
  {
    return Collections.unmodifiableList(Arrays.asList((Object[])paramArrayOfT.clone()));
  }

  public static <K, V> Map<K, V> a(Map<K, V> paramMap)
  {
    return Collections.unmodifiableMap(new LinkedHashMap(paramMap));
  }

  public static ThreadFactory a(String paramString, boolean paramBoolean)
  {
    return new m(paramString, paramBoolean);
  }

  public static ByteString a(ByteString paramByteString)
  {
    try
    {
      ByteString localByteString = ByteString.of(MessageDigest.getInstance("SHA-1").digest(paramByteString.toByteArray()));
      return localByteString;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    throw new AssertionError(localNoSuchAlgorithmException);
  }

  public static void a(long paramLong1, long paramLong2, long paramLong3)
  {
    if (((paramLong2 | paramLong3) < 0L) || (paramLong2 > paramLong1) || (paramLong1 - paramLong2 < paramLong3))
      throw new ArrayIndexOutOfBoundsException();
  }

  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw localRuntimeException;
    }
    catch (Exception localException)
    {
    }
  }

  public static void a(Closeable paramCloseable1, Closeable paramCloseable2)
  {
    Object localObject = null;
    try
    {
      paramCloseable1.close();
      try
      {
        label8: paramCloseable2.close();
        if (localObject == null)
          return;
      }
      catch (Throwable localThrowable2)
      {
        while (true)
        {
          if (localObject != null)
            continue;
          localObject = localThrowable2;
        }
        if ((localObject instanceof IOException))
          throw ((IOException)localObject);
        if ((localObject instanceof RuntimeException))
          throw ((RuntimeException)localObject);
        if ((localObject instanceof Error))
          throw ((Error)localObject);
        throw new AssertionError(localObject);
      }
    }
    catch (Throwable localThrowable1)
    {
      break label8;
    }
  }

  public static void a(Socket paramSocket)
  {
    if (paramSocket != null);
    try
    {
      paramSocket.close();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw localRuntimeException;
    }
    catch (Exception localException)
    {
    }
  }

  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  public static boolean a(y paramy, int paramInt, TimeUnit paramTimeUnit)
  {
    try
    {
      boolean bool = b(paramy, 100, paramTimeUnit);
      return bool;
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public static <T> T[] a(Class<T> paramClass, T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramArrayOfT1.length;
    int j = 0;
    if (j < i)
    {
      T ? = paramArrayOfT1[j];
      int k = paramArrayOfT2.length;
      for (int m = 0; ; m++)
      {
        if (m < k)
        {
          T ? = paramArrayOfT2[m];
          if (!?.equals(?))
            continue;
          localArrayList.add(?);
        }
        j++;
        break;
      }
    }
    return localArrayList.toArray((Object[])Array.newInstance(paramClass, localArrayList.size()));
  }

  public static boolean b(y paramy, int paramInt, TimeUnit paramTimeUnit)
  {
    long l1 = System.nanoTime();
    long l2;
    if (paramy.a().e_())
      l2 = paramy.a().d() - l1;
    while (true)
    {
      paramy.a().a(l1 + Math.min(l2, paramTimeUnit.toNanos(paramInt)));
      try
      {
        f localf = new f();
        while (paramy.a(localf, 2048L) != -1L)
          localf.p();
      }
      catch (InterruptedIOException localInterruptedIOException)
      {
        if (l2 == 9223372036854775807L)
          paramy.a().f();
        while (true)
        {
          return false;
          l2 = 9223372036854775807L;
          break;
          if (l2 == 9223372036854775807L)
            paramy.a().f();
          while (true)
          {
            return true;
            paramy.a().a(l2 + l1);
          }
          paramy.a().a(l2 + l1);
        }
      }
      finally
      {
        if (l2 != 9223372036854775807L)
          break label197;
      }
    }
    paramy.a().f();
    while (true)
    {
      throw localObject;
      label197: paramy.a().a(l2 + l1);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.l
 * JD-Core Version:    0.6.0
 */