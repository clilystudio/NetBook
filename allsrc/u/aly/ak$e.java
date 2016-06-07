package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ak$e
  implements bE
{
  private static final Map<String, e> r;
  private final short s;
  private final String t;

  static
  {
    e[] arrayOfe = new e[17];
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
    arrayOfe[10] = k;
    arrayOfe[11] = l;
    arrayOfe[12] = m;
    arrayOfe[13] = n;
    arrayOfe[14] = o;
    arrayOfe[15] = p;
    arrayOfe[16] = q;
    u = arrayOfe;
    r = new HashMap();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      e locale = (e)localIterator.next();
      r.put(locale.b(), locale);
    }
  }

  private ak$e(short arg3, String arg4)
  {
    short s1;
    this.s = s1;
    Object localObject;
    this.t = localObject;
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
      return j;
    case 11:
      return k;
    case 12:
      return l;
    case 13:
      return m;
    case 14:
      return n;
    case 15:
      return o;
    case 16:
      return p;
    case 17:
    }
    return q;
  }

  public static e a(String paramString)
  {
    return (e)r.get(paramString);
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
    return this.s;
  }

  public final String b()
  {
    return this.t;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ak.e
 * JD-Core Version:    0.6.0
 */