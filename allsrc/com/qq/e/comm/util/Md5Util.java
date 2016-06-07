package com.qq.e.comm.util;

import android.util.Base64;
import java.security.MessageDigest;

public class Md5Util
{
  private static final String[] a = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };

  public static String byteArrayToHexString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      int j = paramArrayOfByte[i];
      if (j < 0)
        j += 256;
      int k = j / 16;
      int m = j % 16;
      localStringBuffer.append(a[k] + a[m]);
    }
    return localStringBuffer.toString();
  }

  // ERROR //
  public static String encode(java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +6 -> 7
    //   4: ldc 72
    //   6: areturn
    //   7: ldc 74
    //   9: invokestatic 80	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   12: astore 8
    //   14: new 82	java/io/FileInputStream
    //   17: dup
    //   18: aload_0
    //   19: invokespecial 85	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   22: astore 5
    //   24: sipush 1024
    //   27: newarray byte
    //   29: astore 10
    //   31: aload 5
    //   33: aload 10
    //   35: invokevirtual 89	java/io/FileInputStream:read	([B)I
    //   38: istore 11
    //   40: iload 11
    //   42: ifle +32 -> 74
    //   45: aload 8
    //   47: aload 10
    //   49: iconst_0
    //   50: iload 11
    //   52: invokevirtual 93	java/security/MessageDigest:update	([BII)V
    //   55: goto -24 -> 31
    //   58: astore 9
    //   60: aload 5
    //   62: astore_2
    //   63: aload_2
    //   64: ifnull +7 -> 71
    //   67: aload_2
    //   68: invokevirtual 96	java/io/FileInputStream:close	()V
    //   71: ldc 72
    //   73: areturn
    //   74: aload 8
    //   76: invokevirtual 100	java/security/MessageDigest:digest	()[B
    //   79: invokestatic 102	com/qq/e/comm/util/Md5Util:byteArrayToHexString	([B)Ljava/lang/String;
    //   82: astore 12
    //   84: aload 5
    //   86: invokevirtual 96	java/io/FileInputStream:close	()V
    //   89: aload 12
    //   91: areturn
    //   92: astore 13
    //   94: aload 12
    //   96: areturn
    //   97: astore 4
    //   99: aconst_null
    //   100: astore 5
    //   102: aload 4
    //   104: astore 6
    //   106: aload 5
    //   108: ifnull +8 -> 116
    //   111: aload 5
    //   113: invokevirtual 96	java/io/FileInputStream:close	()V
    //   116: aload 6
    //   118: athrow
    //   119: astore_3
    //   120: goto -49 -> 71
    //   123: astore 7
    //   125: goto -9 -> 116
    //   128: astore 6
    //   130: goto -24 -> 106
    //   133: astore_1
    //   134: aconst_null
    //   135: astore_2
    //   136: goto -73 -> 63
    //
    // Exception table:
    //   from	to	target	type
    //   24	31	58	java/lang/Exception
    //   31	40	58	java/lang/Exception
    //   45	55	58	java/lang/Exception
    //   74	84	58	java/lang/Exception
    //   84	89	92	java/lang/Exception
    //   7	24	97	finally
    //   67	71	119	java/lang/Exception
    //   111	116	123	java/lang/Exception
    //   24	31	128	finally
    //   31	40	128	finally
    //   45	55	128	finally
    //   74	84	128	finally
    //   7	24	133	java/lang/Exception
  }

  // ERROR //
  public static String encode(String paramString)
  {
    // Byte code:
    //   0: new 10	java/lang/String
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 106	java/lang/String:<init>	(Ljava/lang/String;)V
    //   8: astore_1
    //   9: ldc 74
    //   11: invokestatic 80	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   14: aload_1
    //   15: invokevirtual 109	java/lang/String:getBytes	()[B
    //   18: invokevirtual 112	java/security/MessageDigest:digest	([B)[B
    //   21: invokestatic 102	com/qq/e/comm/util/Md5Util:byteArrayToHexString	([B)Ljava/lang/String;
    //   24: astore_3
    //   25: aload_3
    //   26: areturn
    //   27: astore 4
    //   29: aconst_null
    //   30: areturn
    //   31: astore_2
    //   32: aload_1
    //   33: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	27	java/lang/Exception
    //   9	25	31	java/lang/Exception
  }

  public static String encodeBase64String(String paramString)
  {
    byte[] arrayOfByte = Base64.decode(paramString, 0);
    try
    {
      String str = byteArrayToHexString(MessageDigest.getInstance("MD5").digest(arrayOfByte));
      return str;
    }
    catch (Exception localException)
    {
      GDTLogger.e("Exception while md5 base64String", localException);
    }
    return null;
  }

  public static byte[] hexStringtoByteArray(String paramString)
  {
    if (paramString.length() % 2 != 0)
      return null;
    byte[] arrayOfByte = new byte[paramString.length() / 2];
    int i = 0;
    if (i < -1 + paramString.length())
    {
      char c1 = paramString.charAt(i);
      char c2 = paramString.charAt(i + 1);
      int j = Character.toLowerCase(c1);
      int k = Character.toLowerCase(c2);
      int m;
      label74: int n;
      if (j <= 57)
      {
        m = j - 48;
        n = m << 4;
        if (k > 57)
          break label141;
      }
      label141: for (int i1 = n + (k - 48); ; i1 = n + (10 + (k - 97)))
      {
        if (i1 > 127)
          i1 -= 256;
        int i2 = (byte)i1;
        arrayOfByte[(i / 2)] = i2;
        i += 2;
        break;
        m = 10 + (j - 97);
        break label74;
      }
    }
    return arrayOfByte;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.util.Md5Util
 * JD-Core Version:    0.6.0
 */