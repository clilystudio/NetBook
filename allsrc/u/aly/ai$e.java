package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ai$e
  implements bE
{
  private static final Map<String, e> k;
  private final short l;
  private final String m;

  static
  {
    e[] arrayOfe = new e[10];
    arrayOfe[0] = a;
    arrayOfe[1] = b;
    arrayOfe[2] = c;
    arrayOfe[3] = d;
    arrayOfe[4] = e;
    arrayOfe[5] = f;
    arrayOfe[6] = g;
    arrayOfe[7] = h;
    arrayOfe[8] = i;
    arrayOfe[9] = j;
    n = arrayOfe;
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      e locale = (e)localIterator.next();
      k.put(locale.b(), locale);
    }
  }

  private ai$e(short arg3, String arg4)
  {
    short s;
    this.l = s;
    Object localObject;
    this.m = localObject;
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
      return g;
    case 8:
      return h;
    case 9:
      return i;
    case 10:
    }
    return j;
  }

  public static e a(String paramString)
  {
    return (e)k.get(paramString);
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
    return this.l;
  }

  public final String b()
  {
    return this.m;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ai.e
 * JD-Core Version:    0.6.0
 */