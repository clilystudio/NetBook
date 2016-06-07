package u.aly;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ab extends ao
  implements cx
{
  public ab(String paramString, Map<String, Object> paramMap, long paramLong, int paramInt)
  {
    a(paramString);
    b(System.currentTimeMillis());
    Iterator localIterator;
    HashMap localHashMap;
    int i;
    if (paramMap.size() > 0)
    {
      localIterator = paramMap.entrySet().iterator();
      localHashMap = new HashMap();
      i = 0;
      if ((i >= 10) || (!localIterator.hasNext()))
        a(localHashMap);
    }
    else
    {
      if (paramInt <= 0)
        break label277;
    }
    while (true)
    {
      a(paramInt);
      if (paramLong > 0L)
        a(paramLong);
      return;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      az localaz = new az();
      Object localObject = localEntry.getValue();
      if ((localObject instanceof String))
        localaz.b((String)localObject);
      while (true)
      {
        if (!localaz.l())
          break label275;
        localHashMap.put((String)localEntry.getKey(), localaz);
        i++;
        break;
        if ((localObject instanceof Long))
        {
          localaz.b(((Long)localObject).longValue());
          continue;
        }
        if ((localObject instanceof Integer))
        {
          localaz.b(((Integer)localObject).longValue());
          continue;
        }
        if ((localObject instanceof Float))
        {
          localaz.b(((Float)localObject).longValue());
          continue;
        }
        if (!(localObject instanceof Double))
          continue;
        localaz.b(((Double)localObject).longValue());
      }
      label275: break;
      label277: paramInt = 1;
    }
  }

  public static aa a(String paramString1, String paramString2, Map<String, Object> paramMap)
  {
    aa localaa = new aa();
    localaa.b = paramString1;
    localaa.c = paramString2;
    localaa.d = paramMap;
    return localaa;
  }

  public static String b(String paramString1, String paramString2, Map<String, Object> paramMap)
  {
    return paramString1 + paramString2;
  }

  public void a(bf parambf, String paramString)
  {
    Iterator localIterator;
    av localav;
    if (parambf.s() > 0)
    {
      localIterator = parambf.u().iterator();
      if (localIterator.hasNext());
    }
    else
    {
      localav = null;
    }
    while (true)
    {
      if (localav == null)
      {
        localav = new av();
        localav.a(paramString);
        parambf.a(localav);
      }
      localav.a(this);
      return;
      localav = (av)localIterator.next();
      if (!paramString.equals(localav.c()))
        break;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ab
 * JD-Core Version:    0.6.0
 */