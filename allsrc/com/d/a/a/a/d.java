package com.d.a.a.a;

final class d extends b
{
  private static final byte[] f;
  private static final byte[] g;
  public final boolean c;
  public final boolean d;
  public final boolean e;
  private final byte[] h;
  private int i;
  private int j;
  private final byte[] k;

  static
  {
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      l = bool;
      f = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      g = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }

  public d(int paramInt)
  {
    this.a = null;
    boolean bool2;
    boolean bool3;
    label33: label45: byte[] arrayOfByte;
    if ((paramInt & 0x1) == 0)
    {
      bool2 = bool1;
      this.c = bool2;
      if ((paramInt & 0x2) != 0)
        break label103;
      bool3 = bool1;
      this.d = bool3;
      if ((paramInt & 0x4) == 0)
        break label109;
      this.e = bool1;
      if ((paramInt & 0x8) != 0)
        break label114;
      arrayOfByte = f;
      label62: this.k = arrayOfByte;
      this.h = new byte[2];
      this.i = 0;
      if (!this.d)
        break label122;
    }
    label103: label109: label114: label122: for (int m = 19; ; m = -1)
    {
      this.j = m;
      return;
      bool2 = false;
      break;
      bool3 = false;
      break label33;
      bool1 = false;
      break label45;
      arrayOfByte = g;
      break label62;
    }
  }

  public final boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte1 = this.k;
    byte[] arrayOfByte2 = this.a;
    int m = this.j;
    int i1;
    int i2;
    label54: int i35;
    int i36;
    int i4;
    int i3;
    switch (this.i)
    {
    default:
      i1 = -1;
      i2 = 0;
      if (i1 != -1)
      {
        arrayOfByte2[0] = arrayOfByte1[(0x3F & i1 >> 18)];
        arrayOfByte2[1] = arrayOfByte1[(0x3F & i1 >> 12)];
        arrayOfByte2[2] = arrayOfByte1[(0x3F & i1 >> 6)];
        i35 = 4;
        arrayOfByte2[3] = arrayOfByte1[(i1 & 0x3F)];
        i36 = m - 1;
        if (i36 != 0)
          break;
        if (this.e)
        {
          i35 = 5;
          arrayOfByte2[4] = 13;
        }
        i4 = i35 + 1;
        arrayOfByte2[i35] = 10;
        i3 = 19;
      }
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      label160: int i31;
      int i32;
      int i33;
      int i34;
      if (i2 + 3 <= paramInt)
      {
        int i30 = (0xFF & paramArrayOfByte[i2]) << 16 | (0xFF & paramArrayOfByte[(i2 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i2 + 2)];
        arrayOfByte2[i4] = arrayOfByte1[(0x3F & i30 >> 18)];
        arrayOfByte2[(i4 + 1)] = arrayOfByte1[(0x3F & i30 >> 12)];
        arrayOfByte2[(i4 + 2)] = arrayOfByte1[(0x3F & i30 >> 6)];
        arrayOfByte2[(i4 + 3)] = arrayOfByte1[(i30 & 0x3F)];
        i31 = i2 + 3;
        i32 = i4 + 4;
        i33 = i3 - 1;
        if (i33 != 0)
          break label1065;
        if (!this.e)
          break label1058;
        i34 = i32 + 1;
        arrayOfByte2[i32] = 13;
      }
      while (true)
      {
        i4 = i34 + 1;
        arrayOfByte2[i34] = 10;
        i2 = i31;
        i3 = 19;
        break label160;
        i1 = -1;
        i2 = 0;
        break label54;
        if (2 > paramInt)
          break;
        int i37 = (0xFF & this.h[0]) << 16 | (0xFF & paramArrayOfByte[0]) << 8 | 0xFF & paramArrayOfByte[1];
        this.i = 0;
        i1 = i37;
        i2 = 2;
        break label54;
        if (paramInt <= 0)
          break;
        int n = (0xFF & this.h[0]) << 16 | (0xFF & this.h[1]) << 8 | 0xFF & paramArrayOfByte[0];
        this.i = 0;
        i1 = n;
        i2 = 1;
        break label54;
        if (i2 - this.i == paramInt - 1)
        {
          int i21;
          int i22;
          if (this.i > 0)
          {
            i21 = this.h[0];
            i22 = i2;
          }
          for (int i23 = 1; ; i23 = 0)
          {
            int i24 = (i21 & 0xFF) << 4;
            this.i -= i23;
            int i25 = i4 + 1;
            arrayOfByte2[i4] = arrayOfByte1[(0x3F & i24 >> 6)];
            int i26 = i25 + 1;
            arrayOfByte2[i25] = arrayOfByte1[(i24 & 0x3F)];
            if (this.c)
            {
              int i29 = i26 + 1;
              arrayOfByte2[i26] = 61;
              i26 = i29 + 1;
              arrayOfByte2[i29] = 61;
            }
            if (this.d)
            {
              if (this.e)
              {
                int i28 = i26 + 1;
                arrayOfByte2[i26] = 13;
                i26 = i28;
              }
              int i27 = i26 + 1;
              arrayOfByte2[i26] = 10;
              i26 = i27;
            }
            i2 = i22;
            i4 = i26;
            if ((l) || (this.i == 0))
              break;
            throw new AssertionError();
            int i20 = i2 + 1;
            i21 = paramArrayOfByte[i2];
            i22 = i20;
          }
        }
        int i7;
        int i8;
        label714: int i11;
        label755: int i15;
        int i16;
        if (i2 - this.i == paramInt - 2)
          if (this.i > 1)
          {
            i7 = this.h[0];
            i8 = 1;
            int i9 = (i7 & 0xFF) << 10;
            if (this.i <= 0)
              break label936;
            byte[] arrayOfByte3 = this.h;
            int i19 = i8 + 1;
            i11 = arrayOfByte3[i8];
            i8 = i19;
            int i12 = i9 | (i11 & 0xFF) << 2;
            this.i -= i8;
            int i13 = i4 + 1;
            arrayOfByte2[i4] = arrayOfByte1[(0x3F & i12 >> 12)];
            int i14 = i13 + 1;
            arrayOfByte2[i13] = arrayOfByte1[(0x3F & i12 >> 6)];
            i15 = i14 + 1;
            arrayOfByte2[i14] = arrayOfByte1[(i12 & 0x3F)];
            if (!this.c)
              break label1051;
            i16 = i15 + 1;
            arrayOfByte2[i15] = 61;
          }
        while (true)
        {
          if (this.d)
          {
            if (this.e)
            {
              int i18 = i16 + 1;
              arrayOfByte2[i16] = 13;
              i16 = i18;
            }
            int i17 = i16 + 1;
            arrayOfByte2[i16] = 10;
            i16 = i17;
          }
          i4 = i16;
          break;
          int i6 = i2 + 1;
          i7 = paramArrayOfByte[i2];
          i2 = i6;
          i8 = 0;
          break label714;
          label936: int i10 = i2 + 1;
          i11 = paramArrayOfByte[i2];
          i2 = i10;
          break label755;
          if ((!this.d) || (i4 <= 0) || (i3 == 19))
            break;
          int i5;
          if (this.e)
          {
            i5 = i4 + 1;
            arrayOfByte2[i4] = 13;
          }
          while (true)
          {
            i4 = i5 + 1;
            arrayOfByte2[i5] = 10;
            break;
            if ((!l) && (i2 != paramInt))
              throw new AssertionError();
            this.b = i4;
            this.j = i3;
            return true;
            i5 = i4;
          }
          label1051: i16 = i15;
        }
        label1058: i34 = i32;
      }
      label1065: i3 = i33;
      i4 = i32;
      i2 = i31;
      continue;
      i3 = i36;
      i4 = i35;
      continue;
      i3 = m;
      i4 = 0;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.d.a.a.a.d
 * JD-Core Version:    0.6.0
 */