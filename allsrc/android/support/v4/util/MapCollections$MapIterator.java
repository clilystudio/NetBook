package android.support.v4.util;

import java.util.Iterator;
import java.util.Map.Entry;

final class MapCollections$MapIterator
  implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V>
{
  int mEnd;
  boolean mEntryValid = false;
  int mIndex;

  MapCollections$MapIterator(MapCollections paramMapCollections)
  {
    this.mEnd = (-1 + paramMapCollections.colGetSize());
    this.mIndex = -1;
  }

  public final boolean equals(Object paramObject)
  {
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    if (!(paramObject instanceof Map.Entry));
    Map.Entry localEntry;
    do
    {
      return false;
      localEntry = (Map.Entry)paramObject;
    }
    while ((!ContainerHelpers.equal(localEntry.getKey(), this.this$0.colGetEntry(this.mIndex, 0))) || (!ContainerHelpers.equal(localEntry.getValue(), this.this$0.colGetEntry(this.mIndex, 1))));
    return true;
  }

  public final K getKey()
  {
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    return this.this$0.colGetEntry(this.mIndex, 0);
  }

  public final V getValue()
  {
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    return this.this$0.colGetEntry(this.mIndex, 1);
  }

  public final boolean hasNext()
  {
    return this.mIndex < this.mEnd;
  }

  public final int hashCode()
  {
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    Object localObject1 = this.this$0.colGetEntry(this.mIndex, 0);
    Object localObject2 = this.this$0.colGetEntry(this.mIndex, 1);
    int i;
    int j;
    if (localObject1 == null)
    {
      i = 0;
      j = 0;
      if (localObject2 != null)
        break label69;
    }
    while (true)
    {
      return j ^ i;
      i = localObject1.hashCode();
      break;
      label69: j = localObject2.hashCode();
    }
  }

  public final Map.Entry<K, V> next()
  {
    this.mIndex = (1 + this.mIndex);
    this.mEntryValid = true;
    return this;
  }

  public final void remove()
  {
    if (!this.mEntryValid)
      throw new IllegalStateException();
    this.this$0.colRemoveAt(this.mIndex);
    this.mIndex = (-1 + this.mIndex);
    this.mEnd = (-1 + this.mEnd);
    this.mEntryValid = false;
  }

  public final V setValue(V paramV)
  {
    if (!this.mEntryValid)
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    return this.this$0.colSetValue(this.mIndex, paramV);
  }

  public final String toString()
  {
    return getKey() + "=" + getValue();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.MapCollections.MapIterator
 * JD-Core Version:    0.6.0
 */