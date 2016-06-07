package android.support.v4.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

final class MapCollections$KeySet
  implements Set<K>
{
  MapCollections$KeySet(MapCollections paramMapCollections)
  {
  }

  public final boolean add(K paramK)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean addAll(Collection<? extends K> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final void clear()
  {
    this.this$0.colClear();
  }

  public final boolean contains(Object paramObject)
  {
    return this.this$0.colIndexOfKey(paramObject) >= 0;
  }

  public final boolean containsAll(Collection<?> paramCollection)
  {
    return MapCollections.containsAllHelper(this.this$0.colGetMap(), paramCollection);
  }

  public final boolean equals(Object paramObject)
  {
    return MapCollections.equalsSetHelper(this, paramObject);
  }

  public final int hashCode()
  {
    int i = -1 + this.this$0.colGetSize();
    int j = 0;
    if (i >= 0)
    {
      Object localObject = this.this$0.colGetEntry(i, 0);
      if (localObject == null);
      for (int k = 0; ; k = localObject.hashCode())
      {
        j += k;
        i--;
        break;
      }
    }
    return j;
  }

  public final boolean isEmpty()
  {
    return this.this$0.colGetSize() == 0;
  }

  public final Iterator<K> iterator()
  {
    return new MapCollections.ArrayIterator(this.this$0, 0);
  }

  public final boolean remove(Object paramObject)
  {
    int i = this.this$0.colIndexOfKey(paramObject);
    if (i >= 0)
    {
      this.this$0.colRemoveAt(i);
      return true;
    }
    return false;
  }

  public final boolean removeAll(Collection<?> paramCollection)
  {
    return MapCollections.removeAllHelper(this.this$0.colGetMap(), paramCollection);
  }

  public final boolean retainAll(Collection<?> paramCollection)
  {
    return MapCollections.retainAllHelper(this.this$0.colGetMap(), paramCollection);
  }

  public final int size()
  {
    return this.this$0.colGetSize();
  }

  public final Object[] toArray()
  {
    return this.this$0.toArrayHelper(0);
  }

  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    return this.this$0.toArrayHelper(paramArrayOfT, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.MapCollections.KeySet
 * JD-Core Version:    0.6.0
 */