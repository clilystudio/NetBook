package com.google.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

class LinkedTreeMap$EntrySet extends AbstractSet<Map.Entry<K, V>>
{
  LinkedTreeMap$EntrySet(LinkedTreeMap paramLinkedTreeMap)
  {
  }

  public void clear()
  {
    this.this$0.clear();
  }

  public boolean contains(Object paramObject)
  {
    return ((paramObject instanceof Map.Entry)) && (this.this$0.findByEntry((Map.Entry)paramObject) != null);
  }

  public Iterator<Map.Entry<K, V>> iterator()
  {
    return new LinkedTreeMap.EntrySet.1(this);
  }

  public boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry));
    LinkedTreeMap.Node localNode;
    do
    {
      return false;
      localNode = this.this$0.findByEntry((Map.Entry)paramObject);
    }
    while (localNode == null);
    this.this$0.removeInternal(localNode, true);
    return true;
  }

  public int size()
  {
    return this.this$0.size;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap.EntrySet
 * JD-Core Version:    0.6.0
 */