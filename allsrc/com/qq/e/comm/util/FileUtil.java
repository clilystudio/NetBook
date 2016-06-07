package com.qq.e.comm.util;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;

public class FileUtil
{
  // ERROR //
  public static boolean copyTo(InputStream paramInputStream, File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: ifnull +7 -> 10
    //   6: aload_1
    //   7: ifnonnull +5 -> 12
    //   10: iconst_0
    //   11: ireturn
    //   12: aload_1
    //   13: invokevirtual 18	java/io/File:getParentFile	()Ljava/io/File;
    //   16: invokevirtual 22	java/io/File:exists	()Z
    //   19: istore 6
    //   21: aconst_null
    //   22: astore_2
    //   23: iload 6
    //   25: ifne +27 -> 52
    //   28: aload_1
    //   29: invokevirtual 18	java/io/File:getParentFile	()Ljava/io/File;
    //   32: invokevirtual 25	java/io/File:mkdirs	()Z
    //   35: istore 7
    //   37: iload 7
    //   39: ifne +13 -> 52
    //   42: aload_0
    //   43: invokestatic 29	com/qq/e/comm/util/FileUtil:tryClose	(Ljava/io/InputStream;)V
    //   46: aconst_null
    //   47: invokestatic 32	com/qq/e/comm/util/FileUtil:tryClose	(Ljava/io/OutputStream;)V
    //   50: iconst_0
    //   51: ireturn
    //   52: new 34	java/io/FileOutputStream
    //   55: dup
    //   56: aload_1
    //   57: invokespecial 37	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   60: astore 8
    //   62: sipush 1024
    //   65: newarray byte
    //   67: astore 9
    //   69: aload_0
    //   70: aload 9
    //   72: invokevirtual 43	java/io/InputStream:read	([B)I
    //   75: istore 10
    //   77: iload 10
    //   79: ifle +55 -> 134
    //   82: aload 8
    //   84: aload 9
    //   86: iconst_0
    //   87: iload 10
    //   89: invokevirtual 47	java/io/FileOutputStream:write	([BII)V
    //   92: goto -23 -> 69
    //   95: astore_3
    //   96: aload 8
    //   98: astore_2
    //   99: iconst_1
    //   100: anewarray 4	java/lang/Object
    //   103: astore 5
    //   105: aload 5
    //   107: iconst_0
    //   108: aload_1
    //   109: invokevirtual 51	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   112: aastore
    //   113: ldc 53
    //   115: aload 5
    //   117: invokestatic 59	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   120: aload_3
    //   121: invokestatic 65	com/qq/e/comm/util/GDTLogger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   124: aload_0
    //   125: invokestatic 29	com/qq/e/comm/util/FileUtil:tryClose	(Ljava/io/InputStream;)V
    //   128: aload_2
    //   129: invokestatic 32	com/qq/e/comm/util/FileUtil:tryClose	(Ljava/io/OutputStream;)V
    //   132: iconst_0
    //   133: ireturn
    //   134: aload_0
    //   135: invokestatic 29	com/qq/e/comm/util/FileUtil:tryClose	(Ljava/io/InputStream;)V
    //   138: aload 8
    //   140: invokestatic 32	com/qq/e/comm/util/FileUtil:tryClose	(Ljava/io/OutputStream;)V
    //   143: iconst_1
    //   144: ireturn
    //   145: astore 4
    //   147: aload_0
    //   148: invokestatic 29	com/qq/e/comm/util/FileUtil:tryClose	(Ljava/io/InputStream;)V
    //   151: aload_2
    //   152: invokestatic 32	com/qq/e/comm/util/FileUtil:tryClose	(Ljava/io/OutputStream;)V
    //   155: aload 4
    //   157: athrow
    //   158: astore 4
    //   160: aload 8
    //   162: astore_2
    //   163: goto -16 -> 147
    //   166: astore_3
    //   167: aconst_null
    //   168: astore_2
    //   169: goto -70 -> 99
    //
    // Exception table:
    //   from	to	target	type
    //   62	69	95	java/lang/Throwable
    //   69	77	95	java/lang/Throwable
    //   82	92	95	java/lang/Throwable
    //   12	21	145	finally
    //   28	37	145	finally
    //   52	62	145	finally
    //   99	124	145	finally
    //   62	69	158	finally
    //   69	77	158	finally
    //   82	92	158	finally
    //   12	21	166	java/lang/Throwable
    //   28	37	166	java/lang/Throwable
    //   52	62	166	java/lang/Throwable
  }

  public static boolean renameTo(File paramFile1, File paramFile2)
  {
    if ((paramFile1 == null) || (paramFile2 == null) || (!paramFile1.exists()))
      return false;
    if (!paramFile1.renameTo(paramFile2))
      return copyTo(null, paramFile2);
    return true;
  }

  public static void tryClose(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void tryClose(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null);
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.util.FileUtil
 * JD-Core Version:    0.6.0
 */