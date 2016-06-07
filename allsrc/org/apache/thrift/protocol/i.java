package org.apache.thrift.protocol;

public final class i
{
  private static int a = 2147483647;

  public static void a(f paramf, byte paramByte)
  {
    a(paramf, paramByte, a);
  }

  private static void a(f paramf, byte paramByte, int paramInt)
  {
    int i = 0;
    if (paramInt <= 0)
      throw new org.apache.thrift.e("Maximum skip depth exceeded");
    switch (paramByte)
    {
    case 5:
    case 7:
    case 9:
    default:
    case 2:
    case 3:
    case 6:
    case 8:
    case 10:
    case 4:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    }
    while (true)
    {
      return;
      paramf.j();
      return;
      paramf.k();
      return;
      paramf.l();
      return;
      paramf.m();
      return;
      paramf.n();
      return;
      paramf.o();
      return;
      paramf.q();
      return;
      paramf.d();
      while (true)
      {
        c localc = paramf.f();
        if (localc.a == 0)
          break;
        a(paramf, localc.a, paramInt - 1);
      }
      paramf.e();
      return;
      e locale = paramf.g();
      while (i < locale.c)
      {
        a(paramf, locale.a, paramInt - 1);
        a(paramf, locale.b, paramInt - 1);
        i++;
      }
      continue;
      j localj = paramf.i();
      while (i < localj.b)
      {
        a(paramf, localj.a, paramInt - 1);
        i++;
      }
      continue;
      d locald = paramf.h();
      while (i < locald.b)
      {
        a(paramf, locald.a, paramInt - 1);
        i++;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.thrift.protocol.i
 * JD-Core Version:    0.6.0
 */