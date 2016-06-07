package com.d.a.a.a;

final class c extends b
{
  private static final int[] c = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
  private int d;
  private int e;
  private final int[] f;

  static
  {
    new int[] { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
  }

  public c(byte[] paramArrayOfByte)
  {
    this.a = paramArrayOfByte;
    this.f = c;
    this.d = 0;
    this.e = 0;
  }

  public final boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    if (this.d == 6)
      return false;
    int i = this.d;
    byte[] arrayOfByte = this.a;
    int[] arrayOfInt = this.f;
    int j = 0;
    int k = i;
    int m = 0;
    int n = 0;
    if (m < paramInt)
      if (k == 0)
      {
        while (m + 4 <= paramInt)
        {
          j = arrayOfInt[(0xFF & paramArrayOfByte[m])] << 18 | arrayOfInt[(0xFF & paramArrayOfByte[(m + 1)])] << 12 | arrayOfInt[(0xFF & paramArrayOfByte[(m + 2)])] << 6 | arrayOfInt[(0xFF & paramArrayOfByte[(m + 3)])];
          if (j < 0)
            break;
          arrayOfByte[(n + 2)] = (byte)j;
          arrayOfByte[(n + 1)] = (byte)(j >> 8);
          arrayOfByte[n] = (byte)(j >> 16);
          n += 3;
          m += 4;
        }
        if (m >= paramInt);
      }
      else
      {
        int i4 = m + 1;
        int i5 = arrayOfInt[(0xFF & paramArrayOfByte[m])];
        switch (k)
        {
        default:
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        }
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    m = i4;
                    break;
                    if (i5 < 0)
                      continue;
                    k++;
                    j = i5;
                    m = i4;
                    break;
                  }
                  while (i5 == -1);
                  this.d = 6;
                  return false;
                  if (i5 < 0)
                    continue;
                  j = i5 | j << 6;
                  k++;
                  m = i4;
                  break;
                }
                while (i5 == -1);
                this.d = 6;
                return false;
                if (i5 >= 0)
                {
                  j = i5 | j << 6;
                  k++;
                  m = i4;
                  break;
                }
                if (i5 != -2)
                  continue;
                int i6 = n + 1;
                arrayOfByte[n] = (byte)(j >> 4);
                k = 4;
                n = i6;
                m = i4;
                break;
              }
              while (i5 == -1);
              this.d = 6;
              return false;
              if (i5 >= 0)
              {
                j = i5 | j << 6;
                arrayOfByte[(n + 2)] = (byte)j;
                arrayOfByte[(n + 1)] = (byte)(j >> 8);
                arrayOfByte[n] = (byte)(j >> 16);
                n += 3;
                m = i4;
                k = 0;
                break;
              }
              if (i5 != -2)
                continue;
              arrayOfByte[(n + 1)] = (byte)(j >> 2);
              arrayOfByte[n] = (byte)(j >> 10);
              n += 2;
              k = 5;
              m = i4;
              break;
            }
            while (i5 == -1);
            this.d = 6;
            return false;
            if (i5 != -2)
              continue;
            k++;
            m = i4;
            break;
          }
          while (i5 == -1);
          this.d = 6;
          return false;
        }
        while (i5 == -1);
        this.d = 6;
        return false;
      }
    int i1 = j;
    switch (k)
    {
    case 0:
    default:
    case 1:
    case 2:
    case 3:
      while (true)
      {
        this.d = k;
        this.b = n;
        return true;
        this.d = 6;
        return false;
        int i3 = n + 1;
        arrayOfByte[n] = (byte)(i1 >> 4);
        n = i3;
        continue;
        int i2 = n + 1;
        arrayOfByte[n] = (byte)(i1 >> 10);
        n = i2 + 1;
        arrayOfByte[i2] = (byte)(i1 >> 2);
      }
    case 4:
    }
    this.d = 6;
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.d.a.a.a.c
 * JD-Core Version:    0.6.0
 */