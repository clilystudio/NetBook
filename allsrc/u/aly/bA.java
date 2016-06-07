package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.arcsoft.hpay100.a.a;
import java.security.MessageDigest;
import java.util.Locale;

public final class bA
{
  private final byte[] a = new byte[8];
  private String b = "1.0";
  private String c = null;
  private byte[] d = null;
  private byte[] e = null;
  private byte[] f = null;
  private int g = 0;
  private int h = 0;
  private int i = 0;
  private byte[] j = null;
  private byte[] k = null;

  private bA(byte[] paramArrayOfByte1, String paramString, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length == 0))
      throw new Exception("entity is null or empty");
    this.c = paramString;
    this.i = paramArrayOfByte1.length;
    this.j = a.f(paramArrayOfByte1);
    this.h = (int)(System.currentTimeMillis() / 1000L);
    this.k = paramArrayOfByte2;
  }

  public static bA a(Context paramContext, String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      String str1 = bs.k(paramContext);
      String str2 = bs.c(paramContext);
      SharedPreferences localSharedPreferences = a.M(paramContext);
      String str3 = localSharedPreferences.getString("signature", null);
      int m = localSharedPreferences.getInt("serial", 1);
      bA localbA = new bA(paramArrayOfByte, paramString, (str2 + str1).getBytes());
      localbA.b(str3);
      localbA.g = m;
      if (localbA.d == null)
        localbA.d = localbA.a(localbA.a, (int)(System.currentTimeMillis() / 1000L));
      localbA.e = localbA.a(localbA.d, localbA.h);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(b(localbA.d));
      localStringBuilder.append(localbA.g);
      localStringBuilder.append(localbA.h);
      localStringBuilder.append(localbA.i);
      localStringBuilder.append(b(localbA.e));
      localbA.f = a(localStringBuilder.toString().getBytes());
      localSharedPreferences.edit().putInt("serial", m + 1).putString("signature", localbA.b()).commit();
      return localbA;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte = null;
    if (paramString == null);
    while (true)
    {
      return arrayOfByte;
      int m = paramString.length();
      int n = m % 2;
      arrayOfByte = null;
      if (n != 0)
        continue;
      arrayOfByte = new byte[m / 2];
      for (int i1 = 0; i1 < m; i1 += 2)
        arrayOfByte[(i1 / 2)] = (byte)Integer.valueOf(paramString.substring(i1, i1 + 2), 16).intValue();
    }
  }

  private static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramArrayOfByte);
      byte[] arrayOfByte = localMessageDigest.digest();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    int m = 0;
    byte[] arrayOfByte1 = a(this.k);
    byte[] arrayOfByte2 = a(this.j);
    int n = arrayOfByte1.length;
    byte[] arrayOfByte3 = new byte[n << 1];
    int i1 = 0;
    int i2;
    label46: byte[] arrayOfByte4;
    if (i1 >= n)
    {
      i2 = 0;
      if (i2 < 2)
        break label132;
      arrayOfByte4 = new byte[4];
      arrayOfByte4[0] = (byte)paramInt;
      arrayOfByte4[1] = (byte)(paramInt >> 8);
      arrayOfByte4[2] = (byte)(paramInt >> 16);
      arrayOfByte4[3] = (byte)(paramInt >> 24);
    }
    while (true)
    {
      if (m >= arrayOfByte3.length)
      {
        return arrayOfByte3;
        arrayOfByte3[(i1 << 1)] = arrayOfByte2[i1];
        arrayOfByte3[(1 + (i1 << 1))] = arrayOfByte1[i1];
        i1++;
        break;
        label132: arrayOfByte3[i2] = paramArrayOfByte[i2];
        arrayOfByte3[(-1 + (arrayOfByte3.length - i2))] = paramArrayOfByte[(-1 + (paramArrayOfByte.length - i2))];
        i2++;
        break label46;
      }
      arrayOfByte3[m] = (byte)(arrayOfByte3[m] ^ arrayOfByte4[(m % 4)]);
      m++;
    }
  }

  private String b()
  {
    return b(this.d);
  }

  private static String b(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int m = 0; ; m++)
    {
      if (m >= paramArrayOfByte.length)
        return localStringBuffer.toString().toLowerCase(Locale.US);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Byte.valueOf(paramArrayOfByte[m]);
      localStringBuffer.append(String.format("%02X", arrayOfObject));
    }
  }

  private void b(String paramString)
  {
    this.d = a(paramString);
  }

  public final byte[] a()
  {
    bh localbh = new bh();
    localbh.a(this.b);
    localbh.b(this.c);
    localbh.c(b(this.d));
    localbh.a(this.g);
    localbh.c(this.h);
    localbh.d(this.i);
    localbh.a(this.j);
    localbh.d(b(this.e));
    localbh.e(b(this.f));
    try
    {
      byte[] arrayOfByte = new bF().a(localbh);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.b;
    localStringBuilder.append(String.format("version : %s\n", arrayOfObject1));
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = this.c;
    localStringBuilder.append(String.format("address : %s\n", arrayOfObject2));
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = b(this.d);
    localStringBuilder.append(String.format("signature : %s\n", arrayOfObject3));
    Object[] arrayOfObject4 = new Object[1];
    arrayOfObject4[0] = Integer.valueOf(this.g);
    localStringBuilder.append(String.format("serial : %s\n", arrayOfObject4));
    Object[] arrayOfObject5 = new Object[1];
    arrayOfObject5[0] = Integer.valueOf(this.h);
    localStringBuilder.append(String.format("timestamp : %d\n", arrayOfObject5));
    Object[] arrayOfObject6 = new Object[1];
    arrayOfObject6[0] = Integer.valueOf(this.i);
    localStringBuilder.append(String.format("length : %d\n", arrayOfObject6));
    Object[] arrayOfObject7 = new Object[1];
    arrayOfObject7[0] = b(this.e);
    localStringBuilder.append(String.format("guid : %s\n", arrayOfObject7));
    Object[] arrayOfObject8 = new Object[1];
    arrayOfObject8[0] = b(this.f);
    localStringBuilder.append(String.format("checksum : %s ", arrayOfObject8));
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bA
 * JD-Core Version:    0.6.0
 */