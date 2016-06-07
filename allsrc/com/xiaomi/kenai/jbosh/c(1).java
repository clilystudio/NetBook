package com.xiaomi.kenai.jbosh;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

class c
{
  private final Map<f, String> a = new HashMap();

  public static byte[] a(byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte;
    try
    {
      localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    }
    finally
    {
      try
      {
        localGZIPOutputStream.write(paramArrayOfByte);
        localGZIPOutputStream.close();
        localByteArrayOutputStream.close();
        arrayOfByte = localByteArrayOutputStream.toByteArray();
      }
      finally
      {
        try
        {
          localGZIPOutputStream.close();
          localByteArrayOutputStream.close();
          return arrayOfByte;
          localObject1 = finally;
          GZIPOutputStream localGZIPOutputStream = null;
          while (true)
          {
            try
            {
              localGZIPOutputStream.close();
              localByteArrayOutputStream.close();
              throw localObject1;
            }
            catch (IOException localIOException1)
            {
              continue;
            }
            localObject2 = finally;
          }
        }
        catch (IOException localIOException2)
        {
        }
      }
    }
    return arrayOfByte;
  }

  // ERROR //
  public static byte[] b(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 42	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 44	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore_1
    //   9: new 21	java/io/ByteArrayOutputStream
    //   12: dup
    //   13: invokespecial 22	java/io/ByteArrayOutputStream:<init>	()V
    //   16: astore_2
    //   17: new 46	java/util/zip/GZIPInputStream
    //   20: dup
    //   21: aload_1
    //   22: invokespecial 49	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   25: astore_3
    //   26: sipush 512
    //   29: newarray byte
    //   31: astore 5
    //   33: aload_3
    //   34: aload 5
    //   36: invokevirtual 53	java/util/zip/GZIPInputStream:read	([B)I
    //   39: istore 6
    //   41: iload 6
    //   43: ifle +12 -> 55
    //   46: aload_2
    //   47: aload 5
    //   49: iconst_0
    //   50: iload 6
    //   52: invokevirtual 56	java/io/ByteArrayOutputStream:write	([BII)V
    //   55: iload 6
    //   57: ifge -24 -> 33
    //   60: aload_2
    //   61: invokevirtual 39	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   64: astore 7
    //   66: aload_3
    //   67: invokevirtual 57	java/util/zip/GZIPInputStream:close	()V
    //   70: aload_2
    //   71: invokevirtual 35	java/io/ByteArrayOutputStream:close	()V
    //   74: aload 7
    //   76: areturn
    //   77: astore 4
    //   79: aconst_null
    //   80: astore_3
    //   81: aload_3
    //   82: ifnull +7 -> 89
    //   85: aload_3
    //   86: invokevirtual 57	java/util/zip/GZIPInputStream:close	()V
    //   89: aload_2
    //   90: invokevirtual 35	java/io/ByteArrayOutputStream:close	()V
    //   93: aload 4
    //   95: athrow
    //   96: astore 4
    //   98: goto -17 -> 81
    //
    // Exception table:
    //   from	to	target	type
    //   17	26	77	finally
    //   26	33	96	finally
    //   33	41	96	finally
    //   46	55	96	finally
    //   60	66	96	finally
  }

  final Map<f, String> a()
  {
    return this.a;
  }

  final void a(f paramf, String paramString)
  {
    this.a.put(paramf, paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.c
 * JD-Core Version:    0.6.0
 */