package com.ximalaya.ting.android.opensdk.httputil.util;

public class BASE64Encoder
{
  private static final String DEFAULT_ENCODING = "UTF-8";
  private static final char[] ENCODE_TABLE;
  private static final char LAST2BYTE = (char)Integer.parseInt("00000011", 2);
  private static final char LAST4BYTE = (char)Integer.parseInt("00001111", 2);
  private static final char LAST6BYTE = (char)Integer.parseInt("00111111", 2);
  private static final char LEAD2BYTE;
  private static final char LEAD4BYTE;
  private static final char LEAD6BYTE = (char)Integer.parseInt("11111100", 2);

  static
  {
    LEAD4BYTE = (char)Integer.parseInt("11110000", 2);
    LEAD2BYTE = (char)Integer.parseInt("11000000", 2);
    ENCODE_TABLE = new char[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  }

  public static String encode(String paramString)
  {
    return encode(paramString.getBytes("UTF-8"));
  }

  public static String encode(byte[] paramArrayOfByte)
  {
    int i = 0;
    StringBuffer localStringBuffer = new StringBuffer(3 + (int)(1.34D * paramArrayOfByte.length));
    int j = 0;
    int k = 0;
    if (i >= paramArrayOfByte.length)
      if (localStringBuffer.length() % 4 == 0);
    for (int m = 4 - localStringBuffer.length() % 4; ; m--)
    {
      if (m <= 0)
      {
        return localStringBuffer.toString();
        k %= 8;
        if (k >= 8)
        {
          i++;
          break;
        }
        switch (k)
        {
        case 1:
        case 3:
        case 5:
        default:
        case 0:
        case 2:
        case 4:
        case 6:
        }
        while (true)
        {
          localStringBuffer.append(ENCODE_TABLE[j]);
          k += 6;
          break;
          j = (char)((char)(paramArrayOfByte[i] & LEAD6BYTE) >>> '\002');
          continue;
          j = (char)(paramArrayOfByte[i] & LAST6BYTE);
          continue;
          j = (char)((char)(paramArrayOfByte[i] & LAST4BYTE) << '\002');
          if (i + 1 >= paramArrayOfByte.length)
            continue;
          j = (char)(j | (paramArrayOfByte[(i + 1)] & LEAD2BYTE) >>> 6);
          continue;
          j = (char)((char)(paramArrayOfByte[i] & LAST2BYTE) << '\004');
          if (i + 1 >= paramArrayOfByte.length)
            continue;
          j = (char)(j | (paramArrayOfByte[(i + 1)] & LEAD4BYTE) >>> 4);
        }
      }
      localStringBuffer.append("=");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.util.BASE64Encoder
 * JD-Core Version:    0.6.0
 */