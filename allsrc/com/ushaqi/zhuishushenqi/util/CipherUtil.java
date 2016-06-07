package com.ushaqi.zhuishushenqi.util;

import android.content.Context;
import android.util.Base64;
import com.arcsoft.hpay100.a.a;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class CipherUtil
{
  static
  {
    System.loadLibrary("test");
    "0123456789ABCDEF".toCharArray();
  }

  public static String a(String paramString1, String paramString2)
  {
    try
    {
      byte[] arrayOfByte1 = Base64.decode(paramString1.getBytes(), 0);
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte1, 0, arrayOfByte1.length, "AES");
      byte[] arrayOfByte2 = Base64.decode(paramString2, 0);
      byte[] arrayOfByte3 = a.a(arrayOfByte2, 0, 16);
      byte[] arrayOfByte4 = a.a(arrayOfByte2, 16, arrayOfByte2.length);
      IvParameterSpec localIvParameterSpec = new IvParameterSpec(arrayOfByte3);
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(2, localSecretKeySpec, localIvParameterSpec);
      String str = new String(localCipher.doFinal(arrayOfByte4));
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private static Key a(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes();
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte, 0, arrayOfByte.length, "AES");
      return localSecretKeySpec;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static String b(String paramString1, String paramString2)
  {
    try
    {
      Key localKey = a(paramString1);
      byte[] arrayOfByte1 = Base64.decode(paramString2, 0);
      byte[] arrayOfByte2 = a.a(arrayOfByte1, 0, 16);
      byte[] arrayOfByte3 = a.a(arrayOfByte1, 16, arrayOfByte1.length);
      IvParameterSpec localIvParameterSpec = new IvParameterSpec(arrayOfByte2);
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(2, localKey, localIvParameterSpec);
      String str = new String(localCipher.doFinal(arrayOfByte3));
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static native String getNewAdvert(String paramString1, String paramString2, Context paramContext);

  public static native String getNewAdvertWork(String paramString1, long paramLong, String paramString2, Context paramContext);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.CipherUtil
 * JD-Core Version:    0.6.0
 */