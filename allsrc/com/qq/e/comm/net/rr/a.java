package com.qq.e.comm.net.rr;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class a
{
  private static final byte[] a = { 91, -62 };
  private static Cipher b = null;
  private static Cipher c = null;
  private static byte[] d = Base64.decode("4M3PpUC4Vu1uMp+Y0Mxd+vfc6v4ggJAINfgTlH74pis=", 0);

  @SuppressLint({"TrulyRandom"})
  private static Cipher a()
  {
    monitorenter;
    try
    {
      Cipher localCipher2;
      if (b != null)
        localCipher2 = b;
      while (true)
      {
        return localCipher2;
        try
        {
          Cipher localCipher1 = Cipher.getInstance("AES/ECB/PKCS7Padding");
          localCipher1.init(1, new SecretKeySpec(d, "AES"));
          b = localCipher1;
          localCipher2 = b;
        }
        catch (Exception localException)
        {
          throw new a.a("Fail To Init Cipher", localException);
        }
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    try
    {
      localDataOutputStream.write(a);
      localDataOutputStream.writeByte(1);
      localDataOutputStream.writeByte(2);
      localDataOutputStream.write(c(com.qq.e.comm.a.a(paramArrayOfByte)));
      localDataOutputStream.close();
      byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    throw new a.b("Exception while packaging byte array", localException);
  }

  private static Cipher b()
  {
    monitorenter;
    try
    {
      Cipher localCipher2;
      if (c != null)
        localCipher2 = c;
      while (true)
      {
        return localCipher2;
        try
        {
          Cipher localCipher1 = Cipher.getInstance("AES/ECB/PKCS7Padding");
          localCipher1.init(2, new SecretKeySpec(d, "AES"));
          c = localCipher1;
          localCipher2 = c;
        }
        catch (Exception localException)
        {
          throw new a.a("Fail To Init Cipher", localException);
        }
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  @TargetApi(9)
  public static byte[] b(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < 4))
      throw new a.b("S2SS Package FormatError", null);
    try
    {
      DataInputStream localDataInputStream = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
      byte[] arrayOfByte1 = new byte[4];
      localDataInputStream.read(arrayOfByte1);
      if ((a[0] != arrayOfByte1[0]) || (a[1] != arrayOfByte1[1]) || (1 != arrayOfByte1[2]) || (2 != arrayOfByte1[3]))
        throw new a.b("S2SS Package Magic/Version FormatError", null);
    }
    catch (Exception localException)
    {
      throw new a.b("Exception while packaging byte array", localException);
    }
    byte[] arrayOfByte2 = com.qq.e.comm.a.b(d(Arrays.copyOfRange(paramArrayOfByte, 4, paramArrayOfByte.length)));
    return arrayOfByte2;
  }

  private static byte[] c(byte[] paramArrayOfByte)
  {
    Cipher localCipher = a();
    try
    {
      byte[] arrayOfByte = localCipher.doFinal(paramArrayOfByte);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    throw new a.a("Exception While encrypt byte array", localException);
  }

  private static byte[] d(byte[] paramArrayOfByte)
  {
    Cipher localCipher = b();
    try
    {
      byte[] arrayOfByte = localCipher.doFinal(paramArrayOfByte);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    throw new a.a("Exception While dencrypt byte array", localException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.net.rr.a
 * JD-Core Version:    0.6.0
 */