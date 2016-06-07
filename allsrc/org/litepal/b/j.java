package org.litepal.b;

public final class j extends a
{
  final void e(d paramd, org.litepal.b.a.a parama)
  {
    d locald = c(paramd, parama);
    if (locald != null)
    {
      a(paramd, locald, parama);
      if (parama.e() != null)
      {
        if (locald.isSaved())
        {
          paramd.addAssociatedModelWithFK(locald.getTableName(), locald.getBaseObjId());
          paramd.addAssociatedModelWithoutFK(locald.getTableName(), locald.getBaseObjId());
        }
        return;
      }
      a(paramd, locald);
      return;
    }
    paramd.addAssociatedTableNameToClearFK(com.arcsoft.hpay100.a.a.V(parama.b()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.j
 * JD-Core Version:    0.6.0
 */