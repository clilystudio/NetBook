package com.xiaomi.network;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Timer;

public final class i
{
  private static i e;
  private List<j> a = new ArrayList();
  private final Random b = new Random();
  private Timer c = new Timer("Upload Http Record Timer");
  private boolean d = false;
  private Context f = null;

  private i(Context paramContext)
  {
    this.f = paramContext.getApplicationContext();
  }

  public static i a()
  {
    monitorenter;
    try
    {
      i locali = e;
      monitorexit;
      return locali;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private String a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(b(paramString));
      String str = String.format("%1$032X", new Object[] { new BigInteger(1, localMessageDigest.digest()) });
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    throw new RuntimeException(localNoSuchAlgorithmException);
  }

  public static void a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (e == null)
        e = new i(paramContext);
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

  private static byte[] b(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    return paramString.getBytes();
  }

  public final void a(j paramj)
  {
    this.a.add(paramj);
  }

  public final void b()
  {
    if (!this.d)
    {
      this.d = true;
      this.c.schedule(new m(this), 60000L);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.network.i
 * JD-Core Version:    0.6.0
 */