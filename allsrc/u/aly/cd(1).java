package u.aly;

import android.content.Context;

public final class cd
{
  private static bO a = null;
  private static cb b = null;

  public static bO a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (a == null)
      {
        bO localbO1 = new bO(paramContext);
        a = localbO1;
        localbO1.a(new ca(paramContext));
        a.a(new cc(paramContext));
        a.a(new aH(paramContext));
        a.a(new ce(paramContext));
        a.d();
      }
      bO localbO2 = a;
      return localbO2;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static cb b(Context paramContext)
  {
    monitorenter;
    try
    {
      if (b == null)
      {
        cb localcb1 = new cb(paramContext);
        b = localcb1;
        localcb1.b();
      }
      cb localcb2 = b;
      return localcb2;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cd
 * JD-Core Version:    0.6.0
 */