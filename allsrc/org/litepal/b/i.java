package org.litepal.b;

import java.util.Collection;
import java.util.Iterator;

final class i extends a
{
  final void e(d paramd, org.litepal.b.a.a parama)
  {
    if (paramd.getClassName().equals(parama.c()))
    {
      d locald2 = c(paramd, parama);
      if (locald2 != null)
      {
        Collection localCollection2 = a(a(locald2, parama), parama.e());
        a(locald2, parama, localCollection2);
        if (!localCollection2.contains(paramd))
          localCollection2.add(paramd);
        if (locald2.isSaved())
          paramd.addAssociatedModelWithoutFK(locald2.getTableName(), locald2.getBaseObjId());
      }
    }
    while (true)
    {
      return;
      b(paramd, parama);
      return;
      Collection localCollection1 = d(paramd, parama);
      if ((localCollection1 == null) || (localCollection1.isEmpty()))
      {
        paramd.addAssociatedTableNameToClearFK(com.arcsoft.hpay100.a.a.V(parama.b()));
        return;
      }
      Iterator localIterator = localCollection1.iterator();
      while (localIterator.hasNext())
      {
        d locald1 = (d)localIterator.next();
        a(paramd, locald1, parama);
        a(paramd, locald1);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.i
 * JD-Core Version:    0.6.0
 */