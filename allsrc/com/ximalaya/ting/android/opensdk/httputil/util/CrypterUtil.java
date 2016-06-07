package com.ximalaya.ting.android.opensdk.httputil.util;

import com.ximalaya.ting.android.opensdk.util.DigestUtils;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class CrypterUtil
{
  private static final String HMAC_SHA1 = "HmacSHA1";

  public static byte[] hmacSHA1(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null))
      return null;
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte2, "HmacSHA1");
    Mac localMac = Mac.getInstance("HmacSHA1");
    localMac.init(localSecretKeySpec);
    return localMac.doFinal(paramArrayOfByte1);
  }

  public static String hmacSHA1ToStr(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
      return null;
    return hmacSHA1ToStr(paramString1.getBytes(), paramString2.getBytes());
  }

  public static String hmacSHA1ToStr(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return DigestUtils.md5Hex(hmacSHA1(paramArrayOfByte1, paramArrayOfByte2));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.util.CrypterUtil
 * JD-Core Version:    0.6.0
 */