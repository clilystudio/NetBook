package u.aly;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public abstract class a
{
  private final String a;
  private List<aq> b;
  private ar c;

  public a(String paramString)
  {
    this.a = paramString;
  }

  public final void a(List<aq> paramList)
  {
    this.b = null;
  }

  public final void a(as paramas)
  {
    this.c = ((ar)paramas.d().get("mName"));
    List localList = paramas.j();
    Iterator localIterator;
    if ((localList != null) && (localList.size() > 0))
    {
      if (this.b == null)
        this.b = new ArrayList();
      localIterator = localList.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      aq localaq = (aq)localIterator.next();
      if (!this.a.equals(localaq.a))
        continue;
      this.b.add(localaq);
    }
  }

  public final boolean a()
  {
    ar localar = this.c;
    Object localObject1;
    int i;
    label17: String str1;
    Object localObject2;
    if (localar == null)
    {
      localObject1 = null;
      if (localar != null)
        break label209;
      i = 0;
      str1 = f();
      localObject2 = null;
      if (str1 != null)
        break label217;
    }
    while (true)
    {
      int k = 0;
      if (localObject2 != null)
      {
        boolean bool3 = ((String)localObject2).equals(localObject1);
        k = 0;
        if (!bool3)
        {
          if (localar == null)
            localar = new ar();
          localar.a((String)localObject2);
          localar.a(System.currentTimeMillis());
          localar.a(i + 1);
          aq localaq = new aq();
          localaq.a(this.a);
          localaq.c((String)localObject2);
          localaq.b((String)localObject1);
          localaq.a(localar.f());
          if (this.b == null)
            this.b = new ArrayList(2);
          this.b.add(localaq);
          if (this.b.size() > 10)
            this.b.remove(0);
          this.c = localar;
          k = 1;
        }
      }
      return k;
      localObject1 = localar.c();
      break;
      label209: i = localar.j();
      break label17;
      label217: String str2 = str1.trim();
      int j = str2.length();
      localObject2 = null;
      if (j == 0)
        continue;
      boolean bool1 = "0".equals(str2);
      localObject2 = null;
      if (bool1)
        continue;
      boolean bool2 = "unknown".equals(str2.toLowerCase(Locale.US));
      localObject2 = null;
      if (bool2)
        continue;
      localObject2 = str2;
    }
  }

  public final String b()
  {
    return this.a;
  }

  public final boolean c()
  {
    return (this.c == null) || (this.c.j() <= 20);
  }

  public final ar d()
  {
    return this.c;
  }

  public final List<aq> e()
  {
    return this.b;
  }

  public abstract String f();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.a
 * JD-Core Version:    0.6.0
 */