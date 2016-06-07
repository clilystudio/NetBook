package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ao$e
  implements bE
{
  private static final Map<String, e> f;
  private final short g;
  private final String h;

  static
  {
    e[] arrayOfe = new e[5];
    arrayOfe[0] = a;
    arrayOfe[1] = b;
    arrayOfe[2] = c;
    arrayOfe[3] = d;
    arrayOfe[4] = e;
    i = arrayOfe;
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      e locale = (e)localIterator.next();
      f.put(locale.b(), locale);
    }
  }

  private ao$e(short arg3, String arg4)
  {
    short s;
    this.g = s;
    Object localObject;
    this.h = localObject;
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
    }
    return e;
  }

  public static e a(String paramString)
  {
    return (e)f.get(paramString);
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
    return this.g;
  }

  public final String b()
  {
    return this.h;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ao.e
 * JD-Core Version:    0.6.0
 */