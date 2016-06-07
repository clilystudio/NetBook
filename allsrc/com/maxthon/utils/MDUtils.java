package com.maxthon.utils;

import java.io.FileInputStream;
import java.io.InputStream;
import java.security.MessageDigest;

public class MDUtils
{
  private static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };

  public static String getSHA(String paramString)
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
    localMessageDigest.update(paramString.getBytes());
    return getString(localMessageDigest.digest());
  }

  private static String getString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuffer.toString();
      localStringBuffer.append(paramArrayOfByte[i]);
    }
  }

  public static String md5File(String paramString)
  {
    byte[] arrayOfByte = new byte[1024];
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramString);
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i <= 0)
        {
          localFileInputStream.close();
          return toHexString(localMessageDigest.digest());
        }
        localMessageDigest.update(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  public static String md5String(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes("UTF-8"), 0, paramString.length());
      String str = toHexString(localMessageDigest.digest());
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  // ERROR //
  public static String sha1String(String paramString)
  {
    // Byte code:
    //   0: ldc 33
    //   2: invokestatic 39	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   5: astore_2
    //   6: aload_2
    //   7: aload_0
    //   8: ldc 97
    //   10: invokevirtual 100	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   13: invokevirtual 110	java/security/MessageDigest:digest	([B)[B
    //   16: invokestatic 89	com/maxthon/utils/MDUtils:toHexString	([B)Ljava/lang/String;
    //   19: astore 4
    //   21: aload 4
    //   23: areturn
    //   24: astore_1
    //   25: ldc 94
    //   27: areturn
    //   28: astore_3
    //   29: ldc 94
    //   31: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	6	24	java/lang/Exception
    //   6	21	28	java/io/UnsupportedEncodingException
  }

  public static String shaFile(String paramString)
  {
    byte[] arrayOfByte = new byte[1024];
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramString);
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i <= 0)
        {
          localFileInputStream.close();
          return toHexString(localMessageDigest.digest());
        }
        localMessageDigest.update(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  // ERROR //
  public static String shaString(String paramString)
  {
    // Byte code:
    //   0: ldc 114
    //   2: invokestatic 39	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   5: astore_2
    //   6: aload_2
    //   7: aload_0
    //   8: ldc 97
    //   10: invokevirtual 100	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   13: invokevirtual 110	java/security/MessageDigest:digest	([B)[B
    //   16: invokestatic 89	com/maxthon/utils/MDUtils:toHexString	([B)Ljava/lang/String;
    //   19: astore 4
    //   21: aload 4
    //   23: areturn
    //   24: astore_1
    //   25: ldc 94
    //   27: areturn
    //   28: astore_3
    //   29: ldc 94
    //   31: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	6	24	java/lang/Exception
    //   6	21	28	java/io/UnsupportedEncodingException
  }

  public static String toHexString(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length << 1);
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuilder.toString();
      localStringBuilder.append(HEX_DIGITS[((0xF0 & paramArrayOfByte[i]) >>> 4)]);
      localStringBuilder.append(HEX_DIGITS[(0xF & paramArrayOfByte[i])]);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.utils.MDUtils
 * JD-Core Version:    0.6.0
 */