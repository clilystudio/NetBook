package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class LinkedTreeMap<K, V> extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> NATURAL_ORDER;
  Comparator<? super K> comparator;
  private LinkedTreeMap<K, V>.EntrySet entrySet;
  final LinkedTreeMap.Node<K, V> header = new LinkedTreeMap.Node();
  private LinkedTreeMap<K, V>.KeySet keySet;
  int modCount = 0;
  LinkedTreeMap.Node<K, V> root;
  int size = 0;

  static
  {
    if (!LinkedTreeMap.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      NATURAL_ORDER = new LinkedTreeMap.1();
      return;
    }
  }

  public LinkedTreeMap()
  {
    this(NATURAL_ORDER);
  }

  public LinkedTreeMap(Comparator<? super K> paramComparator)
  {
    if (paramComparator != null);
    while (true)
    {
      this.comparator = paramComparator;
      return;
      paramComparator = NATURAL_ORDER;
    }
  }

  private boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  private void rebalance(LinkedTreeMap.Node<K, V> paramNode, boolean paramBoolean)
  {
    LinkedTreeMap.Node localNode1;
    LinkedTreeMap.Node localNode2;
    int i;
    label25: int j;
    label37: int k;
    int i2;
    label77: int i3;
    label89: int i4;
    if (paramNode != null)
    {
      localNode1 = paramNode.left;
      localNode2 = paramNode.right;
      if (localNode1 != null)
      {
        i = localNode1.height;
        if (localNode2 == null)
          break label134;
        j = localNode2.height;
        k = i - j;
        if (k != -2)
          break label186;
        LinkedTreeMap.Node localNode5 = localNode2.left;
        LinkedTreeMap.Node localNode6 = localNode2.right;
        if (localNode6 == null)
          break label140;
        i2 = localNode6.height;
        if (localNode5 == null)
          break label146;
        i3 = localNode5.height;
        i4 = i3 - i2;
        if ((i4 != -1) && ((i4 != 0) || (paramBoolean)))
          break label152;
        rotateLeft(paramNode);
        label116: if (paramBoolean)
          break label259;
      }
    }
    while (true)
    {
      paramNode = paramNode.parent;
      break;
      i = 0;
      break label25;
      label134: j = 0;
      break label37;
      label140: i2 = 0;
      break label77;
      label146: i3 = 0;
      break label89;
      label152: assert (i4 == 1);
      rotateRight(localNode2);
      rotateLeft(paramNode);
      break label116;
      label186: int m;
      label216: int n;
      label228: int i1;
      if (k == 2)
      {
        LinkedTreeMap.Node localNode3 = localNode1.left;
        LinkedTreeMap.Node localNode4 = localNode1.right;
        if (localNode4 != null)
        {
          m = localNode4.height;
          if (localNode3 == null)
            break label266;
          n = localNode3.height;
          i1 = n - m;
          if ((i1 != 1) && ((i1 != 0) || (paramBoolean)))
            break label272;
          rotateRight(paramNode);
          label255: if (!paramBoolean)
            break label303;
        }
      }
      label259: label266: label272: label303: 
      do
      {
        return;
        m = 0;
        break label216;
        n = 0;
        break label228;
        assert (i1 == -1);
        rotateLeft(localNode1);
        rotateRight(paramNode);
        break label255;
        break;
        if (k == 0)
        {
          paramNode.height = (i + 1);
          if (!paramBoolean)
            break;
          return;
        }
        assert ((k == -1) || (k == 1));
        paramNode.height = (1 + Math.max(i, j));
      }
      while (!paramBoolean);
    }
  }

  private void replaceInParent(LinkedTreeMap.Node<K, V> paramNode1, LinkedTreeMap.Node<K, V> paramNode2)
  {
    LinkedTreeMap.Node localNode = paramNode1.parent;
    paramNode1.parent = null;
    if (paramNode2 != null)
      paramNode2.parent = localNode;
    if (localNode != null)
    {
      if (localNode.left == paramNode1)
      {
        localNode.left = paramNode2;
        return;
      }
      assert (localNode.right == paramNode1);
      localNode.right = paramNode2;
      return;
    }
    this.root = paramNode2;
  }

  private void rotateLeft(LinkedTreeMap.Node<K, V> paramNode)
  {
    LinkedTreeMap.Node localNode1 = paramNode.left;
    LinkedTreeMap.Node localNode2 = paramNode.right;
    LinkedTreeMap.Node localNode3 = localNode2.left;
    LinkedTreeMap.Node localNode4 = localNode2.right;
    paramNode.right = localNode3;
    if (localNode3 != null)
      localNode3.parent = paramNode;
    replaceInParent(paramNode, localNode2);
    localNode2.left = paramNode;
    paramNode.parent = localNode2;
    int i;
    if (localNode1 != null)
    {
      i = localNode1.height;
      if (localNode3 == null)
        break label131;
    }
    label131: for (int j = localNode3.height; ; j = 0)
    {
      paramNode.height = (1 + Math.max(i, j));
      int k = paramNode.height;
      int m = 0;
      if (localNode4 != null)
        m = localNode4.height;
      localNode2.height = (1 + Math.max(k, m));
      return;
      i = 0;
      break;
    }
  }

  private void rotateRight(LinkedTreeMap.Node<K, V> paramNode)
  {
    LinkedTreeMap.Node localNode1 = paramNode.left;
    LinkedTreeMap.Node localNode2 = paramNode.right;
    LinkedTreeMap.Node localNode3 = localNode1.left;
    LinkedTreeMap.Node localNode4 = localNode1.right;
    paramNode.left = localNode4;
    if (localNode4 != null)
      localNode4.parent = paramNode;
    replaceInParent(paramNode, localNode1);
    localNode1.right = paramNode;
    paramNode.parent = localNode1;
    int i;
    if (localNode2 != null)
    {
      i = localNode2.height;
      if (localNode4 == null)
        break label131;
    }
    label131: for (int j = localNode4.height; ; j = 0)
    {
      paramNode.height = (1 + Math.max(i, j));
      int k = paramNode.height;
      int m = 0;
      if (localNode3 != null)
        m = localNode3.height;
      localNode1.height = (1 + Math.max(k, m));
      return;
      i = 0;
      break;
    }
  }

  private Object writeReplace()
  {
    return new LinkedHashMap(this);
  }

  public final void clear()
  {
    this.root = null;
    this.size = 0;
    this.modCount = (1 + this.modCount);
    LinkedTreeMap.Node localNode = this.header;
    localNode.prev = localNode;
    localNode.next = localNode;
  }

  public final boolean containsKey(Object paramObject)
  {
    return findByObject(paramObject) != null;
  }

  public final Set<Map.Entry<K, V>> entrySet()
  {
    LinkedTreeMap.EntrySet localEntrySet1 = this.entrySet;
    if (localEntrySet1 != null)
      return localEntrySet1;
    LinkedTreeMap.EntrySet localEntrySet2 = new LinkedTreeMap.EntrySet(this);
    this.entrySet = localEntrySet2;
    return localEntrySet2;
  }

  final LinkedTreeMap.Node<K, V> find(K paramK, boolean paramBoolean)
  {
    Comparator localComparator = this.comparator;
    Object localObject1 = this.root;
    Object localObject3;
    label66: label83: label117: int k;
    Object localObject2;
    if (localObject1 != null)
    {
      Comparable localComparable;
      if (localComparator == NATURAL_ORDER)
      {
        localComparable = (Comparable)paramK;
        if (localComparable == null)
          break label66;
      }
      for (int j = localComparable.compareTo(((LinkedTreeMap.Node)localObject1).key); ; j = localComparator.compare(paramK, ((LinkedTreeMap.Node)localObject1).key))
      {
        if (j != 0)
          break label83;
        localObject3 = localObject1;
        return localObject3;
        localComparable = null;
        break;
      }
      if (j < 0);
      for (LinkedTreeMap.Node localNode3 = ((LinkedTreeMap.Node)localObject1).left; ; localNode3 = ((LinkedTreeMap.Node)localObject1).right)
      {
        if (localNode3 == null)
          break label117;
        localObject1 = localNode3;
        break;
      }
      k = j;
      localObject2 = localObject1;
    }
    for (int i = k; ; i = 0)
    {
      localObject3 = null;
      if (!paramBoolean)
        break;
      LinkedTreeMap.Node localNode1 = this.header;
      if (localObject2 == null)
      {
        if ((localComparator == NATURAL_ORDER) && (!(paramK instanceof Comparable)))
          throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
        localNode2 = new LinkedTreeMap.Node(localObject2, paramK, localNode1, localNode1.prev);
        this.root = localNode2;
        this.size = (1 + this.size);
        this.modCount = (1 + this.modCount);
        return localNode2;
      }
      LinkedTreeMap.Node localNode2 = new LinkedTreeMap.Node(localObject2, paramK, localNode1, localNode1.prev);
      if (i < 0)
        localObject2.left = localNode2;
      while (true)
      {
        rebalance(localObject2, true);
        break;
        localObject2.right = localNode2;
      }
      localObject2 = localObject1;
    }
  }

  final LinkedTreeMap.Node<K, V> findByEntry(Map.Entry<?, ?> paramEntry)
  {
    LinkedTreeMap.Node localNode = findByObject(paramEntry.getKey());
    if ((localNode != null) && (equal(localNode.value, paramEntry.getValue())));
    for (int i = 1; i != 0; i = 0)
      return localNode;
    return null;
  }

  final LinkedTreeMap.Node<K, V> findByObject(Object paramObject)
  {
    Object localObject = null;
    if (paramObject != null);
    try
    {
      LinkedTreeMap.Node localNode = find(paramObject, false);
      localObject = localNode;
      return localObject;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return null;
  }

  public final V get(Object paramObject)
  {
    LinkedTreeMap.Node localNode = findByObject(paramObject);
    if (localNode != null)
      return localNode.value;
    return null;
  }

  public final Set<K> keySet()
  {
    LinkedTreeMap.KeySet localKeySet1 = this.keySet;
    if (localKeySet1 != null)
      return localKeySet1;
    LinkedTreeMap.KeySet localKeySet2 = new LinkedTreeMap.KeySet(this);
    this.keySet = localKeySet2;
    return localKeySet2;
  }

  public final V put(K paramK, V paramV)
  {
    if (paramK == null)
      throw new NullPointerException("key == null");
    LinkedTreeMap.Node localNode = find(paramK, true);
    Object localObject = localNode.value;
    localNode.value = paramV;
    return localObject;
  }

  public final V remove(Object paramObject)
  {
    LinkedTreeMap.Node localNode = removeInternalByKey(paramObject);
    if (localNode != null)
      return localNode.value;
    return null;
  }

  final void removeInternal(LinkedTreeMap.Node<K, V> paramNode, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramNode.prev.next = paramNode.next;
      paramNode.next.prev = paramNode.prev;
    }
    LinkedTreeMap.Node localNode1 = paramNode.left;
    LinkedTreeMap.Node localNode2 = paramNode.right;
    LinkedTreeMap.Node localNode3 = paramNode.parent;
    LinkedTreeMap.Node localNode4;
    int i;
    if ((localNode1 != null) && (localNode2 != null))
      if (localNode1.height > localNode2.height)
      {
        localNode4 = localNode1.last();
        removeInternal(localNode4, false);
        LinkedTreeMap.Node localNode5 = paramNode.left;
        if (localNode5 == null)
          break label258;
        i = localNode5.height;
        localNode4.left = localNode5;
        localNode5.parent = localNode4;
        paramNode.left = null;
      }
    while (true)
    {
      LinkedTreeMap.Node localNode6 = paramNode.right;
      int j = 0;
      if (localNode6 != null)
      {
        j = localNode6.height;
        localNode4.right = localNode6;
        localNode6.parent = localNode4;
        paramNode.right = null;
      }
      localNode4.height = (1 + Math.max(i, j));
      replaceInParent(paramNode, localNode4);
      return;
      localNode4 = localNode2.first();
      break;
      if (localNode1 != null)
      {
        replaceInParent(paramNode, localNode1);
        paramNode.left = null;
      }
      while (true)
      {
        rebalance(localNode3, false);
        this.size = (-1 + this.size);
        this.modCount = (1 + this.modCount);
        return;
        if (localNode2 != null)
        {
          replaceInParent(paramNode, localNode2);
          paramNode.right = null;
          continue;
        }
        replaceInParent(paramNode, null);
      }
      label258: i = 0;
    }
  }

  final LinkedTreeMap.Node<K, V> removeInternalByKey(Object paramObject)
  {
    LinkedTreeMap.Node localNode = findByObject(paramObject);
    if (localNode != null)
      removeInternal(localNode, true);
    return localNode;
  }

  public final int size()
  {
    return this.size;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap
 * JD-Core Version:    0.6.0
 */