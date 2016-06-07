package com.squareup.okhttp.internal.spdy;

final class j
{
  private static final String[] a = { "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION" };
  private static final String[] b = new String[64];
  private static final String[] c = new String[256];

  static
  {
    for (int i = 0; i < 256; i++)
    {
      String[] arrayOfString = c;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.toBinaryString(i);
      arrayOfString[i] = String.format("%8s", arrayOfObject).replace(' ', '0');
    }
    b[0] = "";
    b[1] = "END_STREAM";
    int[] arrayOfInt1 = { 1 };
    b[8] = "PADDED";
    for (int j = 0; j <= 0; j++)
    {
      int i3 = arrayOfInt1[0];
      b[(i3 | 0x8)] = (b[i3] + "|PADDED");
    }
    b[4] = "END_HEADERS";
    b[32] = "PRIORITY";
    b[36] = "END_HEADERS|PRIORITY";
    int[] arrayOfInt2 = { 4, 32, 36 };
    int m;
    for (int k = 0; ; k++)
    {
      m = 0;
      if (k >= 3)
        break;
      int n = arrayOfInt2[k];
      for (int i1 = 0; i1 <= 0; i1++)
      {
        int i2 = arrayOfInt1[i1];
        b[(i2 | n)] = (b[i2] + '|' + b[n]);
        b[(0x8 | (i2 | n))] = (b[i2] + '|' + b[n] + "|PADDED");
      }
    }
    while (m < 64)
    {
      if (b[m] == null)
        b[m] = c[m];
      m++;
    }
  }

  static String a(boolean paramBoolean, int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
  {
    String str1;
    String str2;
    label22: Object[] arrayOfObject2;
    if (paramByte1 < 10)
    {
      str1 = a[paramByte1];
      if (paramByte2 != 0)
        break label104;
      str2 = "";
      arrayOfObject2 = new Object[5];
      if (!paramBoolean)
        break label261;
    }
    label261: for (String str3 = "<<"; ; str3 = ">>")
    {
      arrayOfObject2[0] = str3;
      arrayOfObject2[1] = Integer.valueOf(paramInt1);
      arrayOfObject2[2] = Integer.valueOf(paramInt2);
      arrayOfObject2[3] = str1;
      arrayOfObject2[4] = str2;
      return String.format("%s 0x%08x %5d %-13s %s", arrayOfObject2);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Byte.valueOf(paramByte1);
      str1 = String.format("0x%02x", arrayOfObject1);
      break;
      switch (paramByte1)
      {
      case 5:
      default:
        label104: if (paramByte2 >= 64)
          break;
      case 4:
      case 6:
      case 2:
      case 3:
      case 7:
      case 8:
      }
      for (str2 = b[paramByte2]; ; str2 = c[paramByte2])
      {
        if ((paramByte1 != 5) || ((paramByte2 & 0x4) == 0))
          break label235;
        str2 = str2.replace("HEADERS", "PUSH_PROMISE");
        break;
        if (paramByte2 == 1)
        {
          str2 = "ACK";
          break;
        }
        str2 = c[paramByte2];
        break;
        str2 = c[paramByte2];
        break;
      }
      label235: if ((paramByte1 != 0) || ((paramByte2 & 0x20) == 0))
        break label22;
      str2 = str2.replace("PRIORITY", "COMPRESSED");
      break label22;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.j
 * JD-Core Version:    0.6.0
 */