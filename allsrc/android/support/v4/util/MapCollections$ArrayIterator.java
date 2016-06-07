package android.support.v4.util;

import java.util.Iterator;

final class MapCollections$ArrayIterator<T>
  implements Iterator<T>
{
  boolean mCanRemove = false;
  int mIndex;
  final int mOffset;
  int mSize;

  MapCollections$ArrayIterator(MapCollections paramMapCollections, int paramInt)
  {
    this.mOffset = paramInt;
    this.mSize = paramMapCollections.colGetSize();
  }

  public final boolean hasNext()
  {
    return this.mIndex < this.mSize;
  }

  public final T next()
  {
    Object localObject = this.this$0.colGetEntry(this.mIndex, this.mOffset);
    this.mIndex = (1 + this.mIndex);
    this.mCanRemove = true;
    return localObject;
  }

  public final void remove()
  {
    if (!this.mCanRemove)
      throw new IllegalStateException();
    this.mIndex = (-1 + this.mIndex);
    this.mSize = (-1 + this.mSize);
    this.mCanRemove = false;
    this.this$0.colRemoveAt(this.mIndex);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.MapCollections.ArrayIterator
 * JD-Core Version:    0.6.0
 */