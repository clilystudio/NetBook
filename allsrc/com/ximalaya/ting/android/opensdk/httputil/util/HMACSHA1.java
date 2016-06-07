package com.ximalaya.ting.android.opensdk.httputil.util;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class HMACSHA1
{
  private static final String ENCODING = "UTF-8";
  private static final String MAC_NAME = "HmacSHA1";

  public static byte[] HmacSHA1Encrypt(String paramString1, String paramString2)
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString2.getBytes("UTF-8"), "HmacSHA1");
    Mac localMac = Mac.getInstance("HmacSHA1");
    localMac.init(localSecretKeySpec);
    return localMac.doFinal(paramString1.getBytes("UTF-8"));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.util.HMACSHA1
 * JD-Core Version:    0.6.0
 */