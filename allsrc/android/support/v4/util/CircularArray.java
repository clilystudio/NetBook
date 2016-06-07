package android.support.v4.util;

public final class CircularArray<E>
{
  private int mCapacityBitmask;
  private E[] mElements;
  private int mHead;
  private int mTail;

  public CircularArray()
  {
    this(8);
  }

  public CircularArray(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("capacity must be positive");
    if (Integer.bitCount(paramInt) != 1)
      paramInt = 1 << 1 + Integer.highestOneBit(paramInt);
    this.mCapacityBitmask = (paramInt - 1);
    this.mElements = ((Object[])new Object[paramInt]);
  }

  private void doubleCapacity()
  {
    int i = this.mElements.length;
    int j = i - this.mHead;
    int k = i << 1;
    if (k < 0)
      throw new RuntimeException("Max array capacity exceeded");
    Object[] arrayOfObject = new Object[k];
    System.arraycopy(this.mElements, this.mHead, arrayOfObject, 0, j);
    System.arraycopy(this.mElements, 0, arrayOfObject, j, this.mHead);
    this.mElements = ((Object[])arrayOfObject);
    this.mHead = 0;
    this.mTail = i;
    this.mCapacityBitmask = (k - 1);
  }

  public final void addFirst(E paramE)
  {
    this.mHead = (-1 + this.mHead & this.mCapacityBitmask);
    this.mElements[this.mHead] = paramE;
    if (this.mHead == this.mTail)
      doubleCapacity();
  }

  public final void addLast(E paramE)
  {
    this.mElements[this.mTail] = paramE;
    this.mTail = (1 + this.mTail & this.mCapacityBitmask);
    if (this.mTail == this.mHead)
      doubleCapacity();
  }

  public final void clear()
  {
    removeFromStart(size());
  }

  public final E get(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= size()))
      throw new ArrayIndexOutOfBoundsException();
    return this.mElements[(paramInt + this.mHead & this.mCapacityBitmask)];
  }

  public final E getFirst()
  {
    if (this.mHead == this.mTail)
      throw new ArrayIndexOutOfBoundsException();
    return this.mElements[this.mHead];
  }

  public final E getLast()
  {
    if (this.mHead == this.mTail)
      throw new ArrayIndexOutOfBoundsException();
    return this.mElements[(-1 + this.mTail & this.mCapacityBitmask)];
  }

  public final boolean isEmpty()
  {
    return this.mHead == this.mTail;
  }

  public final E popFirst()
  {
    if (this.mHead == this.mTail)
      throw new ArrayIndexOutOfBoundsException();
    Object localObject = this.mElements[this.mHead];
    this.mElements[this.mHead] = null;
    this.mHead = (1 + this.mHead & this.mCapacityBitmask);
    return localObject;
  }

  public final E popLast()
  {
    if (this.mHead == this.mTail)
      throw new ArrayIndexOutOfBoundsException();
    int i = -1 + this.mTail & this.mCapacityBitmask;
    Object localObject = this.mElements[i];
    this.mElements[i] = null;
    this.mTail = i;
    return localObject;
  }

  public final void removeFromEnd(int paramInt)
  {
    if (paramInt <= 0);
    int n;
    do
    {
      return;
      if (paramInt > size())
        throw new ArrayIndexOutOfBoundsException();
      int i = this.mTail;
      int j = 0;
      if (paramInt < i)
        j = this.mTail - paramInt;
      for (int k = j; k < this.mTail; k++)
        this.mElements[k] = null;
      int m = this.mTail - j;
      n = paramInt - m;
      this.mTail -= m;
    }
    while (n <= 0);
    this.mTail = this.mElements.length;
    int i1 = this.mTail - n;
    for (int i2 = i1; i2 < this.mTail; i2++)
      this.mElements[i2] = null;
    this.mTail = i1;
  }

  public final void removeFromStart(int paramInt)
  {
    if (paramInt <= 0);
    int m;
    do
    {
      return;
      if (paramInt > size())
        throw new ArrayIndexOutOfBoundsException();
      int i = this.mElements.length;
      if (paramInt < i - this.mHead)
        i = paramInt + this.mHead;
      for (int j = this.mHead; j < i; j++)
        this.mElements[j] = null;
      int k = i - this.mHead;
      m = paramInt - k;
      this.mHead = (k + this.mHead & this.mCapacityBitmask);
    }
    while (m <= 0);
    for (int n = 0; n < m; n++)
      this.mElements[n] = null;
    this.mHead = m;
  }

  public final int size()
  {
    return this.mTail - this.mHead & this.mCapacityBitmask;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.CircularArray
 * JD-Core Version:    0.6.0
 */