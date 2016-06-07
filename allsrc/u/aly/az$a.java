package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum az$a
  implements bE
{
  private static final Map<String, a> c;
  private final short d;
  private final String e;

  static
  {
    a[] arrayOfa = new a[2];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    f = arrayOfa;
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      a locala = (a)localIterator.next();
      c.put(locala.b(), locala);
    }
  }

  private az$a(short arg3, String arg4)
  {
    short s;
    this.d = s;
    Object localObject;
    this.e = localObject;
  }

  public static a a(int paramInt)
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

  public static a a(String paramString)
  {
    return (a)c.get(paramString);
  }

  public static a b(int paramInt)
  {
    a locala = a(paramInt);
    if (locala == null)
      throw new IllegalArgumentException("Field " + paramInt + " doesn't exist!");
    return locala;
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
 * Qualified Name:     u.aly.az.a
 * JD-Core Version:    0.6.0
 */