package com.google.gson.internal;

import java.util.Map.Entry;

final class LinkedTreeMap$Node<K, V>
  implements Map.Entry<K, V>
{
  int height;
  final K key;
  Node<K, V> left;
  Node<K, V> next;
  Node<K, V> parent;
  Node<K, V> prev;
  Node<K, V> right;
  V value;

  LinkedTreeMap$Node()
  {
    this.key = null;
    this.prev = this;
    this.next = this;
  }

  LinkedTreeMap$Node(Node<K, V> paramNode1, K paramK, Node<K, V> paramNode2, Node<K, V> paramNode3)
  {
    this.parent = paramNode1;
    this.key = paramK;
    this.height = 1;
    this.next = paramNode2;
    this.prev = paramNode3;
    paramNode3.next = this;
    paramNode2.prev = this;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    int i = 0;
    Map.Entry localEntry;
    if (bool1)
    {
      localEntry = (Map.Entry)paramObject;
      if (this.key != null)
        break label67;
      Object localObject2 = localEntry.getKey();
      i = 0;
      if (localObject2 == null)
      {
        if (this.value != null)
          break label93;
        Object localObject1 = localEntry.getValue();
        i = 0;
        if (localObject1 != null);
      }
    }
    while (true)
    {
      i = 1;
      label67: label93: boolean bool3;
      do
      {
        boolean bool2;
        do
        {
          return i;
          bool2 = this.key.equals(localEntry.getKey());
          i = 0;
        }
        while (!bool2);
        break;
        bool3 = this.value.equals(localEntry.getValue());
        i = 0;
      }
      while (!bool3);
    }
  }

  public final Node<K, V> first()
  {
    Node localNode;
    for (Object localObject = this.left; localObject != null; localObject = localNode)
    {
      localNode = ((Node)localObject).left;
      this = (Node)localObject;
    }
    return (Node<K, V>)this;
  }

  public final K getKey()
  {
    return this.key;
  }

  public final V getValue()
  {
    return this.value;
  }

  public final int hashCode()
  {
    int i;
    int j;
    if (this.key == null)
    {
      i = 0;
      Object localObject = this.value;
      j = 0;
      if (localObject != null)
        break label35;
    }
    while (true)
    {
      return i ^ j;
      i = this.key.hashCode();
      break;
      label35: j = this.value.hashCode();
    }
  }

  public final Node<K, V> last()
  {
    Node localNode;
    for (Object localObject = this.right; localObject != null; localObject = localNode)
    {
      localNode = ((Node)localObject).right;
      this = (Node)localObject;
    }
    return (Node<K, V>)this;
  }

  public final V setValue(V paramV)
  {
    Object localObject = this.value;
    this.value = paramV;
    return localObject;
  }

  public final String toString()
  {
    return this.key + "=" + this.value;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap.Node
 * JD-Core Version:    0.6.0
 */