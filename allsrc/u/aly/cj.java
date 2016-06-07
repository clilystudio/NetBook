package u.aly;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class cj<T extends cj<?, ?>, F extends bE>
  implements bz<T, F>
{
  private static final Map<Class<? extends bT>, bU> a;
  protected Object b;
  protected F c;

  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put(bV.class, new bH(0));
    a.put(bW.class, new bJ(0));
  }

  protected cj()
  {
    this.c = null;
    this.b = null;
  }

  protected cj(F paramF, Object paramObject)
  {
    b(paramF, paramObject);
  }

  protected cj(cj<T, F> paramcj)
  {
    if (!paramcj.getClass().equals(getClass()))
      throw new ClassCastException();
    this.c = paramcj.c;
    this.b = a(paramcj.b);
  }

  private static Object a(Object paramObject)
  {
    if ((paramObject instanceof bz))
      paramObject = ((bz)paramObject).g();
    do
    {
      return paramObject;
      if ((paramObject instanceof ByteBuffer))
        return bB.b((ByteBuffer)paramObject);
      if ((paramObject instanceof List))
      {
        List localList = (List)paramObject;
        ArrayList localArrayList = new ArrayList(localList.size());
        Iterator localIterator = localList.iterator();
        while (true)
        {
          if (!localIterator.hasNext())
            return localArrayList;
          localArrayList.add(a(localIterator.next()));
        }
      }
      if ((paramObject instanceof Set))
        return a((Set)paramObject);
    }
    while (!(paramObject instanceof Map));
    return a((Map)paramObject);
  }

  private static Map a(Map<Object, Object> paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localHashMap;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put(a(localEntry.getKey()), a(localEntry.getValue()));
    }
  }

  private static Set a(Set paramSet)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = paramSet.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localHashSet;
      localHashSet.add(a(localIterator.next()));
    }
  }

  protected abstract Object a(bN parambN, bK parambK);

  protected abstract Object a(bN parambN, short paramShort);

  protected abstract bK a(F paramF);

  public void a(int paramInt, Object paramObject)
  {
    b(b((short)paramInt), paramObject);
  }

  protected abstract void a(F paramF, Object paramObject);

  public void a(bN parambN)
  {
    ((bU)a.get(parambN.s())).a().a(parambN, this);
  }

  public Object b(F paramF)
  {
    if (paramF != this.c)
      throw new IllegalArgumentException("Cannot get the value of field " + paramF + " because union's set field is " + this.c);
    return k();
  }

  protected abstract F b(short paramShort);

  public final void b()
  {
    this.c = null;
    this.b = null;
  }

  public void b(F paramF, Object paramObject)
  {
    a(paramF, paramObject);
    this.c = paramF;
    this.b = paramObject;
  }

  public void b(bN parambN)
  {
    ((bU)a.get(parambN.s())).a().b(parambN, this);
  }

  public Object c(int paramInt)
  {
    return b(b((short)paramInt));
  }

  protected abstract bR c();

  protected abstract void c(bN parambN);

  public boolean c(F paramF)
  {
    return this.c == paramF;
  }

  protected abstract void d(bN parambN);

  public boolean d(int paramInt)
  {
    return c(b((short)paramInt));
  }

  public F j()
  {
    return this.c;
  }

  public Object k()
  {
    return this.b;
  }

  public boolean l()
  {
    return this.c != null;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<");
    localStringBuilder.append(getClass().getSimpleName());
    localStringBuilder.append(" ");
    Object localObject;
    if (j() != null)
    {
      localObject = k();
      localStringBuilder.append(a(j()).a);
      localStringBuilder.append(":");
      if (!(localObject instanceof ByteBuffer))
        break label99;
      bB.a((ByteBuffer)localObject, localStringBuilder);
    }
    while (true)
    {
      localStringBuilder.append(">");
      return localStringBuilder.toString();
      label99: localStringBuilder.append(localObject.toString());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cj
 * JD-Core Version:    0.6.0
 */