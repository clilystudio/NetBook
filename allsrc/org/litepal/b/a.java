package org.litepal.b;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.litepal.exceptions.DataSupportException;

abstract class a extends c
{
  protected static void a(d paramd1, d paramd2)
  {
    if (paramd2 != null)
    {
      if (!paramd2.isSaved())
        break label24;
      paramd1.addAssociatedModelWithFK(paramd2.getTableName(), paramd2.getBaseObjId());
    }
    label24: 
    do
      return;
    while (!paramd1.isSaved());
    paramd2.addAssociatedModelWithoutFK(paramd1.getTableName(), paramd1.getBaseObjId());
  }

  protected final Collection<d> a(Collection<d> paramCollection, Field paramField)
  {
    if (List.class.isAssignableFrom(paramField.getType()));
    for (Object localObject = new ArrayList(); ; localObject = new HashSet())
    {
      if (paramCollection != null)
        ((Collection)localObject).addAll(paramCollection);
      return localObject;
      if (!Set.class.isAssignableFrom(paramField.getType()))
        break;
    }
    throw new DataSupportException("The field to declare many2one or many2many associations should be List or Set.");
  }

  protected final Collection<d> a(d paramd, org.litepal.b.a.a parama)
  {
    return (Collection)a(paramd, parama.e());
  }

  protected final void a(d paramd, org.litepal.b.a.a parama, Collection<d> paramCollection)
  {
    a(paramd, parama.e(), paramCollection);
  }

  protected final void a(d paramd1, d paramd2, org.litepal.b.a.a parama)
  {
    a(paramd2, parama.e(), paramd1);
  }

  protected final void b(d paramd, org.litepal.b.a.a parama)
  {
    paramd.addFKNameToClearSelf(e(com.arcsoft.hpay100.a.a.V(parama.b())));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.a
 * JD-Core Version:    0.6.0
 */