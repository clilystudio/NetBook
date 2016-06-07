package com.xiaomi.mistatistic.sdk.a;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class l
{
  private static String a;

  public static String a()
  {
    if (a != null)
      return a;
    g.a().a(new m(r.b()));
    return null;
  }

  public static String a(Context paramContext)
  {
    String str1 = b(paramContext);
    try
    {
      String str4 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      str2 = str4;
      int i = Build.VERSION.SDK_INT;
      String str3 = null;
      if (i > 8)
        str3 = Build.SERIAL;
      return b(str1 + str2 + str3);
    }
    catch (Throwable localThrowable)
    {
      while (true)
        String str2 = null;
    }
  }

  // ERROR //
  public static String b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 79
    //   3: invokevirtual 83	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   6: checkcast 85	android/telephony/TelephonyManager
    //   9: astore_2
    //   10: aload_2
    //   11: invokevirtual 88	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   14: astore_3
    //   15: aload_3
    //   16: astore 4
    //   18: bipush 10
    //   20: istore 5
    //   22: aload 4
    //   24: ifnonnull +37 -> 61
    //   27: iload 5
    //   29: iconst_1
    //   30: isub
    //   31: istore 6
    //   33: iload 5
    //   35: ifle +26 -> 61
    //   38: ldc2_w 89
    //   41: invokestatic 96	java/lang/Thread:sleep	(J)V
    //   44: aload_2
    //   45: invokevirtual 88	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   48: astore 8
    //   50: aload 8
    //   52: astore 4
    //   54: iload 6
    //   56: istore 5
    //   58: goto -36 -> 22
    //   61: aload 4
    //   63: areturn
    //   64: astore_1
    //   65: aconst_null
    //   66: areturn
    //   67: astore 7
    //   69: goto -25 -> 44
    //
    // Exception table:
    //   from	to	target	type
    //   0	15	64	java/lang/Throwable
    //   38	44	64	java/lang/Throwable
    //   44	50	64	java/lang/Throwable
    //   38	44	67	java/lang/InterruptedException
  }

  private static String b(String paramString)
  {
    if (paramString != null);
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
      localMessageDigest.update(c(paramString));
      String str = String.format("%1$032X", new Object[] { new BigInteger(1, localMessageDigest.digest()) });
      return str;
      return null;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    return paramString;
  }

  private static byte[] c(String paramString)
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.l
 * JD-Core Version:    0.6.0
 */