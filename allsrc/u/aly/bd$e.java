package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum bd$e
  implements bE
{
  private static final Map<String, e> h;
  private final short i;
  private final String j;

  static
  {
    e[] arrayOfe = new e[7];
    arrayOfe[0] = a;
    arrayOfe[1] = b;
    arrayOfe[2] = c;
    arrayOfe[3] = d;
    arrayOfe[4] = e;
    arrayOfe[5] = f;
    arrayOfe[6] = g;
    k = arrayOfe;
    h = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      e locale = (e)localIterator.next();
      h.put(locale.b(), locale);
    }
  }

  private bd$e(short arg3, String arg4)
  {
    short s;
    this.i = s;
    Object localObject;
    this.j = localObject;
  }

  public static e a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
      return a;
    case 2:
      return b;
    case 3:
      return c;
    case 4:
      return d;
    case 5:
      return e;
    case 6:
      return f;
    case 7:
    }
    return g;
  }

  public static e a(String paramString)
  {
    return (e)h.get(paramString);
  }

  public static e b(int paramInt)
  {
    e locale = a(paramInt);
    if (locale == null)
      throw new IllegalArgumentException("Field " + paramInt + " doesn't exist!");
    return locale;
  }

  public final short a()
  {
    return this.i;
  }

  public final String b()
  {
    return this.j;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bd.e
 * JD-Core Version:    0.6.0
 */