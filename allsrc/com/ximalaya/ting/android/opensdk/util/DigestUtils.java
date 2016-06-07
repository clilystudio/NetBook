package com.ximalaya.ting.android.opensdk.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class DigestUtils
{
  private static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };

  protected static String encodeHex(byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    char[] arrayOfChar = new char[j << 1];
    for (int k = 0; ; k++)
    {
      if (k >= j)
        return new String(arrayOfChar);
      int m = i + 1;
      arrayOfChar[i] = HEX_DIGITS[((0xF0 & paramArrayOfByte[k]) >>> 4)];
      i = m + 1;
      arrayOfChar[m] = HEX_DIGITS[(0xF & paramArrayOfByte[k])];
    }
  }

  static MessageDigest getDigest(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      return localMessageDigest;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    throw new RuntimeException(localNoSuchAlgorithmException.getMessage());
  }

  public static byte[] md5(byte[] paramArrayOfByte)
  {
    return getDigest("MD5").digest(paramArrayOfByte);
  }

  public static String md5Hex(String paramString)
  {
    return encodeHex(md5(utf8Bytes(paramString)));
  }

  public static String md5Hex(byte[] paramArrayOfByte)
  {
    return encodeHex(md5(paramArrayOfByte));
  }

  private static byte[] utf8Bytes(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new RuntimeException(localUnsupportedEncodingException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.DigestUtils
 * JD-Core Version:    0.6.0
 */