package com.integralblue.httpresponsecache.compat.libcore.a;

import com.integralblue.httpresponsecache.compat.c;

public final class a
{
  private static final byte[] a = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };

  public static byte[] a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = 3 * (i / 4);
    if (j == 0)
      return com.integralblue.httpresponsecache.compat.libcore.b.a.a;
    byte[] arrayOfByte1 = new byte[j];
    int k = i;
    int m = 0;
    while (true)
    {
      int n = paramArrayOfByte[(k - 1)];
      if ((n != 10) && (n != 13) && (n != 32) && (n != 9))
      {
        if (n != 61)
          break;
        m++;
      }
      k--;
    }
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    int i7;
    int i11;
    label153: int i13;
    label217: int i10;
    int i9;
    int i8;
    if (i1 < k)
    {
      i7 = paramArrayOfByte[i1];
      if ((i7 == 10) || (i7 == 13) || (i7 == 32) || (i7 == 9))
        break label412;
      if ((i7 >= 65) && (i7 <= 90))
      {
        i11 = i7 - 65;
        int i12 = i2 << 6 | (byte)i11;
        if (i3 % 4 != 3)
          break label405;
        int i14 = i4 + 1;
        arrayOfByte1[i4] = (byte)(i12 >> 16);
        int i15 = i14 + 1;
        arrayOfByte1[i14] = (byte)(i12 >> 8);
        i13 = i15 + 1;
        arrayOfByte1[i15] = (byte)i12;
        i10 = i3 + 1;
        i9 = i13;
        i8 = i12;
      }
    }
    while (true)
    {
      i1++;
      i3 = i10;
      i4 = i9;
      i2 = i8;
      break;
      if ((i7 >= 97) && (i7 <= 122))
      {
        i11 = i7 - 71;
        break label153;
      }
      if ((i7 >= 48) && (i7 <= 57))
      {
        i11 = i7 + 4;
        break label153;
      }
      if (i7 == 43)
      {
        i11 = 62;
        break label153;
      }
      if (i7 == 47)
      {
        i11 = 63;
        break label153;
      }
      return null;
      int i6;
      if (m > 0)
      {
        int i5 = i2 << m * 6;
        i6 = i4 + 1;
        arrayOfByte1[i4] = (byte)(i5 >> 16);
        if (m != 1)
          break label398;
        i4 = i6 + 1;
        arrayOfByte1[i6] = (byte)(i5 >> 8);
      }
      while (true)
      {
        byte[] arrayOfByte2 = new byte[i4];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i4);
        return arrayOfByte2;
        label398: i4 = i6;
      }
      label405: i13 = i4;
      break label217;
      label412: i8 = i2;
      i9 = i4;
      i10 = i3;
    }
  }

  public static String b(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[(2 + paramArrayOfByte.length << 2) / 3];
    int i = paramArrayOfByte.length - paramArrayOfByte.length % 3;
    int j = 0;
    int i8;
    for (int k = 0; j < i; k = i8)
    {
      int i5 = k + 1;
      arrayOfByte[k] = a[((0xFF & paramArrayOfByte[j]) >> 2)];
      int i6 = i5 + 1;
      arrayOfByte[i5] = a[((0x3 & paramArrayOfByte[j]) << 4 | (0xFF & paramArrayOfByte[(j + 1)]) >> 4)];
      int i7 = i6 + 1;
      arrayOfByte[i6] = a[((0xF & paramArrayOfByte[(j + 1)]) << 2 | (0xFF & paramArrayOfByte[(j + 2)]) >> 6)];
      i8 = i7 + 1;
      arrayOfByte[i7] = a[(0x3F & paramArrayOfByte[(j + 2)])];
      j += 3;
    }
    switch (paramArrayOfByte.length % 3)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return c.a(arrayOfByte, 0, k, com.integralblue.httpresponsecache.compat.a.b);
      int i2 = k + 1;
      arrayOfByte[k] = a[((0xFF & paramArrayOfByte[i]) >> 2)];
      int i3 = i2 + 1;
      arrayOfByte[i2] = a[((0x3 & paramArrayOfByte[i]) << 4)];
      int i4 = i3 + 1;
      arrayOfByte[i3] = 61;
      k = i4 + 1;
      arrayOfByte[i4] = 61;
      continue;
      int m = k + 1;
      arrayOfByte[k] = a[((0xFF & paramArrayOfByte[i]) >> 2)];
      int n = m + 1;
      arrayOfByte[m] = a[((0x3 & paramArrayOfByte[i]) << 4 | (0xFF & paramArrayOfByte[(i + 1)]) >> 4)];
      int i1 = n + 1;
      arrayOfByte[n] = a[((0xF & paramArrayOfByte[(i + 1)]) << 2)];
      k = i1 + 1;
      arrayOfByte[i1] = 61;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.a.a
 * JD-Core Version:    0.6.0
 */