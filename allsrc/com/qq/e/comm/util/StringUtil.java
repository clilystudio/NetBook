package com.qq.e.comm.util;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class StringUtil
{
  public static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() == 0);
  }

  public static String join(String paramString, String[] paramArrayOfString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramArrayOfString != null)
      for (int i = 0; i < paramArrayOfString.length; i++)
      {
        if ((paramString != null) && (i != 0))
          localStringBuffer.append(paramString);
        localStringBuffer.append(paramArrayOfString[i]);
      }
    return localStringBuffer.toString();
  }

  public static int parseInteger(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (Throwable localThrowable)
    {
    }
    return paramInt;
  }

  // ERROR //
  public static String readAll(File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +10 -> 11
    //   4: aload_0
    //   5: invokevirtual 54	java/io/File:exists	()Z
    //   8: ifne +5 -> 13
    //   11: aconst_null
    //   12: areturn
    //   13: new 56	java/io/BufferedReader
    //   16: dup
    //   17: new 58	java/io/FileReader
    //   20: dup
    //   21: aload_0
    //   22: invokespecial 61	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   25: invokespecial 64	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   28: astore_1
    //   29: new 66	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 67	java/lang/StringBuilder:<init>	()V
    //   36: astore_2
    //   37: aload_1
    //   38: invokevirtual 70	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   41: astore 6
    //   43: aload 6
    //   45: ifnull +29 -> 74
    //   48: aload_2
    //   49: aload 6
    //   51: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: pop
    //   55: goto -18 -> 37
    //   58: astore 5
    //   60: aload 5
    //   62: athrow
    //   63: astore_3
    //   64: aload_1
    //   65: ifnull +7 -> 72
    //   68: aload_1
    //   69: invokevirtual 76	java/io/BufferedReader:close	()V
    //   72: aload_3
    //   73: athrow
    //   74: aload_2
    //   75: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: astore 8
    //   80: aload_1
    //   81: invokevirtual 76	java/io/BufferedReader:close	()V
    //   84: aload 8
    //   86: areturn
    //   87: astore 9
    //   89: ldc 79
    //   91: aload 9
    //   93: invokestatic 85	com/qq/e/comm/util/GDTLogger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   96: aload 8
    //   98: areturn
    //   99: astore 4
    //   101: ldc 79
    //   103: aload 4
    //   105: invokestatic 85	com/qq/e/comm/util/GDTLogger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   108: goto -36 -> 72
    //   111: astore 11
    //   113: aload 11
    //   115: astore_3
    //   116: aconst_null
    //   117: astore_1
    //   118: goto -54 -> 64
    //   121: astore 10
    //   123: aload 10
    //   125: astore 5
    //   127: aconst_null
    //   128: astore_1
    //   129: goto -69 -> 60
    //
    // Exception table:
    //   from	to	target	type
    //   29	37	58	java/io/IOException
    //   37	43	58	java/io/IOException
    //   48	55	58	java/io/IOException
    //   74	80	58	java/io/IOException
    //   29	37	63	finally
    //   37	43	63	finally
    //   48	55	63	finally
    //   60	63	63	finally
    //   74	80	63	finally
    //   80	84	87	java/lang/Exception
    //   68	72	99	java/lang/Exception
    //   13	29	111	finally
    //   13	29	121	java/io/IOException
  }

  public static void writeTo(String paramString, File paramFile)
  {
    if (paramFile == null)
      throw new IOException("Target File Can not be null in StringUtil.writeTo");
    File localFile = paramFile.getParentFile();
    if (!localFile.exists())
      localFile.mkdirs();
    FileWriter localFileWriter = new FileWriter(paramFile);
    localFileWriter.write(paramString);
    localFileWriter.close();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.util.StringUtil
 * JD-Core Version:    0.6.0
 */