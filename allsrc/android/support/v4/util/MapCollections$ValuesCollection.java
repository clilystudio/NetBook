package android.support.v4.util;

import java.util.Collection;
import java.util.Iterator;

final class MapCollections$ValuesCollection
  implements Collection<V>
{
  MapCollections$ValuesCollection(MapCollections paramMapCollections)
  {
  }

  public final boolean add(V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean addAll(Collection<? extends V> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final void clear()
  {
    this.this$0.colClear();
  }

  public final boolean contains(Object paramObject)
  {
    return this.this$0.colIndexOfValue(paramObject) >= 0;
  }

  public final boolean containsAll(Collection<?> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      if (!contains(localIterator.next()))
        return false;
    return true;
  }

  public final boolean isEmpty()
  {
    return this.this$0.colGetSize() == 0;
  }

  public final Iterator<V> iterator()
  {
    return new MapCollections.ArrayIterator(this.this$0, 1);
  }

  public final boolean remove(Object paramObject)
  {
    int i = this.this$0.colIndexOfValue(paramObject);
    if (i >= 0)
    {
      this.this$0.colRemoveAt(i);
      return true;
    }
    return false;
  }

  public final boolean removeAll(Collection<?> paramCollection)
  {
    int i = 0;
    int j = this.this$0.colGetSize();
    int k = 0;
    while (i < j)
    {
      if (paramCollection.contains(this.this$0.colGetEntry(i, 1)))
      {
        this.this$0.colRemoveAt(i);
        i--;
        j--;
        k = 1;
      }
      i++;
    }
    return k;
  }

  public final boolean retainAll(Collection<?> paramCollection)
  {
    int i = 0;
    int j = this.this$0.colGetSize();
    int k = 0;
    while (i < j)
    {
      if (!paramCollection.contains(this.this$0.colGetEntry(i, 1)))
      {
        this.this$0.colRemoveAt(i);
        i--;
        j--;
        k = 1;
      }
      i++;
    }
    return k;
  }

  public final int size()
  {
    return this.this$0.colGetSize();
  }

  public final Object[] toArray()
  {
    return this.this$0.toArrayHelper(1);
  }

  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    return this.this$0.toArrayHelper(paramArrayOfT, 1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.MapCollections.ValuesCollection
 * JD-Core Version:    0.6.0
 */