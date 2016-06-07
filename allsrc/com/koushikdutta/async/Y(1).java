package com.koushikdutta.async;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.b;
import com.koushikdutta.async.a.d;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;

public class Y
{
  static
  {
    if (!Y.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public static void a(A paramA, byte[] paramArrayOfByte, a parama)
  {
    ByteBuffer localByteBuffer = v.b(paramArrayOfByte.length);
    localByteBuffer.put(paramArrayOfByte);
    localByteBuffer.flip();
    v localv = new v();
    localv.a(localByteBuffer);
    ab localab = new ab(paramA, localv, parama);
    paramA.a(localab);
    localab.a();
  }

  public static void a(y paramy, v paramv)
  {
    b localb = null;
    while (!paramy.h())
    {
      localb = paramy.d();
      if (localb == null)
        break;
      int i = paramv.c();
      if (i <= 0)
        break;
      localb.a(paramy, paramv);
      if ((i != paramv.c()) || (localb != paramy.d()) || (paramy.h()))
        continue;
      System.out.println("handler: " + localb);
      if (!a)
        throw new AssertionError();
      throw new RuntimeException("mDataHandler failed to consume data, yet remains the mDataHandler.");
    }
    if ((paramv.c() != 0) && (!paramy.h()))
    {
      System.out.println("handler: " + localb);
      System.out.println("emitter: " + paramy);
      if (!a)
        throw new AssertionError();
      throw new RuntimeException("Not all data was consumed by Util.emitAllData");
    }
  }

  public static void a(InputStream paramInputStream, long paramLong, A paramA, a parama)
  {
    Z localZ = new Z(parama);
    aa localaa = new aa(paramA, paramInputStream, paramLong, localZ);
    paramA.a(localaa);
    paramA.a(localZ);
    localaa.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.Y
 * JD-Core Version:    0.6.0
 */