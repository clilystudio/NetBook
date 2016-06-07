package com.integralblue.httpresponsecache.compat;

import B;
import java.security.DigestException;
import java.security.MessageDigest;

public final class b extends MessageDigest
  implements Cloneable
{
  private long a;
  private int b;
  private byte[] c = new byte[64];
  private int d;
  private int e;
  private int f;
  private int g;

  public b()
  {
    super("MD5");
    a();
  }

  private void a()
  {
    this.d = 1732584193;
    this.e = -271733879;
    this.f = -1732584194;
    this.g = 271733878;
  }

  private final void a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.e;
    int j = this.f;
    int k = this.g;
    int m = k ^ i & (j ^ k);
    int n = 0xFF & paramArrayOfByte[paramInt] | (0xFF & paramArrayOfByte[(paramInt + 1)]) << 8 | (0xFF & paramArrayOfByte[(paramInt + 2)]) << 16 | paramArrayOfByte[(paramInt + 3)] << 24;
    int i1 = -680876936 + (m + n) + this.d;
    int i2 = i + (i1 << 7 | i1 >>> 25);
    int i3 = j ^ i2 & (i ^ j);
    int i4 = 0xFF & paramArrayOfByte[(paramInt + 4)] | (0xFF & paramArrayOfByte[(paramInt + 5)]) << 8;
    int i5 = paramInt + 10;
    int i6 = i4 | (0xFF & paramArrayOfByte[(i5 - 4)]) << 16 | paramArrayOfByte[(i5 - 3)] << 24;
    int i7 = k + (-389564586 + (i3 + i6));
    int i8 = i2 + (i7 << 12 | i7 >>> 20);
    int i9 = i ^ i8 & (i2 ^ i);
    int i10 = 0xFF & paramArrayOfByte[(i5 - 2)] | (0xFF & paramArrayOfByte[(i5 - 1)]) << 8 | (0xFF & paramArrayOfByte[i5]) << 16 | paramArrayOfByte[(i5 + 1)] << 24;
    int i11 = j + (606105819 + (i9 + i10));
    int i12 = i8 + (i11 << 17 | i11 >>> 15);
    int i13 = i2 ^ i12 & (i8 ^ i2);
    int i14 = 0xFF & paramArrayOfByte[(i5 + 2)] | (0xFF & paramArrayOfByte[(i5 + 3)]) << 8 | (0xFF & paramArrayOfByte[(i5 + 4)]) << 16 | paramArrayOfByte[(i5 + 5)] << 24;
    int i15 = i + (-1044525330 + (i13 + i14));
    int i16 = i12 + (i15 << 22 | i15 >>> 10);
    int i17 = i8 ^ i16 & (i12 ^ i8);
    int i18 = i5 + 10;
    int i19 = 0xFF & paramArrayOfByte[(i18 - 4)] | (0xFF & paramArrayOfByte[(i18 - 3)]) << 8 | (0xFF & paramArrayOfByte[(i18 - 2)]) << 16 | paramArrayOfByte[(i18 - 1)] << 24;
    int i20 = i2 + (-176418897 + (i17 + i19));
    int i21 = i16 + (i20 << 7 | i20 >>> 25);
    int i22 = i12 ^ i21 & (i16 ^ i12);
    int i23 = 0xFF & paramArrayOfByte[i18] | (0xFF & paramArrayOfByte[(i18 + 1)]) << 8 | (0xFF & paramArrayOfByte[(i18 + 2)]) << 16 | paramArrayOfByte[(i18 + 3)] << 24;
    int i24 = i8 + (1200080426 + (i22 + i23));
    int i25 = i21 + (i24 << 12 | i24 >>> 20);
    int i26 = i16 ^ i25 & (i21 ^ i16);
    int i27 = 0xFF & paramArrayOfByte[(i18 + 4)] | (0xFF & paramArrayOfByte[(i18 + 5)]) << 8;
    int i28 = i18 + 10;
    int i29 = i27 | (0xFF & paramArrayOfByte[(i28 - 4)]) << 16 | paramArrayOfByte[(i28 - 3)] << 24;
    int i30 = i12 + (-1473231341 + (i26 + i29));
    int i31 = i25 + (i30 << 17 | i30 >>> 15);
    int i32 = i21 ^ i31 & (i25 ^ i21);
    int i33 = 0xFF & paramArrayOfByte[(i28 - 2)] | (0xFF & paramArrayOfByte[(i28 - 1)]) << 8 | (0xFF & paramArrayOfByte[i28]) << 16 | paramArrayOfByte[(i28 + 1)] << 24;
    int i34 = i16 + (-45705983 + (i32 + i33));
    int i35 = i31 + (i34 << 22 | i34 >>> 10);
    int i36 = i25 ^ i35 & (i31 ^ i25);
    int i37 = 0xFF & paramArrayOfByte[(i28 + 2)] | (0xFF & paramArrayOfByte[(i28 + 3)]) << 8 | (0xFF & paramArrayOfByte[(i28 + 4)]) << 16 | paramArrayOfByte[(i28 + 5)] << 24;
    int i38 = i21 + (1770035416 + (i36 + i37));
    int i39 = i35 + (i38 << 7 | i38 >>> 25);
    int i40 = i31 ^ i39 & (i35 ^ i31);
    int i41 = i28 + 10;
    int i42 = 0xFF & paramArrayOfByte[(i41 - 4)] | (0xFF & paramArrayOfByte[(i41 - 3)]) << 8 | (0xFF & paramArrayOfByte[(i41 - 2)]) << 16 | paramArrayOfByte[(i41 - 1)] << 24;
    int i43 = i25 + (-1958414417 + (i40 + i42));
    int i44 = i39 + (i43 << 12 | i43 >>> 20);
    int i45 = i35 ^ i44 & (i39 ^ i35);
    int i46 = 0xFF & paramArrayOfByte[i41] | (0xFF & paramArrayOfByte[(i41 + 1)]) << 8 | (0xFF & paramArrayOfByte[(i41 + 2)]) << 16 | paramArrayOfByte[(i41 + 3)] << 24;
    int i47 = i31 + (-42063 + (i45 + i46));
    int i48 = i44 + (i47 << 17 | i47 >>> 15);
    int i49 = i39 ^ i48 & (i44 ^ i39);
    int i50 = 0xFF & paramArrayOfByte[(i41 + 4)] | (0xFF & paramArrayOfByte[(i41 + 5)]) << 8;
    int i51 = i41 + 10;
    int i52 = i50 | (0xFF & paramArrayOfByte[(i51 - 4)]) << 16 | paramArrayOfByte[(i51 - 3)] << 24;
    int i53 = i35 + (-1990404162 + (i49 + i52));
    int i54 = i48 + (i53 << 22 | i53 >>> 10);
    int i55 = i44 ^ i54 & (i48 ^ i44);
    int i56 = 0xFF & paramArrayOfByte[(i51 - 2)] | (0xFF & paramArrayOfByte[(i51 - 1)]) << 8 | (0xFF & paramArrayOfByte[i51]) << 16 | paramArrayOfByte[(i51 + 1)] << 24;
    int i57 = i39 + (1804603682 + (i55 + i56));
    int i58 = i54 + (i57 << 7 | i57 >>> 25);
    int i59 = i48 ^ i58 & (i54 ^ i48);
    int i60 = 0xFF & paramArrayOfByte[(i51 + 2)] | (0xFF & paramArrayOfByte[(i51 + 3)]) << 8 | (0xFF & paramArrayOfByte[(i51 + 4)]) << 16 | paramArrayOfByte[(i51 + 5)] << 24;
    int i61 = i44 + (-40341101 + (i59 + i60));
    int i62 = i58 + (i61 << 12 | i61 >>> 20);
    int i63 = i54 ^ i62 & (i58 ^ i54);
    int i64 = i51 + 10;
    int i65 = 0xFF & paramArrayOfByte[(i64 - 4)] | (0xFF & paramArrayOfByte[(i64 - 3)]) << 8 | (0xFF & paramArrayOfByte[(i64 - 2)]) << 16 | paramArrayOfByte[(i64 - 1)] << 24;
    int i66 = i48 + (-1502002290 + (i63 + i65));
    int i67 = i62 + (i66 << 17 | i66 >>> 15);
    int i68 = i58 ^ i67 & (i62 ^ i58);
    int i69 = 0xFF & paramArrayOfByte[i64] | (0xFF & paramArrayOfByte[(i64 + 1)]) << 8 | (0xFF & paramArrayOfByte[(i64 + 2)]) << 16 | paramArrayOfByte[(i64 + 3)] << 24;
    int i70 = i54 + (1236535329 + (i68 + i69));
    int i71 = i67 + (i70 << 22 | i70 >>> 10);
    int i72 = i58 + (-165796510 + (i6 + (i67 ^ i62 & (i67 ^ i71))));
    int i73 = i71 + (i72 << 5 | i72 >>> 27);
    int i74 = i62 + (-1069501632 + (i29 + (i71 ^ i67 & (i71 ^ i73))));
    int i75 = i73 + (i74 << 9 | i74 >>> 23);
    int i76 = i67 + (643717713 + (i52 + (i73 ^ i71 & (i73 ^ i75))));
    int i77 = i75 + (i76 << 14 | i76 >>> 18);
    int i78 = i71 + (-373897302 + (n + (i75 ^ i73 & (i75 ^ i77))));
    int i79 = i77 + (i78 << 20 | i78 >>> 12);
    int i80 = i73 + (-701558691 + (i23 + (i77 ^ i75 & (i77 ^ i79))));
    int i81 = i79 + (i80 << 5 | i80 >>> 27);
    int i82 = i75 + (38016083 + (i46 + (i79 ^ i77 & (i79 ^ i81))));
    int i83 = i81 + (i82 << 9 | i82 >>> 23);
    int i84 = i77 + (-660478335 + (i69 + (i81 ^ i79 & (i81 ^ i83))));
    int i85 = i83 + (i84 << 14 | i84 >>> 18);
    int i86 = i79 + (-405537848 + (i19 + (i83 ^ i81 & (i83 ^ i85))));
    int i87 = i85 + (i86 << 20 | i86 >>> 12);
    int i88 = i81 + (568446438 + (i42 + (i85 ^ i83 & (i85 ^ i87))));
    int i89 = i87 + (i88 << 5 | i88 >>> 27);
    int i90 = i83 + (-1019803690 + (i65 + (i87 ^ i85 & (i87 ^ i89))));
    int i91 = i89 + (i90 << 9 | i90 >>> 23);
    int i92 = i85 + (-187363961 + (i14 + (i89 ^ i87 & (i89 ^ i91))));
    int i93 = i91 + (i92 << 14 | i92 >>> 18);
    int i94 = i87 + (1163531501 + (i37 + (i91 ^ i89 & (i91 ^ i93))));
    int i95 = i93 + (i94 << 20 | i94 >>> 12);
    int i96 = i89 + (-1444681467 + (i60 + (i93 ^ i91 & (i93 ^ i95))));
    int i97 = i95 + (i96 << 5 | i96 >>> 27);
    int i98 = i91 + (-51403784 + (i10 + (i95 ^ i93 & (i95 ^ i97))));
    int i99 = i97 + (i98 << 9 | i98 >>> 23);
    int i100 = i93 + (1735328473 + (i33 + (i97 ^ i95 & (i97 ^ i99))));
    int i101 = i99 + (i100 << 14 | i100 >>> 18);
    int i102 = i95 + (-1926607734 + (i56 + (i99 ^ i97 & (i99 ^ i101))));
    int i103 = i101 + (i102 << 20 | i102 >>> 12);
    int i104 = i97 + (-378558 + (i23 + (i99 ^ (i101 ^ i103))));
    int i105 = i103 + (i104 << 4 | i104 >>> 28);
    int i106 = i99 + (-2022574463 + (i37 + (i101 ^ (i103 ^ i105))));
    int i107 = i105 + (i106 << 11 | i106 >>> 21);
    int i108 = i101 + (1839030562 + (i52 + (i103 ^ (i105 ^ i107))));
    int i109 = i107 + (i108 << 16 | i108 >>> 16);
    int i110 = i103 + (-35309556 + (i65 + (i105 ^ (i107 ^ i109))));
    int i111 = i109 + (i110 << 23 | i110 >>> 9);
    int i112 = i105 + (-1530992060 + (i6 + (i107 ^ (i109 ^ i111))));
    int i113 = i111 + (i112 << 4 | i112 >>> 28);
    int i114 = i107 + (1272893353 + (i19 + (i109 ^ (i111 ^ i113))));
    int i115 = i113 + (i114 << 11 | i114 >>> 21);
    int i116 = i109 + (-155497632 + (i33 + (i111 ^ (i113 ^ i115))));
    int i117 = i115 + (i116 << 16 | i116 >>> 16);
    int i118 = i111 + (-1094730640 + (i46 + (i113 ^ (i115 ^ i117))));
    int i119 = i117 + (i118 << 23 | i118 >>> 9);
    int i120 = i113 + (681279174 + (i60 + (i115 ^ (i117 ^ i119))));
    int i121 = i119 + (i120 << 4 | i120 >>> 28);
    int i122 = i115 + (-358537222 + (n + (i117 ^ (i119 ^ i121))));
    int i123 = i121 + (i122 << 11 | i122 >>> 21);
    int i124 = i117 + (-722521979 + (i14 + (i119 ^ (i121 ^ i123))));
    int i125 = i123 + (i124 << 16 | i124 >>> 16);
    int i126 = i119 + (76029189 + (i29 + (i121 ^ (i123 ^ i125))));
    int i127 = i125 + (i126 << 23 | i126 >>> 9);
    int i128 = i121 + (-640364487 + (i42 + (i123 ^ (i125 ^ i127))));
    int i129 = i127 + (i128 << 4 | i128 >>> 28);
    int i130 = i123 + (-421815835 + (i56 + (i125 ^ (i127 ^ i129))));
    int i131 = i129 + (i130 << 11 | i130 >>> 21);
    int i132 = i125 + (530742520 + (i69 + (i127 ^ (i129 ^ i131))));
    int i133 = i131 + (i132 << 16 | i132 >>> 16);
    int i134 = i127 + (-995338651 + (i10 + (i129 ^ (i131 ^ i133))));
    int i135 = i133 + (i134 << 23 | i134 >>> 9);
    int i136 = i129 + (-198630844 + (n + (i133 ^ (i135 | i131 ^ 0xFFFFFFFF))));
    int i137 = i135 + (i136 << 6 | i136 >>> 26);
    int i138 = i131 + (1126891415 + (i33 + (i135 ^ (i137 | i133 ^ 0xFFFFFFFF))));
    int i139 = i137 + (i138 << 10 | i138 >>> 22);
    int i140 = i133 + (-1416354905 + (i65 + (i137 ^ (i139 | i135 ^ 0xFFFFFFFF))));
    int i141 = i139 + (i140 << 15 | i140 >>> 17);
    int i142 = i135 + (-57434055 + (i23 + (i139 ^ (i141 | i137 ^ 0xFFFFFFFF))));
    int i143 = i141 + (i142 << 21 | i142 >>> 11);
    int i144 = i137 + (1700485571 + (i56 + (i141 ^ (i143 | i139 ^ 0xFFFFFFFF))));
    int i145 = i143 + (i144 << 6 | i144 >>> 26);
    int i146 = i139 + (-1894986606 + (i14 + (i143 ^ (i145 | i141 ^ 0xFFFFFFFF))));
    int i147 = i145 + (i146 << 10 | i146 >>> 22);
    int i148 = i141 + (-1051523 + (i46 + (i145 ^ (i147 | i143 ^ 0xFFFFFFFF))));
    int i149 = i147 + (i148 << 15 | i148 >>> 17);
    int i150 = i143 + (-2054922799 + (i6 + (i147 ^ (i149 | i145 ^ 0xFFFFFFFF))));
    int i151 = i149 + (i150 << 21 | i150 >>> 11);
    int i152 = i145 + (1873313359 + (i37 + (i149 ^ (i151 | i147 ^ 0xFFFFFFFF))));
    int i153 = i151 + (i152 << 6 | i152 >>> 26);
    int i154 = i147 + (-30611744 + (i69 + (i151 ^ (i153 | i149 ^ 0xFFFFFFFF))));
    int i155 = i153 + (i154 << 10 | i154 >>> 22);
    int i156 = i149 + (-1560198380 + (i29 + (i153 ^ (i155 | i151 ^ 0xFFFFFFFF))));
    int i157 = i155 + (i156 << 15 | i156 >>> 17);
    int i158 = i151 + (1309151649 + (i60 + (i155 ^ (i157 | i153 ^ 0xFFFFFFFF))));
    int i159 = i157 + (i158 << 21 | i158 >>> 11);
    int i160 = i153 + (-145523070 + (i19 + (i157 ^ (i159 | i155 ^ 0xFFFFFFFF))));
    int i161 = i159 + (i160 << 6 | i160 >>> 26);
    int i162 = i155 + (-1120210379 + (i52 + (i159 ^ (i161 | i157 ^ 0xFFFFFFFF))));
    int i163 = i161 + (i162 << 10 | i162 >>> 22);
    int i164 = i157 + (718787259 + (i10 + (i161 ^ (i163 | i159 ^ 0xFFFFFFFF))));
    int i165 = i163 + (i164 << 15 | i164 >>> 17);
    int i166 = i + i165;
    int i167 = i159 + (-343485551 + (i42 + (i163 ^ (i165 | i161 ^ 0xFFFFFFFF))));
    this.e = (i166 + (i167 << 21 | i167 >>> 11));
    this.f = (i165 + this.f);
    this.g = (i163 + this.g);
    this.d = (i161 + this.d);
  }

  public final Object clone()
  {
    b localb = (b)super.clone();
    localb.c = ((byte[])this.c.clone());
    return localb;
  }

  public final int engineDigest(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 >= 16)
    {
      if (paramArrayOfByte.length - paramInt1 >= 16)
      {
        byte[] arrayOfByte = this.c;
        int i = this.b;
        arrayOfByte[i] = -128;
        switch (i)
        {
        default:
          switch (i & 0x7)
          {
          default:
          case 7:
          case 6:
          case 5:
          case 4:
          case 3:
          case 2:
          case 1:
          case 0:
          }
        case 56:
        case 57:
        case 58:
        case 59:
        case 60:
        case 61:
        case 62:
        case 63:
        }
        while (true)
        {
          i += 8;
          if (i > 52)
            break label527;
          arrayOfByte[(i - 4)] = 0;
          arrayOfByte[(i - 3)] = 0;
          arrayOfByte[(i - 2)] = 0;
          arrayOfByte[(i - 1)] = 0;
          arrayOfByte[i] = 0;
          arrayOfByte[(i + 1)] = 0;
          arrayOfByte[(i + 2)] = 0;
          arrayOfByte[(i + 3)] = 0;
          continue;
          arrayOfByte[57] = 0;
          arrayOfByte[58] = 0;
          arrayOfByte[59] = 0;
          arrayOfByte[60] = 0;
          arrayOfByte[61] = 0;
          arrayOfByte[62] = 0;
          arrayOfByte[63] = 0;
          a(arrayOfByte, 0);
          i = -1;
          break;
          i -= 3;
          continue;
          i -= 2;
          arrayOfByte[(i + 3)] = 0;
          continue;
          i--;
          arrayOfByte[(i + 2)] = 0;
          arrayOfByte[(i + 3)] = 0;
          continue;
          arrayOfByte[(i + 1)] = 0;
          arrayOfByte[(i + 2)] = 0;
          arrayOfByte[(i + 3)] = 0;
          continue;
          i++;
          arrayOfByte[i] = 0;
          arrayOfByte[(i + 1)] = 0;
          arrayOfByte[(i + 2)] = 0;
          arrayOfByte[(i + 3)] = 0;
          continue;
          i += 2;
          arrayOfByte[(i - 1)] = 0;
          arrayOfByte[i] = 0;
          arrayOfByte[(i + 1)] = 0;
          arrayOfByte[(i + 2)] = 0;
          arrayOfByte[(i + 3)] = 0;
          continue;
          i += 3;
          arrayOfByte[(i - 2)] = 0;
          arrayOfByte[(i - 1)] = 0;
          arrayOfByte[i] = 0;
          arrayOfByte[(i + 1)] = 0;
          arrayOfByte[(i + 2)] = 0;
          arrayOfByte[(i + 3)] = 0;
          continue;
          i += 4;
          arrayOfByte[(i - 3)] = 0;
          arrayOfByte[(i - 2)] = 0;
          arrayOfByte[(i - 1)] = 0;
          arrayOfByte[i] = 0;
          arrayOfByte[(i + 1)] = 0;
          arrayOfByte[(i + 2)] = 0;
          arrayOfByte[(i + 3)] = 0;
        }
        label527: int j = (int)this.a << 3;
        arrayOfByte[56] = (byte)j;
        arrayOfByte[57] = (byte)(j >>> 8);
        arrayOfByte[58] = (byte)(j >>> 16);
        arrayOfByte[59] = (byte)(j >> 24);
        int k = (int)(this.a >>> 29);
        arrayOfByte[60] = (byte)k;
        arrayOfByte[61] = (byte)(k >>> 8);
        arrayOfByte[62] = (byte)(k >>> 16);
        arrayOfByte[63] = (byte)(k >> 24);
        a(arrayOfByte, 0);
        int m = this.d;
        paramArrayOfByte[paramInt1] = (byte)m;
        paramArrayOfByte[(paramInt1 + 1)] = (byte)(m >>> 8);
        paramArrayOfByte[(paramInt1 + 2)] = (byte)(m >>> 16);
        paramArrayOfByte[(paramInt1 + 3)] = (byte)(m >> 24);
        int n = paramInt1 + 4;
        int i1 = this.e;
        paramArrayOfByte[n] = (byte)i1;
        paramArrayOfByte[(paramInt1 + 5)] = (byte)(i1 >>> 8);
        int i2 = paramInt1 + 10;
        paramArrayOfByte[(i2 - 4)] = (byte)(i1 >>> 16);
        paramArrayOfByte[(i2 - 3)] = (byte)(i1 >> 24);
        int i3 = i2 - 2;
        int i4 = this.f;
        paramArrayOfByte[i3] = (byte)i4;
        paramArrayOfByte[(i2 - 1)] = (byte)(i4 >>> 8);
        paramArrayOfByte[i2] = (byte)(i4 >>> 16);
        paramArrayOfByte[(i2 + 1)] = (byte)(i4 >> 24);
        int i5 = i2 + 2;
        int i6 = this.g;
        paramArrayOfByte[i5] = (byte)i6;
        paramArrayOfByte[(i2 + 3)] = (byte)(i6 >>> 8);
        paramArrayOfByte[(i2 + 4)] = (byte)(i6 >>> 16);
        paramArrayOfByte[(i2 + 5)] = (byte)(i6 >> 24);
        engineReset();
        return 16;
      }
      throw new DigestException("insufficient space in output buffer to store the digest");
    }
    throw new DigestException("partial digests not returned");
  }

  public final byte[] engineDigest()
  {
    try
    {
      byte[] arrayOfByte = new byte[16];
      engineDigest(arrayOfByte, 0, 16);
      return arrayOfByte;
    }
    catch (DigestException localDigestException)
    {
    }
    return null;
  }

  public final int engineGetDigestLength()
  {
    return 16;
  }

  public final void engineReset()
  {
    this.b = 0;
    this.a = 0L;
    int i = 60;
    byte[] arrayOfByte = this.c;
    do
    {
      arrayOfByte[(i - 4)] = 0;
      arrayOfByte[(i - 3)] = 0;
      arrayOfByte[(i - 2)] = 0;
      arrayOfByte[(i - 1)] = 0;
      arrayOfByte[i] = 0;
      arrayOfByte[(i + 1)] = 0;
      arrayOfByte[(i + 2)] = 0;
      arrayOfByte[(i + 3)] = 0;
      i -= 8;
    }
    while (i >= 0);
    a();
  }

  public final void engineUpdate(byte paramByte)
  {
    this.a = (1L + this.a);
    if (this.b < 63)
    {
      byte[] arrayOfByte = this.c;
      int i = this.b;
      this.b = (i + 1);
      arrayOfByte[i] = paramByte;
      return;
    }
    this.c[63] = paramByte;
    a(this.c, this.b);
    this.b = 0;
  }

  public final void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i;
    int j;
    if ((paramInt1 >= 0) && (paramInt2 >= 0) && (paramInt1 + paramInt2 <= paramArrayOfByte.length))
    {
      this.a += paramInt2;
      if ((this.b <= 0) || (paramInt2 + this.b < 64))
        break label288;
      byte[] arrayOfByte1 = this.c;
      int m = this.b;
      int n = 64 - this.b;
      System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte1, m, n);
      byte[] arrayOfByte2 = this.c;
      this.b = 0;
      a(arrayOfByte2, 0);
      int i1 = paramInt1 + n;
      i = paramInt2 - n;
      j = i1;
    }
    while (true)
    {
      if (i >= 512)
      {
        a(paramArrayOfByte, j);
        a(paramArrayOfByte, j + 64);
        a(paramArrayOfByte, j + 128);
        a(paramArrayOfByte, j + 192);
        a(paramArrayOfByte, j + 256);
        a(paramArrayOfByte, j + 320);
        a(paramArrayOfByte, j + 384);
        a(paramArrayOfByte, j + 448);
        int k = j + 512;
        i -= 512;
        j = k;
        continue;
      }
      while (i >= 64)
      {
        a(paramArrayOfByte, j);
        j += 64;
        i -= 64;
      }
      if (i > 0)
      {
        System.arraycopy(paramArrayOfByte, j, this.c, this.b, i);
        this.b = (i + this.b);
      }
      return;
      throw new ArrayIndexOutOfBoundsException(paramInt1);
      label288: i = paramInt2;
      j = paramInt1;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.b
 * JD-Core Version:    0.6.0
 */