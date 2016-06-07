package u.aly;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class bx
{
  public static final String a = System.getProperty("line.separator");

  public static String a(InputStream paramInputStream)
  {
    InputStreamReader localInputStreamReader = new InputStreamReader(paramInputStream);
    char[] arrayOfChar = new char[1024];
    StringWriter localStringWriter = new StringWriter();
    while (true)
    {
      int i = localInputStreamReader.read(arrayOfChar);
      if (-1 == i)
        return localStringWriter.toString();
      localStringWriter.write(arrayOfChar, 0, i);
    }
  }

  public static String a(String paramString)
  {
    int i = 0;
    if (paramString == null)
      return null;
    try
    {
      byte[] arrayOfByte1 = paramString.getBytes();
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(arrayOfByte1);
      byte[] arrayOfByte2 = localMessageDigest.digest();
      StringBuffer localStringBuffer = new StringBuffer();
      while (true)
      {
        if (i >= arrayOfByte2.length)
          return localStringBuffer.toString();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Byte.valueOf(arrayOfByte2[i]);
        localStringBuffer.append(String.format("%02X", arrayOfObject));
        i++;
      }
    }
    catch (Exception localException)
    {
    }
    return paramString.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
  }

  public static void a(File paramFile, byte[] paramArrayOfByte)
  {
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
    try
    {
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.flush();
      return;
    }
    finally
    {
      a(localFileOutputStream);
    }
    throw localObject;
  }

  private static void a(OutputStream paramOutputStream)
  {
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static String b(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte = localMessageDigest.digest();
      StringBuffer localStringBuffer = new StringBuffer();
      for (int i = 0; ; i++)
      {
        if (i >= arrayOfByte.length)
          return localStringBuffer.toString();
        localStringBuffer.append(Integer.toHexString(0xFF & arrayOfByte[i]));
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      bt.a("helper", "getMD5 error", localNoSuchAlgorithmException);
    }
    return "";
  }

  public static byte[] b(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (-1 == i)
        return localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
  }

  public static void c(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static boolean c(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bx
 * JD-Core Version:    0.6.0
 */