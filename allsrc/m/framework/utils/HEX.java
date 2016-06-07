package m.framework.utils;

public class HEX
{
  private static final char[] DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };

  public static byte[] decodeHex(char[] paramArrayOfChar)
  {
    int i = 0;
    int j = paramArrayOfChar.length;
    if ((j & 0x1) != 0)
      throw new RuntimeException("Odd number of characters.");
    byte[] arrayOfByte = new byte[j >> 1];
    for (int k = 0; ; k++)
    {
      if (i >= j)
        return arrayOfByte;
      int m = toDigit(paramArrayOfChar[i], i) << 4;
      int n = i + 1;
      int i1 = m | toDigit(paramArrayOfChar[n], n);
      i = n + 1;
      arrayOfByte[k] = (byte)i1;
    }
  }

  public static byte[] decodeHexString(String paramString)
  {
    return decodeHex(paramString.toCharArray());
  }

  public static char[] encodeHex(byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    char[] arrayOfChar = new char[j << 1];
    for (int k = 0; ; k++)
    {
      if (k >= j)
        return arrayOfChar;
      int m = i + 1;
      arrayOfChar[i] = DIGITS[((0xF0 & paramArrayOfByte[k]) >>> 4)];
      i = m + 1;
      arrayOfChar[m] = DIGITS[(0xF & paramArrayOfByte[k])];
    }
  }

  public static String encodeHexString(byte[] paramArrayOfByte)
  {
    return new String(encodeHex(paramArrayOfByte));
  }

  public static byte[] toByte(String paramString)
  {
    byte[] arrayOfByte = null;
    if (paramString == null);
    while (true)
    {
      return arrayOfByte;
      int i = paramString.length();
      int j = i % 2;
      arrayOfByte = null;
      if (j == 1)
        continue;
      int k = i / 2;
      arrayOfByte = new byte[k];
      for (int m = 0; m < k; m++)
        arrayOfByte[m] = (byte)Integer.parseInt(paramString.substring(m << 1, 2 + (m << 1)), 16);
    }
  }

  protected static int toDigit(char paramChar, int paramInt)
  {
    int i = Character.digit(paramChar, 16);
    if (i == -1)
      throw new RuntimeException("Illegal hexadecimal charcter " + paramChar + " at index " + paramInt);
    return i;
  }

  public static String toHex(byte[] paramArrayOfByte)
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

  public byte[] decode(Object paramObject)
  {
    try
    {
      if ((paramObject instanceof String));
      for (char[] arrayOfChar = ((String)paramObject).toCharArray(); ; arrayOfChar = (char[])paramObject)
        return decodeHex(arrayOfChar);
    }
    catch (ClassCastException localClassCastException)
    {
    }
    throw new RuntimeException(localClassCastException.getMessage());
  }

  public byte[] decode(byte[] paramArrayOfByte)
  {
    return decodeHex(new String(paramArrayOfByte).toCharArray());
  }

  public byte[] encode(byte[] paramArrayOfByte)
  {
    return new String(encodeHex(paramArrayOfByte)).getBytes();
  }

  public char[] encode(Object paramObject)
  {
    try
    {
      if ((paramObject instanceof String));
      for (byte[] arrayOfByte = ((String)paramObject).getBytes(); ; arrayOfByte = (byte[])paramObject)
        return encodeHex(arrayOfByte);
    }
    catch (ClassCastException localClassCastException)
    {
    }
    throw new RuntimeException(localClassCastException.getMessage());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.utils.HEX
 * JD-Core Version:    0.6.0
 */