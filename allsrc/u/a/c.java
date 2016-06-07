package u.a;

import android.content.Context;
import android.content.res.Resources;

public class c
{
  private static final String a = c.class.getName();
  private static c b = null;
  private Resources c;
  private final String d;

  private c(Context paramContext)
  {
    this.c = paramContext.getResources();
    this.d = paramContext.getPackageName();
  }

  private int a(String paramString1, String paramString2)
  {
    int i = this.c.getIdentifier(paramString1, paramString2, this.d);
    if (i == 0)
    {
      b.b(a, "getRes(" + paramString2 + "/ " + paramString1 + ")");
      b.b(a, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. ");
      i = 0;
    }
    return i;
  }

  public static c a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (b == null)
        b = new c(paramContext.getApplicationContext());
      c localc = b;
      return localc;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final int a(String paramString)
  {
    return a(paramString, "id");
  }

  public final int b(String paramString)
  {
    return a(paramString, "drawable");
  }

  public final int c(String paramString)
  {
    return a(paramString, "layout");
  }

  public final int d(String paramString)
  {
    return a(paramString, "string");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.a.c
 * JD-Core Version:    0.6.0
 */