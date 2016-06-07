package com.google.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;

class LinkedTreeMap$KeySet extends AbstractSet<K>
{
  LinkedTreeMap$KeySet(LinkedTreeMap paramLinkedTreeMap)
  {
  }

  public void clear()
  {
    this.this$0.clear();
  }

  public boolean contains(Object paramObject)
  {
    return this.this$0.containsKey(paramObject);
  }

  public Iterator<K> iterator()
  {
    return new LinkedTreeMap.KeySet.1(this);
  }

  public boolean remove(Object paramObject)
  {
    return this.this$0.removeInternalByKey(paramObject) != null;
  }

  public int size()
  {
    return this.this$0.size;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap.KeySet
 * JD-Core Version:    0.6.0
 */