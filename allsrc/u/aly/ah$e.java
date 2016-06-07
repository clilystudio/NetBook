package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ah$e
  implements bE
{
  private static final Map<String, e> b;
  private final short c = 1;
  private final String d;

  static
  {
    e[] arrayOfe = new e[1];
    arrayOfe[0] = a;
    e = arrayOfe;
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      e locale = (e)localIterator.next();
      b.put(locale.b(), locale);
    }
  }

  private ah$e(short arg3, String arg4)
  {
    Object localObject;
    this.d = localObject;
  }

  public static e a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
    }
    return a;
  }

  public static e a(String paramString)
  {
    return (e)b.get(paramString);
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
    return this.c;
  }

  public final String b()
  {
    return this.d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ah.e
 * JD-Core Version:    0.6.0
 */