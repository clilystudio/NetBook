package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum av$e
  implements bE
{
  private static final Map<String, e> e;
  private final short f;
  private final String g;

  static
  {
    e[] arrayOfe = new e[4];
    arrayOfe[0] = a;
    arrayOfe[1] = b;
    arrayOfe[2] = c;
    arrayOfe[3] = d;
    h = arrayOfe;
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      e locale = (e)localIterator.next();
      e.put(locale.b(), locale);
    }
  }

  private av$e(short arg3, String arg4)
  {
    short s;
    this.f = s;
    Object localObject;
    this.g = localObject;
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
    }
    return d;
  }

  public static e a(String paramString)
  {
    return (e)e.get(paramString);
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
    return this.f;
  }

  public final String b()
  {
    return this.g;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.av.e
 * JD-Core Version:    0.6.0
 */