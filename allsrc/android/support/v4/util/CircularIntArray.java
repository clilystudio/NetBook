package android.support.v4.util;

public final class CircularIntArray
{
  private int mCapacityBitmask;
  private int[] mElements;
  private int mHead;
  private int mTail;

  public CircularIntArray()
  {
    this(8);
  }

  public CircularIntArray(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("capacity must be positive");
    if (Integer.bitCount(paramInt) != 1)
      paramInt = 1 << 1 + Integer.highestOneBit(paramInt);
    this.mCapacityBitmask = (paramInt - 1);
    this.mElements = new int[paramInt];
  }

  private void doubleCapacity()
  {
    int i = this.mElements.length;
    int j = i - this.mHead;
    int k = i << 1;
    if (k < 0)
      throw new RuntimeException("Max array capacity exceeded");
    int[] arrayOfInt = new int[k];
    System.arraycopy(this.mElements, this.mHead, arrayOfInt, 0, j);
    System.arraycopy(this.mElements, 0, arrayOfInt, j, this.mHead);
    this.mElements = arrayOfInt;
    this.mHead = 0;
    this.mTail = i;
    this.mCapacityBitmask = (k - 1);
  }

  public final void addFirst(int paramInt)
  {
    this.mHead = (-1 + this.mHead & this.mCapacityBitmask);
    this.mElements[this.mHead] = paramInt;
    if (this.mHead == this.mTail)
      doubleCapacity();
  }

  public final void addLast(int paramInt)
  {
    this.mElements[this.mTail] = paramInt;
    this.mTail = (1 + this.mTail & this.mCapacityBitmask);
    if (this.mTail == this.mHead)
      doubleCapacity();
  }

  public final void clear()
  {
    this.mTail = this.mHead;
  }

  public final int get(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= size()))
      throw new ArrayIndexOutOfBoundsException();
    return this.mElements[(paramInt + this.mHead & this.mCapacityBitmask)];
  }

  public final int getFirst()
  {
    if (this.mHead == this.mTail)
      throw new ArrayIndexOutOfBoundsException();
    return this.mElements[this.mHead];
  }

  public final int getLast()
  {
    if (this.mHead == this.mTail)
      throw new ArrayIndexOutOfBoundsException();
    return this.mElements[(-1 + this.mTail & this.mCapacityBitmask)];
  }

  public final boolean isEmpty()
  {
    return this.mHead == this.mTail;
  }

  public final int popFirst()
  {
    if (this.mHead == this.mTail)
      throw new ArrayIndexOutOfBoundsException();
    int i = this.mElements[this.mHead];
    this.mHead = (1 + this.mHead & this.mCapacityBitmask);
    return i;
  }

  public final int popLast()
  {
    if (this.mHead == this.mTail)
      throw new ArrayIndexOutOfBoundsException();
    int i = -1 + this.mTail & this.mCapacityBitmask;
    int j = this.mElements[i];
    this.mTail = i;
    return j;
  }

  public final void removeFromEnd(int paramInt)
  {
    if (paramInt <= 0)
      return;
    if (paramInt > size())
      throw new ArrayIndexOutOfBoundsException();
    this.mTail = (this.mTail - paramInt & this.mCapacityBitmask);
  }

  public final void removeFromStart(int paramInt)
  {
    if (paramInt <= 0)
      return;
    if (paramInt > size())
      throw new ArrayIndexOutOfBoundsException();
    this.mHead = (paramInt + this.mHead & this.mCapacityBitmask);
  }

  public final int size()
  {
    return this.mTail - this.mHead & this.mCapacityBitmask;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.CircularIntArray
 * JD-Core Version:    0.6.0
 */