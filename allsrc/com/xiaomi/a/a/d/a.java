package com.xiaomi.a.a.d;

public final class a
{
  private static char[] a;
  private static byte[] b;

  static
  {
    System.getProperty("line.separator");
    a = new char[64];
    int i = 65;
    int i6;
    for (int j = 0; i <= 90; j = i6)
    {
      char[] arrayOfChar4 = a;
      i6 = j + 1;
      arrayOfChar4[j] = i;
      i = (char)(i + 1);
    }
    int k = 97;
    while (k <= 122)
    {
      char[] arrayOfChar3 = a;
      int i5 = j + 1;
      arrayOfChar3[j] = k;
      k = (char)(k + 1);
      j = i5;
    }
    int m = 48;
    while (m <= 57)
    {
      char[] arrayOfChar2 = a;
      int i4 = j + 1;
      arrayOfChar2[j] = m;
      m = (char)(m + 1);
      j = i4;
    }
    char[] arrayOfChar1 = a;
    int n = j + 1;
    arrayOfChar1[j] = '+';
    a[n] = '/';
    b = new byte[''];
    int i3;
    for (int i1 = 0; ; i1++)
    {
      int i2 = b.length;
      i3 = 0;
      if (i1 >= i2)
        break;
      b[i1] = -1;
    }
    while (i3 < 64)
    {
      b[a[i3]] = (byte)i3;
      i3++;
    }
  }

  public static byte[] a(String paramString)
  {
    int i = 0;
    char[] arrayOfChar = paramString.toCharArray();
    int j = arrayOfChar.length;
    if (j % 4 != 0)
      throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    while ((j > 0) && (arrayOfChar[(-1 + (j + 0))] == '='))
      j--;
    int k = j * 3 / 4;
    byte[] arrayOfByte = new byte[k];
    int m = j + 0;
    int n = 0;
    int i6;
    label188: label199: int i14;
    int i15;
    int i16;
    if (i < m)
    {
      int i1 = i + 1;
      int i2 = arrayOfChar[i];
      int i3 = i1 + 1;
      int i4 = arrayOfChar[i1];
      int i5;
      int i7;
      if (i3 < m)
      {
        int i19 = i3 + 1;
        i5 = arrayOfChar[i3];
        i3 = i19;
        if (i3 >= m)
          break label188;
        int i18 = i3 + 1;
        i7 = arrayOfChar[i3];
        i6 = i18;
      }
      while (true)
      {
        if ((i2 <= 127) && (i4 <= 127) && (i5 <= 127) && (i7 <= 127))
          break label199;
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
        i5 = 65;
        break;
        i6 = i3;
        i7 = 65;
      }
      int i8 = b[i2];
      int i9 = b[i4];
      int i10 = b[i5];
      int i11 = b[i7];
      if ((i8 < 0) || (i9 < 0) || (i10 < 0) || (i11 < 0))
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
      int i12 = i8 << 2 | i9 >>> 4;
      int i13 = (i9 & 0xF) << 4 | i10 >>> 2;
      i14 = i11 | (i10 & 0x3) << 6;
      i15 = n + 1;
      arrayOfByte[n] = (byte)i12;
      if (i15 >= k)
        break label374;
      i16 = i15 + 1;
      arrayOfByte[i15] = (byte)i13;
    }
    while (true)
    {
      int i17;
      if (i16 < k)
      {
        i17 = i16 + 1;
        arrayOfByte[i16] = (byte)i14;
      }
      while (true)
      {
        n = i17;
        i = i6;
        break;
        return arrayOfByte;
        i17 = i16;
      }
      label374: i16 = i15;
    }
  }

  public static char[] a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = (2 + (i << 2)) / 3;
    char[] arrayOfChar = new char[(i + 2) / 3 << 2];
    int k = i + 0;
    int m = 0;
    int n = 0;
    if (n < k)
    {
      int i1 = n + 1;
      int i2 = 0xFF & paramArrayOfByte[n];
      int i3;
      label82: int i4;
      label105: int i8;
      int i11;
      label192: int i12;
      if (i1 < k)
      {
        int i14 = i1 + 1;
        i3 = 0xFF & paramArrayOfByte[i1];
        i1 = i14;
        if (i1 >= k)
          break label239;
        n = i1 + 1;
        i4 = 0xFF & paramArrayOfByte[i1];
        int i5 = i2 >>> 2;
        int i6 = (i2 & 0x3) << 4 | i3 >>> 4;
        int i7 = (i3 & 0xF) << 2 | i4 >>> 6;
        i8 = i4 & 0x3F;
        int i9 = m + 1;
        arrayOfChar[m] = a[i5];
        int i10 = i9 + 1;
        arrayOfChar[i9] = a[i6];
        if (i10 >= j)
          break label249;
        i11 = a[i7];
        arrayOfChar[i10] = i11;
        i12 = i10 + 1;
        if (i12 >= j)
          break label256;
      }
      label256: for (int i13 = a[i8]; ; i13 = 61)
      {
        arrayOfChar[i12] = i13;
        m = i12 + 1;
        break;
        i3 = 0;
        break label82;
        label239: n = i1;
        i4 = 0;
        break label105;
        label249: i11 = 61;
        break label192;
      }
    }
    return arrayOfChar;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.a.a.d.a
 * JD-Core Version:    0.6.0
 */