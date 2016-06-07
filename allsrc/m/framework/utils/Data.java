package m.framework.utils;

import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class Data
{
  private static final String CHAT_SET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  private static Hashon hashon = new Hashon();

  public static String AES128Decode(String paramString, byte[] paramArrayOfByte)
  {
    return new String(AES128Decode(paramString.getBytes("UTF-8"), paramArrayOfByte), "UTF-8");
  }

  public static byte[] AES128Decode(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte1 = new byte[16];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte1, 0, Math.min(paramArrayOfByte1.length, 16));
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte1, "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/NoPadding", "BC");
    localCipher.init(2, localSecretKeySpec);
    byte[] arrayOfByte2 = new byte[localCipher.getOutputSize(paramArrayOfByte2.length)];
    localCipher.doFinal(arrayOfByte2, localCipher.update(paramArrayOfByte2, 0, paramArrayOfByte2.length, arrayOfByte2, 0));
    return arrayOfByte2;
  }

  public static byte[] AES128Encode(String paramString1, String paramString2)
  {
    byte[] arrayOfByte1 = paramString1.getBytes("UTF-8");
    byte[] arrayOfByte2 = new byte[16];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, Math.min(arrayOfByte1.length, 16));
    byte[] arrayOfByte3 = paramString2.getBytes("UTF-8");
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte2, "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
    localCipher.init(1, localSecretKeySpec);
    byte[] arrayOfByte4 = new byte[localCipher.getOutputSize(arrayOfByte3.length)];
    localCipher.doFinal(arrayOfByte4, localCipher.update(arrayOfByte3, 0, arrayOfByte3.length, arrayOfByte4, 0));
    return arrayOfByte4;
  }

  public static byte[] AES128Encode(byte[] paramArrayOfByte, String paramString)
  {
    byte[] arrayOfByte1 = paramString.getBytes("UTF-8");
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte, "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
    localCipher.init(1, localSecretKeySpec);
    byte[] arrayOfByte2 = new byte[localCipher.getOutputSize(arrayOfByte1.length)];
    localCipher.doFinal(arrayOfByte2, localCipher.update(arrayOfByte1, 0, arrayOfByte1.length, arrayOfByte2, 0));
    return arrayOfByte2;
  }

  public static String MD5(String paramString)
  {
    if (paramString == null);
    byte[] arrayOfByte;
    do
    {
      return null;
      arrayOfByte = rawMD5(paramString);
    }
    while (arrayOfByte == null);
    return HEX.toHex(arrayOfByte);
  }

  public static byte[] SHA1(String paramString)
  {
    byte[] arrayOfByte = paramString.getBytes("utf-8");
    MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
    localMessageDigest.update(arrayOfByte);
    return localMessageDigest.digest();
  }

  public static String base62(long paramLong)
  {
    String str;
    if (paramLong == 0L)
      str = "0";
    while (true)
    {
      if (paramLong <= 0L)
      {
        return str;
        str = "";
        continue;
      }
      int i = (int)(paramLong % 62L);
      paramLong /= 62L;
      str = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(i) + str;
    }
  }

  public static String byteToHex(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuffer.toString();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Byte.valueOf(paramArrayOfByte[i]);
      localStringBuffer.append(String.format("%02x", arrayOfObject));
    }
  }

  public static String parseJson(HashMap<String, Object> paramHashMap)
  {
    return hashon.fromHashMap(paramHashMap);
  }

  public static HashMap<String, Object> parseJson(String paramString)
  {
    return hashon.fromJson(paramString);
  }

  public static byte[] rawMD5(String paramString)
  {
    if (paramString == null)
      return null;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes("utf-8"));
      byte[] arrayOfByte = localMessageDigest.digest();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static String urlEncode(String paramString1, String paramString2)
  {
    return URLEncoder.encode(paramString1, paramString2).replace("\\+", "%20");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.utils.Data
 * JD-Core Version:    0.6.0
 */