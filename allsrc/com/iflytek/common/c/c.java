package com.iflytek.common.c;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class c
{
  protected static boolean a = false;

  public static int a(String paramString1, String paramString2)
  {
    boolean bool = a;
    int i = 0;
    if (bool)
      i = Log.d("LaunchLib_" + paramString1, paramString2);
    return i;
  }

  public static int a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    boolean bool = a;
    int i = 0;
    if (bool)
      i = Log.d("LaunchLib_" + paramString1, paramString2, paramThrowable);
    return i;
  }

  public static String a(long paramLong)
  {
    Date localDate = new Date(paramLong);
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS ", Locale.CHINESE).format(localDate);
  }

  // ERROR //
  public static void a(android.content.Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 10	com/iflytek/common/c/c:a	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: new 63	java/lang/StringBuffer
    //   18: dup
    //   19: invokespecial 65	java/lang/StringBuffer:<init>	()V
    //   22: astore 4
    //   24: aload 4
    //   26: invokestatic 71	java/lang/System:currentTimeMillis	()J
    //   29: invokestatic 73	com/iflytek/common/c/c:a	(J)Ljava/lang/String;
    //   32: invokevirtual 76	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   35: pop
    //   36: aload 4
    //   38: new 13	java/lang/StringBuilder
    //   41: dup
    //   42: ldc 78
    //   44: invokespecial 19	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: invokestatic 84	android/os/Process:myPid	()I
    //   50: invokevirtual 87	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   53: ldc 89
    //   55: invokevirtual 23	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 27	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokevirtual 76	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   64: pop
    //   65: aload 4
    //   67: aload_1
    //   68: invokevirtual 76	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   71: pop
    //   72: aload 4
    //   74: bipush 10
    //   76: invokevirtual 92	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   79: pop
    //   80: ldc 94
    //   82: aload 4
    //   84: invokevirtual 95	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   87: invokestatic 97	com/iflytek/common/c/c:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   90: pop
    //   91: getstatic 103	android/os/Build$VERSION:SDK_INT	I
    //   94: bipush 7
    //   96: if_icmple -85 -> 11
    //   99: new 105	java/io/File
    //   102: dup
    //   103: aload_0
    //   104: invokevirtual 111	android/content/Context:getExternalCacheDir	()Ljava/io/File;
    //   107: ldc 113
    //   109: invokespecial 116	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   112: astore 10
    //   114: aload 10
    //   116: invokevirtual 120	java/io/File:exists	()Z
    //   119: ifne +35 -> 154
    //   122: aload 10
    //   124: invokevirtual 123	java/io/File:createNewFile	()Z
    //   127: pop
    //   128: ldc 15
    //   130: new 13	java/lang/StringBuilder
    //   133: dup
    //   134: ldc 125
    //   136: invokespecial 19	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: aload 10
    //   141: invokevirtual 128	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   144: invokevirtual 23	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 27	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokestatic 97	com/iflytek/common/c/c:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   153: pop
    //   154: new 130	java/io/RandomAccessFile
    //   157: dup
    //   158: aload 10
    //   160: ldc 132
    //   162: invokespecial 133	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   165: astore 11
    //   167: aload 11
    //   169: invokevirtual 136	java/io/RandomAccessFile:length	()J
    //   172: ldc2_w 137
    //   175: lcmp
    //   176: ifle +9 -> 185
    //   179: aload 11
    //   181: lconst_0
    //   182: invokevirtual 141	java/io/RandomAccessFile:setLength	(J)V
    //   185: aload 11
    //   187: aload 11
    //   189: invokevirtual 136	java/io/RandomAccessFile:length	()J
    //   192: invokevirtual 144	java/io/RandomAccessFile:seek	(J)V
    //   195: aload 11
    //   197: aload 4
    //   199: invokevirtual 95	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   202: invokevirtual 150	java/lang/String:getBytes	()[B
    //   205: invokevirtual 154	java/io/RandomAccessFile:write	([B)V
    //   208: aload 11
    //   210: invokevirtual 157	java/io/RandomAccessFile:close	()V
    //   213: goto -202 -> 11
    //   216: astore 8
    //   218: ldc 94
    //   220: ldc 94
    //   222: aload 8
    //   224: invokestatic 159	com/iflytek/common/c/c:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   227: pop
    //   228: goto -217 -> 11
    //   231: astore_2
    //   232: ldc 2
    //   234: monitorexit
    //   235: aload_2
    //   236: athrow
    //   237: astore 5
    //   239: ldc 94
    //   241: ldc 94
    //   243: aload 5
    //   245: invokestatic 159	com/iflytek/common/c/c:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   248: pop
    //   249: goto -169 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   91	154	216	java/lang/Exception
    //   154	185	216	java/lang/Exception
    //   185	213	216	java/lang/Exception
    //   3	7	231	finally
    //   15	24	231	finally
    //   24	80	231	finally
    //   80	91	231	finally
    //   91	154	231	finally
    //   154	185	231	finally
    //   185	213	231	finally
    //   218	228	231	finally
    //   239	249	231	finally
    //   24	80	237	java/lang/Exception
  }

  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  public static int b(String paramString1, String paramString2)
  {
    boolean bool = a;
    int i = 0;
    if (bool)
      i = Log.e("LaunchLib_" + paramString1, paramString2);
    return i;
  }

  public static int b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    boolean bool = a;
    int i = 0;
    if (bool)
      i = Log.e("LaunchLib_" + paramString1, paramString2, paramThrowable);
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.c.c
 * JD-Core Version:    0.6.0
 */