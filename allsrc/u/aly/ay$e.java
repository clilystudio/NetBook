package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ay$e
  implements bE
{
  private static final Map<String, e> c;
  private final short d;
  private final String e;

  static
  {
    e[] arrayOfe = new e[2];
    arrayOfe[0] = a;
    arrayOfe[1] = b;
    f = arrayOfe;
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      e locale = (e)localIterator.next();
      c.put(locale.b(), locale);
    }
  }

  private ay$e(short arg3, String arg4)
  {
    short s;
    this.d = s;
    Object localObject;
    this.e = localObject;
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
    }
    return b;
  }

  public static e a(String paramString)
  {
    return (e)c.get(paramString);
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
    return this.d;
  }

  public final String b()
  {
    return this.e;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ay.e
 * JD-Core Version:    0.6.0
 */