package u.aly;

public final class bP
{
  private static int a = 2147483647;

  public static void a(bN parambN, byte paramByte)
  {
    a(parambN, paramByte, a);
  }

  private static void a(bN parambN, byte paramByte, int paramInt)
  {
    int i = 0;
    if (paramInt <= 0)
      throw new cf("Maximum skip depth exceeded");
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
      parambN.j();
      return;
      parambN.k();
      return;
      parambN.l();
      return;
      parambN.m();
      return;
      parambN.n();
      return;
      parambN.o();
      return;
      parambN.q();
      return;
      parambN.d();
      while (true)
      {
        bK localbK = parambN.f();
        if (localbK.b == 0)
          break;
        a(parambN, localbK.b, paramInt - 1);
      }
      parambN.e();
      return;
      bM localbM = parambN.g();
      while (i < localbM.c)
      {
        a(parambN, localbM.a, paramInt - 1);
        a(parambN, localbM.b, paramInt - 1);
        i++;
      }
      continue;
      bQ localbQ = parambN.i();
      while (i < localbQ.b)
      {
        a(parambN, localbQ.a, paramInt - 1);
        i++;
      }
      continue;
      bL localbL = parambN.h();
      while (i < localbL.b)
      {
        a(parambN, localbL.a, paramInt - 1);
        i++;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bP
 * JD-Core Version:    0.6.0
 */