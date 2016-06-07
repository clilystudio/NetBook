package okio;

import java.io.EOFException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class ByteString
  implements Serializable
{
  public static final ByteString EMPTY;
  static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final long serialVersionUID = 1L;
  final byte[] data;
  transient int hashCode;
  transient String utf8;

  static
  {
    EMPTY = of(new byte[0]);
  }

  ByteString(byte[] paramArrayOfByte)
  {
    this.data = paramArrayOfByte;
  }

  private static int a(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9'))
      return paramChar - '0';
    if ((paramChar >= 'a') && (paramChar <= 'f'))
      return 10 + (paramChar - 'a');
    if ((paramChar >= 'A') && (paramChar <= 'F'))
      return 10 + (paramChar - 'A');
    throw new IllegalArgumentException("Unexpected hex digit: " + paramChar);
  }

  private ByteString a(String paramString)
  {
    try
    {
      ByteString localByteString = of(MessageDigest.getInstance(paramString).digest(this.data));
      return localByteString;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    throw new AssertionError(localNoSuchAlgorithmException);
  }

  public static ByteString decodeBase64(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("base64 == null");
    byte[] arrayOfByte = e.a(paramString);
    if (arrayOfByte != null)
      return new ByteString(arrayOfByte);
    return null;
  }

  public static ByteString decodeHex(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("hex == null");
    if (paramString.length() % 2 != 0)
      throw new IllegalArgumentException("Unexpected hex string: " + paramString);
    byte[] arrayOfByte = new byte[paramString.length() / 2];
    for (int i = 0; i < arrayOfByte.length; i++)
      arrayOfByte[i] = (byte)((a(paramString.charAt(i << 1)) << 4) + a(paramString.charAt(1 + (i << 1))));
    return of(arrayOfByte);
  }

  public static ByteString encodeUtf8(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("s == null");
    ByteString localByteString = new ByteString(paramString.getBytes(B.a));
    localByteString.utf8 = paramString;
    return localByteString;
  }

  public static ByteString of(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("data == null");
    return new ByteString((byte[])paramArrayOfByte.clone());
  }

  public static ByteString of(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("data == null");
    B.a(paramArrayOfByte.length, paramInt1, paramInt2);
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return new ByteString(arrayOfByte);
  }

  public static ByteString read(InputStream paramInputStream, int paramInt)
  {
    if (paramInputStream == null)
      throw new IllegalArgumentException("in == null");
    if (paramInt < 0)
      throw new IllegalArgumentException("byteCount < 0: " + paramInt);
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      int j = paramInputStream.read(arrayOfByte, i, paramInt - i);
      if (j == -1)
        throw new EOFException();
      i += j;
    }
    return new ByteString(arrayOfByte);
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    ByteString localByteString = read(paramObjectInputStream, paramObjectInputStream.readInt());
    try
    {
      Field localField = ByteString.class.getDeclaredField("data");
      localField.setAccessible(true);
      localField.set(this, localByteString.data);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new AssertionError();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    throw new AssertionError();
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeInt(this.data.length);
    paramObjectOutputStream.write(this.data);
  }

  public String base64()
  {
    return e.a(this.data);
  }

  public String base64Url()
  {
    return e.b(this.data);
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    return ((paramObject instanceof ByteString)) && (((ByteString)paramObject).size() == this.data.length) && (((ByteString)paramObject).rangeEquals(0, this.data, 0, this.data.length));
  }

  public byte getByte(int paramInt)
  {
    return this.data[paramInt];
  }

  public int hashCode()
  {
    int i = this.hashCode;
    if (i != 0)
      return i;
    int j = Arrays.hashCode(this.data);
    this.hashCode = j;
    return j;
  }

  public String hex()
  {
    int i = 0;
    char[] arrayOfChar = new char[this.data.length << 1];
    byte[] arrayOfByte = this.data;
    int j = arrayOfByte.length;
    int k = 0;
    while (i < j)
    {
      int m = arrayOfByte[i];
      int n = k + 1;
      arrayOfChar[k] = HEX_DIGITS[(0xF & m >> 4)];
      k = n + 1;
      arrayOfChar[n] = HEX_DIGITS[(m & 0xF)];
      i++;
    }
    return new String(arrayOfChar);
  }

  public ByteString md5()
  {
    return a("MD5");
  }

  public boolean rangeEquals(int paramInt1, ByteString paramByteString, int paramInt2, int paramInt3)
  {
    return paramByteString.rangeEquals(paramInt2, this.data, paramInt1, paramInt3);
  }

  public boolean rangeEquals(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    return (paramInt1 <= this.data.length - paramInt3) && (paramInt2 <= paramArrayOfByte.length - paramInt3) && (B.a(this.data, paramInt1, paramArrayOfByte, paramInt2, paramInt3));
  }

  public ByteString sha256()
  {
    return a("SHA-256");
  }

  public int size()
  {
    return this.data.length;
  }

  public ByteString substring(int paramInt)
  {
    return substring(paramInt, this.data.length);
  }

  public ByteString substring(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException("beginIndex < 0");
    if (paramInt2 > this.data.length)
      throw new IllegalArgumentException("endIndex > length(" + this.data.length + ")");
    int i = paramInt2 - paramInt1;
    if (i < 0)
      throw new IllegalArgumentException("endIndex < beginIndex");
    if ((paramInt1 == 0) && (paramInt2 == this.data.length))
      return this;
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(this.data, paramInt1, arrayOfByte, 0, i);
    return new ByteString(arrayOfByte);
  }

  public ByteString toAsciiLowercase()
  {
    for (int i = 0; ; i++)
    {
      if (i < this.data.length)
      {
        int j = this.data[i];
        if ((j < 65) || (j > 90))
          continue;
        byte[] arrayOfByte = (byte[])this.data.clone();
        int k = i + 1;
        arrayOfByte[i] = (byte)(j + 32);
        for (int m = k; m < arrayOfByte.length; m++)
        {
          int n = arrayOfByte[m];
          if ((n < 65) || (n > 90))
            continue;
          arrayOfByte[m] = (byte)(n + 32);
        }
        this = new ByteString(arrayOfByte);
      }
      return this;
    }
  }

  public ByteString toAsciiUppercase()
  {
    for (int i = 0; ; i++)
    {
      if (i < this.data.length)
      {
        int j = this.data[i];
        if ((j < 97) || (j > 122))
          continue;
        byte[] arrayOfByte = (byte[])this.data.clone();
        int k = i + 1;
        arrayOfByte[i] = (byte)(j - 32);
        for (int m = k; m < arrayOfByte.length; m++)
        {
          int n = arrayOfByte[m];
          if ((n < 97) || (n > 122))
            continue;
          arrayOfByte[m] = (byte)(n - 32);
        }
        this = new ByteString(arrayOfByte);
      }
      return this;
    }
  }

  public byte[] toByteArray()
  {
    return (byte[])this.data.clone();
  }

  public String toString()
  {
    if (this.data.length == 0)
      return "ByteString[size=0]";
    if (this.data.length <= 16)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(this.data.length);
      arrayOfObject2[1] = hex();
      return String.format("ByteString[size=%s data=%s]", arrayOfObject2);
    }
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.data.length);
    arrayOfObject1[1] = md5().hex();
    return String.format("ByteString[size=%s md5=%s]", arrayOfObject1);
  }

  public String utf8()
  {
    String str1 = this.utf8;
    if (str1 != null)
      return str1;
    String str2 = new String(this.data, B.a);
    this.utf8 = str2;
    return str2;
  }

  public void write(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null)
      throw new IllegalArgumentException("out == null");
    paramOutputStream.write(this.data);
  }

  void write(f paramf)
  {
    paramf.b(this.data, 0, this.data.length);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.ByteString
 * JD-Core Version:    0.6.0
 */