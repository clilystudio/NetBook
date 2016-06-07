package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.xmpush.thrift.d;
import com.xiaomi.xmpush.thrift.h;
import com.xiaomi.xmpush.thrift.i;
import com.xiaomi.xmpush.thrift.k;
import com.xiaomi.xmpush.thrift.m;
import com.xiaomi.xmpush.thrift.n;
import com.xiaomi.xmpush.thrift.p;
import com.xiaomi.xmpush.thrift.r;
import com.xiaomi.xmpush.thrift.t;
import java.nio.ByteBuffer;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class j
{
  private static final byte[] a = { 100, 23, 84, 114, 72, 0, 4, 97, 73, 97, 2, 52, 84, 102, 18, 32 };

  protected static <T extends org.apache.thrift.b<T, ?>> h a(Context paramContext, T paramT, com.xiaomi.xmpush.thrift.a parama)
  {
    if (!parama.equals(com.xiaomi.xmpush.thrift.a.a));
    for (boolean bool = true; ; bool = false)
      return a(paramContext, paramT, parama, bool);
  }

  protected static <T extends org.apache.thrift.b<T, ?>> h a(Context paramContext, T paramT, com.xiaomi.xmpush.thrift.a parama, boolean paramBoolean)
  {
    Object localObject = com.arcsoft.hpay100.a.a.a(paramT);
    if (localObject == null)
    {
      com.xiaomi.a.a.a.b.a("invoke convertThriftObjectToBytes method, return null.");
      return null;
    }
    h localh = new h();
    byte[] arrayOfByte1;
    if (paramBoolean)
    {
      arrayOfByte1 = com.xiaomi.a.a.d.a.a(g.a(paramContext).e());
      com.xiaomi.a.a.a.b.b(Arrays.toString(arrayOfByte1));
    }
    try
    {
      byte[] arrayOfByte2 = a(arrayOfByte1, 1).doFinal(localObject);
      localObject = arrayOfByte2;
      d locald = new d();
      locald.a = 5L;
      locald.b = "fakeid";
      localh.a(locald);
      localh.a(ByteBuffer.wrap(localObject));
      localh.a(parama);
      localh.c(true);
      localh.b(paramContext.getPackageName());
      localh.a(paramBoolean);
      localh.a(g.a(paramContext).b());
      return localh;
    }
    catch (Exception localException)
    {
      while (true)
        com.xiaomi.a.a.a.b.c("encryption error. ");
    }
  }

  private static Cipher a(byte[] paramArrayOfByte, int paramInt)
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte, "AES");
    IvParameterSpec localIvParameterSpec = new IvParameterSpec(a);
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(paramInt, localSecretKeySpec, localIvParameterSpec);
    return localCipher;
  }

  protected static org.apache.thrift.b a(Context paramContext, h paramh)
  {
    byte[] arrayOfByte2;
    if (paramh.c())
      arrayOfByte2 = com.xiaomi.a.a.d.a.a(g.a(paramContext).e());
    while (true)
    {
      try
      {
        byte[] arrayOfByte3 = paramh.f();
        byte[] arrayOfByte4 = a(arrayOfByte2, 2).doFinal(arrayOfByte3);
        arrayOfByte1 = arrayOfByte4;
        com.xiaomi.xmpush.thrift.a locala = paramh.a();
        switch (k.a[locala.ordinal()])
        {
        default:
          localObject = null;
          if (localObject == null)
            continue;
          com.arcsoft.hpay100.a.a.a((org.apache.thrift.b)localObject, arrayOfByte1);
          return localObject;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        }
      }
      catch (Exception localException)
      {
        throw new org.apache.thrift.e("the aes decrypt failed.", localException);
      }
      byte[] arrayOfByte1 = paramh.f();
      continue;
      Object localObject = new k();
      continue;
      localObject = new r();
      continue;
      localObject = new p();
      continue;
      localObject = new t();
      continue;
      localObject = new n();
      continue;
      localObject = new com.xiaomi.xmpush.thrift.e();
      continue;
      localObject = new com.xiaomi.xmpush.thrift.g();
      continue;
      localObject = new m();
      continue;
      localObject = new i();
      continue;
      localObject = new com.xiaomi.xmpush.thrift.g();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.j
 * JD-Core Version:    0.6.0
 */