package com.xiaomi.push.service;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class P
{
  private static final Pattern a = Pattern.compile("([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})");
  private static ThreadPoolExecutor b = new ThreadPoolExecutor(1, 1, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());

  public static void a()
  {
    if (b.getActiveCount() > 0)
      return;
    b.execute(new Q());
  }

  // ERROR //
  private static java.lang.String c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: invokestatic 88	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   5: ldc 130
    //   7: invokevirtual 92	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   10: astore 12
    //   12: aload 12
    //   14: astore_2
    //   15: new 94	java/io/BufferedReader
    //   18: dup
    //   19: new 96	java/io/InputStreamReader
    //   22: dup
    //   23: aload_2
    //   24: invokevirtual 102	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   27: invokespecial 105	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   30: invokespecial 108	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   33: astore_3
    //   34: aload_3
    //   35: invokevirtual 111	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   38: astore 15
    //   40: aload 15
    //   42: invokestatic 136	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   45: ifne +289 -> 334
    //   48: aload 15
    //   50: ldc 138
    //   52: invokevirtual 142	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   55: ifeq +279 -> 334
    //   58: aload 15
    //   60: ldc 144
    //   62: invokevirtual 148	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   65: astore 17
    //   67: aload 17
    //   69: arraylength
    //   70: istore 18
    //   72: iconst_0
    //   73: istore 19
    //   75: iload 19
    //   77: iload 18
    //   79: if_icmpge +27 -> 106
    //   82: aload 17
    //   84: iload 19
    //   86: aaload
    //   87: astore 23
    //   89: getstatic 20	com/xiaomi/push/service/P:a	Ljava/util/regex/Pattern;
    //   92: aload 23
    //   94: invokevirtual 152	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   97: invokevirtual 158	java/util/regex/Matcher:matches	()Z
    //   100: ifeq +228 -> 328
    //   103: goto +237 -> 340
    //   106: aload_2
    //   107: invokevirtual 116	java/lang/Process:waitFor	()I
    //   110: pop
    //   111: aload_0
    //   112: astore 6
    //   114: aload_3
    //   115: ifnull +7 -> 122
    //   118: aload_3
    //   119: invokevirtual 119	java/io/BufferedReader:close	()V
    //   122: aload_2
    //   123: ifnull +7 -> 130
    //   126: aload_2
    //   127: invokevirtual 122	java/lang/Process:destroy	()V
    //   130: aload 6
    //   132: areturn
    //   133: astore 9
    //   135: aconst_null
    //   136: astore_2
    //   137: aconst_null
    //   138: astore_3
    //   139: aconst_null
    //   140: astore 6
    //   142: aload 9
    //   144: astore 10
    //   146: aload 10
    //   148: invokestatic 125	com/xiaomi/a/a/a/b:a	(Ljava/lang/Throwable;)V
    //   151: aload_3
    //   152: ifnull +7 -> 159
    //   155: aload_3
    //   156: invokevirtual 119	java/io/BufferedReader:close	()V
    //   159: aload_2
    //   160: ifnull -30 -> 130
    //   163: goto -37 -> 126
    //   166: astore 5
    //   168: aconst_null
    //   169: astore_2
    //   170: aconst_null
    //   171: astore_3
    //   172: aconst_null
    //   173: astore 6
    //   175: aload 5
    //   177: astore 7
    //   179: aload 7
    //   181: invokestatic 125	com/xiaomi/a/a/a/b:a	(Ljava/lang/Throwable;)V
    //   184: aload_3
    //   185: ifnull +7 -> 192
    //   188: aload_3
    //   189: invokevirtual 119	java/io/BufferedReader:close	()V
    //   192: aload_2
    //   193: ifnull -63 -> 130
    //   196: goto -70 -> 126
    //   199: astore_1
    //   200: aconst_null
    //   201: astore_2
    //   202: aconst_null
    //   203: astore_3
    //   204: aload_3
    //   205: ifnull +7 -> 212
    //   208: aload_3
    //   209: invokevirtual 119	java/io/BufferedReader:close	()V
    //   212: aload_2
    //   213: ifnull +7 -> 220
    //   216: aload_2
    //   217: invokevirtual 122	java/lang/Process:destroy	()V
    //   220: aload_1
    //   221: athrow
    //   222: astore 4
    //   224: goto -12 -> 212
    //   227: astore 11
    //   229: goto -70 -> 159
    //   232: astore 8
    //   234: goto -42 -> 192
    //   237: astore 16
    //   239: goto -117 -> 122
    //   242: astore_1
    //   243: aconst_null
    //   244: astore_3
    //   245: goto -41 -> 204
    //   248: astore_1
    //   249: goto -45 -> 204
    //   252: astore 25
    //   254: aload 25
    //   256: astore 7
    //   258: aconst_null
    //   259: astore 6
    //   261: aconst_null
    //   262: astore_3
    //   263: goto -84 -> 179
    //   266: astore 14
    //   268: aload 14
    //   270: astore 7
    //   272: aconst_null
    //   273: astore 6
    //   275: goto -96 -> 179
    //   278: astore 21
    //   280: aload_0
    //   281: astore 6
    //   283: aload 21
    //   285: astore 7
    //   287: goto -108 -> 179
    //   290: astore 24
    //   292: aload 24
    //   294: astore 10
    //   296: aconst_null
    //   297: astore 6
    //   299: aconst_null
    //   300: astore_3
    //   301: goto -155 -> 146
    //   304: astore 13
    //   306: aload 13
    //   308: astore 10
    //   310: aconst_null
    //   311: astore 6
    //   313: goto -167 -> 146
    //   316: astore 20
    //   318: aload_0
    //   319: astore 6
    //   321: aload 20
    //   323: astore 10
    //   325: goto -179 -> 146
    //   328: aload_0
    //   329: astore 23
    //   331: goto +9 -> 340
    //   334: aconst_null
    //   335: astore 6
    //   337: goto -223 -> 114
    //   340: iinc 19 1
    //   343: aload 23
    //   345: astore_0
    //   346: goto -271 -> 75
    //
    // Exception table:
    //   from	to	target	type
    //   2	12	133	java/io/IOException
    //   2	12	166	java/lang/Exception
    //   2	12	199	finally
    //   208	212	222	java/io/IOException
    //   155	159	227	java/io/IOException
    //   188	192	232	java/io/IOException
    //   118	122	237	java/io/IOException
    //   15	34	242	finally
    //   34	72	248	finally
    //   82	103	248	finally
    //   106	111	248	finally
    //   146	151	248	finally
    //   179	184	248	finally
    //   15	34	252	java/lang/Exception
    //   34	72	266	java/lang/Exception
    //   82	103	278	java/lang/Exception
    //   106	111	278	java/lang/Exception
    //   15	34	290	java/io/IOException
    //   34	72	304	java/io/IOException
    //   82	103	316	java/io/IOException
    //   106	111	316	java/io/IOException
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.P
 * JD-Core Version:    0.6.0
 */