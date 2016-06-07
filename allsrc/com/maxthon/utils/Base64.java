package com.maxthon.utils;

public final class Base64
{
  private static final int BASELENGTH = 128;
  private static final int EIGHTBIT = 8;
  private static final int FOURBYTE = 4;
  private static final int LOOKUPLENGTH = 64;
  private static char PAD = '\000';
  private static final int SIGN = -128;
  private static final int SIXTEENBIT = 16;
  private static final int TWENTYFOURBITGROUP = 24;
  private static byte[] base64Alphabet;
  private static char[] lookUpBase64Alphabet;

  static
  {
    int i = 0;
    PAD = '=';
    base64Alphabet = new byte[''];
    lookUpBase64Alphabet = new char[64];
    int j = 0;
    int k;
    label34: int m;
    label43: int n;
    label53: int i1;
    label79: int i2;
    int i3;
    label93: int i4;
    if (j >= 128)
    {
      k = 90;
      if (k >= 65)
        break label140;
      m = 122;
      if (m >= 97)
        break label156;
      n = 57;
      if (n >= 48)
        break label175;
      base64Alphabet[43] = 62;
      base64Alphabet[47] = 63;
      i1 = 0;
      if (i1 <= 25)
        break label196;
      i2 = 26;
      i3 = 0;
      if (i2 <= 51)
        break label214;
      i4 = 52;
    }
    while (true)
    {
      if (i4 > 61)
      {
        lookUpBase64Alphabet[62] = '+';
        lookUpBase64Alphabet[63] = '/';
        return;
        base64Alphabet[j] = -1;
        j++;
        break;
        label140: base64Alphabet[k] = (byte)(k - 65);
        k--;
        break label34;
        label156: base64Alphabet[m] = (byte)(26 + (m - 97));
        m--;
        break label43;
        label175: base64Alphabet[n] = (byte)(52 + (n - 48));
        n--;
        break label53;
        label196: lookUpBase64Alphabet[i1] = (char)(i1 + 65);
        i1++;
        break label79;
        label214: lookUpBase64Alphabet[i2] = (char)(i3 + 97);
        i2++;
        i3++;
        break label93;
      }
      lookUpBase64Alphabet[i4] = (char)(i + 48);
      i4++;
      i++;
    }
  }

  public static byte[] decode(String paramString)
  {
    if (paramString == null);
    byte[] arrayOfByte1;
    int m;
    int i12;
    int i13;
    char c7;
    char c8;
    while (true)
    {
      return null;
      char[] arrayOfChar = paramString.toCharArray();
      int i = removeWhiteSpace(arrayOfChar);
      if (i % 4 != 0)
        continue;
      int j = i / 4;
      if (j == 0)
        return new byte[0];
      arrayOfByte1 = new byte[j * 3];
      int k = 0;
      m = 0;
      for (int n = 0; ; n++)
      {
        if (n >= j - 1)
        {
          int i10 = k + 1;
          char c5 = arrayOfChar[k];
          if (!isData(c5))
            break;
          int i11 = i10 + 1;
          char c6 = arrayOfChar[i10];
          if (!isData(c6))
            break;
          i12 = base64Alphabet[c5];
          i13 = base64Alphabet[c6];
          int i14 = i11 + 1;
          c7 = arrayOfChar[i11];
          c8 = arrayOfChar[i14];
          if ((isData(c7)) && (isData(c8)))
            break label498;
          if ((!isPad(c7)) || (!isPad(c8)))
            break label399;
          if ((i13 & 0xF) != 0)
            break;
          byte[] arrayOfByte3 = new byte[1 + n * 3];
          System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, n * 3);
          arrayOfByte3[m] = (byte)(i12 << 2 | i13 >> 4);
          return arrayOfByte3;
        }
        int i1 = k + 1;
        char c1 = arrayOfChar[k];
        if (!isData(c1))
          break;
        int i2 = i1 + 1;
        char c2 = arrayOfChar[i1];
        if (!isData(c2))
          break;
        int i3 = i2 + 1;
        char c3 = arrayOfChar[i2];
        if (!isData(c3))
          break;
        k = i3 + 1;
        char c4 = arrayOfChar[i3];
        if (!isData(c4))
          break;
        int i4 = base64Alphabet[c1];
        int i5 = base64Alphabet[c2];
        int i6 = base64Alphabet[c3];
        int i7 = base64Alphabet[c4];
        int i8 = m + 1;
        arrayOfByte1[m] = (byte)(i4 << 2 | i5 >> 4);
        int i9 = i8 + 1;
        arrayOfByte1[i8] = (byte)((i5 & 0xF) << 4 | 0xF & i6 >> 2);
        m = i9 + 1;
        arrayOfByte1[i9] = (byte)(i7 | i6 << 6);
      }
      label399: if ((isPad(c7)) || (!isPad(c8)))
        continue;
      int i15 = base64Alphabet[c7];
      if ((i15 & 0x3) != 0)
        continue;
      byte[] arrayOfByte2 = new byte[2 + n * 3];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, n * 3);
      int i16 = m + 1;
      arrayOfByte2[m] = (byte)(i12 << 2 | i13 >> 4);
      arrayOfByte2[i16] = (byte)((i13 & 0xF) << 4 | 0xF & i15 >> 2);
      return arrayOfByte2;
    }
    label498: int i17 = base64Alphabet[c7];
    int i18 = base64Alphabet[c8];
    int i19 = m + 1;
    arrayOfByte1[m] = (byte)(i12 << 2 | i13 >> 4);
    int i20 = i19 + 1;
    arrayOfByte1[i19] = (byte)((i13 & 0xF) << 4 | 0xF & i17 >> 2);
    arrayOfByte1[i20] = (byte)(i18 | i17 << 6);
    return arrayOfByte1;
  }

  public static String encode(byte[] paramArrayOfByte)
  {
    int i = 0;
    if (paramArrayOfByte == null)
      return null;
    int j = paramArrayOfByte.length << 3;
    if (j == 0)
      return "";
    int k = j % 24;
    int m = j / 24;
    int n;
    char[] arrayOfChar;
    int i1;
    int i2;
    int i27;
    int i29;
    if (k != 0)
    {
      n = m + 1;
      arrayOfChar = new char[n << 2];
      i1 = 0;
      i2 = 0;
      if (i1 < m)
        break label170;
      if (k != 8)
        break label416;
      i27 = paramArrayOfByte[i];
      int i28 = (byte)(i27 & 0x3);
      if ((i27 & 0xFFFFFF80) != 0)
        break label402;
      i29 = (byte)(i27 >> 2);
      label95: int i30 = i2 + 1;
      arrayOfChar[i2] = lookUpBase64Alphabet[i29];
      int i31 = i30 + 1;
      arrayOfChar[i30] = lookUpBase64Alphabet[(i28 << 4)];
      int i32 = i31 + 1;
      arrayOfChar[i31] = PAD;
      arrayOfChar[i32] = PAD;
    }
    label170: label234: label249: 
    do
    {
      return new String(arrayOfChar);
      n = m;
      break;
      int i3 = i + 1;
      int i4 = paramArrayOfByte[i];
      int i5 = i3 + 1;
      int i6 = paramArrayOfByte[i3];
      int i7 = i5 + 1;
      int i8 = paramArrayOfByte[i5];
      int i9 = (byte)(i6 & 0xF);
      int i10 = (byte)(i4 & 0x3);
      int i11;
      int i12;
      if ((i4 & 0xFFFFFF80) == 0)
      {
        i11 = (byte)(i4 >> 2);
        if ((i6 & 0xFFFFFF80) != 0)
          break label373;
        i12 = (byte)(i6 >> 4);
        if ((i8 & 0xFFFFFF80) != 0)
          break label387;
      }
      for (int i13 = (byte)(i8 >> 6); ; i13 = (byte)(0xFC ^ i8 >> 6))
      {
        int i14 = i2 + 1;
        arrayOfChar[i2] = lookUpBase64Alphabet[i11];
        int i15 = i14 + 1;
        arrayOfChar[i14] = lookUpBase64Alphabet[(i12 | i10 << 4)];
        int i16 = i15 + 1;
        arrayOfChar[i15] = lookUpBase64Alphabet[(i13 | i9 << 2)];
        int i17 = i16 + 1;
        arrayOfChar[i16] = lookUpBase64Alphabet[(i8 & 0x3F)];
        i1++;
        i2 = i17;
        i = i7;
        break;
        i11 = (byte)(0xC0 ^ i4 >> 2);
        break label234;
        i12 = (byte)(0xF0 ^ i6 >> 4);
        break label249;
      }
      i29 = (byte)(0xC0 ^ i27 >> 2);
      break label95;
    }
    while (k != 16);
    label373: int i18 = paramArrayOfByte[i];
    label387: label402: label416: int i19 = paramArrayOfByte[(i + 1)];
    int i20 = (byte)(i19 & 0xF);
    int i21 = (byte)(i18 & 0x3);
    int i22;
    if ((i18 & 0xFFFFFF80) == 0)
    {
      i22 = (byte)(i18 >> 2);
      label464: if ((i19 & 0xFFFFFF80) != 0)
        break label562;
    }
    label562: for (int i23 = (byte)(i19 >> 4); ; i23 = (byte)(0xF0 ^ i19 >> 4))
    {
      int i24 = i2 + 1;
      arrayOfChar[i2] = lookUpBase64Alphabet[i22];
      int i25 = i24 + 1;
      arrayOfChar[i24] = lookUpBase64Alphabet[(i23 | i21 << 4)];
      int i26 = i25 + 1;
      arrayOfChar[i25] = lookUpBase64Alphabet[(i20 << 2)];
      arrayOfChar[i26] = PAD;
      break;
      i22 = (byte)(0xC0 ^ i18 >> 2);
      break label464;
    }
  }

  private static boolean isData(char paramChar)
  {
    return (paramChar < '') && (base64Alphabet[paramChar] != -1);
  }

  private static boolean isPad(char paramChar)
  {
    return paramChar == PAD;
  }

  private static boolean isWhiteSpace(char paramChar)
  {
    return (paramChar == ' ') || (paramChar == '\r') || (paramChar == '\n') || (paramChar == '\t');
  }

  private static int removeWhiteSpace(char[] paramArrayOfChar)
  {
    int i = 0;
    if (paramArrayOfChar == null)
      return i;
    int j = paramArrayOfChar.length;
    int k = 0;
    label13: int m;
    if (k < j)
    {
      if (isWhiteSpace(paramArrayOfChar[k]))
        break label47;
      m = i + 1;
      paramArrayOfChar[i] = paramArrayOfChar[k];
    }
    while (true)
    {
      k++;
      i = m;
      break label13;
      break;
      label47: m = i;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.utils.Base64
 * JD-Core Version:    0.6.0
 */