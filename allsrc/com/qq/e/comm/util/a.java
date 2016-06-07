package com.qq.e.comm.util;

import android.util.Base64;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class a
{
  private PublicKey a;
  private final boolean b;

  private a()
  {
    try
    {
      this.a = b("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDKta2b5Vw5YkWHCAj4rJCwS227\r/35FZ29e4I6pS2B8zSq2RgBpXUuMg7oZF1Qt3x0iyg8PeyblyNeCRB6gIMehFThe\r1Y7m1FaQyaZp+CJYOTLM4/THKp9UndrEgJ/5a83vP1375YCV2lMvWARrNlBep4RN\rnESUJhQz58Gr/F39TwIDAQAB");
      bool = true;
      this.b = bool;
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        boolean bool = false;
    }
  }

  public static a a()
  {
    return a.a.a;
  }

  private String a(String paramString)
  {
    if (this.a != null)
    {
      byte[] arrayOfByte = Base64.decode(paramString, 0);
      try
      {
        Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        localCipher.init(2, this.a);
        String str = new String(localCipher.doFinal(arrayOfByte), "UTF-8").trim();
        return str;
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.e("ErrorWhileVerifySigNature", localThrowable);
      }
    }
    return null;
  }

  private static PublicKey b(String paramString)
  {
    try
    {
      byte[] arrayOfByte = Base64.decode(paramString, 0);
      PublicKey localPublicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(arrayOfByte));
      return localPublicKey;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new Exception("无此算法");
    }
    catch (InvalidKeySpecException localInvalidKeySpecException)
    {
      throw new Exception("公钥非法");
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    throw new Exception("公钥数据为空");
  }

  public final boolean a(String paramString1, String paramString2)
  {
    return b(paramString1, Md5Util.encode(paramString2));
  }

  public final boolean b(String paramString1, String paramString2)
  {
    if (StringUtil.isEmpty(paramString2))
      return false;
    if (!this.b)
      return true;
    String str = a(paramString1);
    boolean bool = paramString2.equals(str);
    GDTLogger.d("Verify Result" + bool + "src=" + paramString2 + " & target=" + str);
    return bool;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.util.a
 * JD-Core Version:    0.6.0
 */