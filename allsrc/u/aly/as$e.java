package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum as$e
  implements bE
{
  private static final Map<String, e> d;
  private final short e;
  private final String f;

  static
  {
    e[] arrayOfe = new e[3];
    arrayOfe[0] = a;
    arrayOfe[1] = b;
    arrayOfe[2] = c;
    g = arrayOfe;
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      e locale = (e)localIterator.next();
      d.put(locale.b(), locale);
    }
  }

  private as$e(short arg3, String arg4)
  {
    short s;
    this.e = s;
    Object localObject;
    this.f = localObject;
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
    }
    return c;
  }

  public static e a(String paramString)
  {
    return (e)d.get(paramString);
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
    return this.e;
  }

  public final String b()
  {
    return this.f;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.as.e
 * JD-Core Version:    0.6.0
 */