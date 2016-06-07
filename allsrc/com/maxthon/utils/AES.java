package com.maxthon.utils;

import android.util.Base64;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class AES
{
  private static final String AESTYPE = "AES/ECB/PKCS5Padding";

  public static String AES_Decrypt(String paramString1, String paramString2)
  {
    try
    {
      Key localKey = generateKey(paramString1);
      Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
      localCipher.init(2, localKey);
      byte[] arrayOfByte2 = localCipher.doFinal(Base64.decode(paramString2, 0));
      arrayOfByte1 = arrayOfByte2;
      return new String(arrayOfByte1).trim();
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public static String AES_Encrypt(String paramString1, String paramString2)
  {
    try
    {
      Key localKey = generateKey(paramString1);
      Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
      localCipher.init(1, localKey);
      byte[] arrayOfByte2 = localCipher.doFinal(paramString2.getBytes("UTF-8"));
      arrayOfByte1 = arrayOfByte2;
      return new String(Base64.encode(arrayOfByte1, 0));
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  private static Key generateKey(String paramString)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString.getBytes("UTF-8"), "AES");
      return localSecretKeySpec;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    throw localException;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.utils.AES
 * JD-Core Version:    0.6.0
 */