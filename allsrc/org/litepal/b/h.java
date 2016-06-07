package org.litepal.b;

import java.util.Collection;
import java.util.Iterator;

public final class h extends a
{
  final void e(d paramd, org.litepal.b.a.a parama)
  {
    Collection localCollection1 = d(paramd, parama);
    paramd.addEmptyModelForJoinTable(com.arcsoft.hpay100.a.a.S(com.arcsoft.hpay100.a.a.V(parama.b())));
    Iterator localIterator;
    if (localCollection1 != null)
      localIterator = localCollection1.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      d locald = (d)localIterator.next();
      Collection localCollection2 = a(a(locald, parama), parama.e());
      if (!localCollection2.contains(paramd))
        localCollection2.add(paramd);
      a(locald, parama, localCollection2);
      if (!locald.isSaved())
        continue;
      paramd.addAssociatedModelForJoinTable(locald.getTableName(), locald.getBaseObjId());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.h
 * JD-Core Version:    0.6.0
 */