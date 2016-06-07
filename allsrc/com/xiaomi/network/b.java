package com.xiaomi.network;

public final class b
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
 * Qualified Name:     com.xiaomi.network.b
 * JD-Core Version:    0.6.0
 */