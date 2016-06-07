package com.alipay.sdk.e;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.b.d;
import java.io.File;

public final class b
{
  private static b c;
  public Context a;
  public d b;

  public static b a()
  {
    if (c == null)
      c = new b();
    return c;
  }

  // ERROR //
  private static String a(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: new 23	java/lang/ProcessBuilder
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 26	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   8: astore_1
    //   9: aload_1
    //   10: iconst_0
    //   11: invokevirtual 30	java/lang/ProcessBuilder:redirectErrorStream	(Z)Ljava/lang/ProcessBuilder;
    //   14: pop
    //   15: aload_1
    //   16: invokevirtual 34	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   19: astore 10
    //   21: aload 10
    //   23: astore_3
    //   24: new 36	java/io/DataOutputStream
    //   27: dup
    //   28: aload_3
    //   29: invokevirtual 42	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   32: invokespecial 45	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   35: astore 11
    //   37: new 47	java/io/DataInputStream
    //   40: dup
    //   41: aload_3
    //   42: invokevirtual 51	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   45: invokespecial 54	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   48: invokevirtual 58	java/io/DataInputStream:readLine	()Ljava/lang/String;
    //   51: astore 13
    //   53: aload 13
    //   55: astore 7
    //   57: aload 11
    //   59: ldc 60
    //   61: invokevirtual 64	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   64: aload 11
    //   66: invokevirtual 67	java/io/DataOutputStream:flush	()V
    //   69: aload_3
    //   70: invokevirtual 71	java/lang/Process:waitFor	()I
    //   73: pop
    //   74: aload_3
    //   75: invokevirtual 74	java/lang/Process:destroy	()V
    //   78: aload 7
    //   80: areturn
    //   81: astore 6
    //   83: aconst_null
    //   84: astore_3
    //   85: ldc 76
    //   87: astore 7
    //   89: aload_3
    //   90: invokevirtual 74	java/lang/Process:destroy	()V
    //   93: aload 7
    //   95: areturn
    //   96: astore 8
    //   98: aload 7
    //   100: areturn
    //   101: astore_2
    //   102: aconst_null
    //   103: astore_3
    //   104: aload_2
    //   105: astore 4
    //   107: aload_3
    //   108: invokevirtual 74	java/lang/Process:destroy	()V
    //   111: aload 4
    //   113: athrow
    //   114: astore 16
    //   116: aload 7
    //   118: areturn
    //   119: astore 5
    //   121: goto -10 -> 111
    //   124: astore 4
    //   126: goto -19 -> 107
    //   129: astore 12
    //   131: ldc 76
    //   133: astore 7
    //   135: goto -46 -> 89
    //   138: astore 14
    //   140: goto -51 -> 89
    //
    // Exception table:
    //   from	to	target	type
    //   0	21	81	java/lang/Exception
    //   89	93	96	java/lang/Exception
    //   0	21	101	finally
    //   74	78	114	java/lang/Exception
    //   107	111	119	java/lang/Exception
    //   24	53	124	finally
    //   57	74	124	finally
    //   24	53	129	java/lang/Exception
    //   57	74	138	java/lang/Exception
  }

  public static boolean b()
  {
    int i = 1;
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "/system/xbin/";
    arrayOfString[i] = "/system/bin/";
    arrayOfString[2] = "/system/sbin/";
    arrayOfString[3] = "/sbin/";
    arrayOfString[4] = "/vendor/bin/";
    int j = 0;
    while (j < 5)
      try
      {
        String str1 = arrayOfString[j] + "su";
        if (new File(str1).exists())
        {
          String str2 = a(new String[] { "ls", "-l", str1 });
          if (!TextUtils.isEmpty(str2))
          {
            int k = str2.indexOf("root");
            int m = str2.lastIndexOf("root");
            if (k != m);
          }
          else
          {
            i = 0;
          }
          return i;
        }
        j++;
      }
      catch (Exception localException)
      {
      }
    return false;
  }

  public final void a(Context paramContext, d paramd)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramd;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.e.b
 * JD-Core Version:    0.6.0
 */