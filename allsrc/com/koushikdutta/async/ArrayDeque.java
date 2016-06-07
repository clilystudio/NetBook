package com.koushikdutta.async;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class ArrayDeque<E> extends AbstractCollection<E>
  implements B<E>, Serializable, Cloneable
{
  private static final long serialVersionUID = 2340985798034038923L;
  private transient Object[] a;
  private transient int b;
  private transient int c;

  static
  {
    if (!ArrayDeque.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ArrayDeque()
  {
    this.a = new Object[16];
  }

  public ArrayDeque(int paramInt)
  {
    a(paramInt);
  }

  public ArrayDeque(Collection<? extends E> paramCollection)
  {
    a(paramCollection.size());
    addAll(paramCollection);
  }

  private void a()
  {
    assert (this.b == this.c);
    int i = this.b;
    int j = this.a.length;
    int k = j - i;
    int m = j << 1;
    if (m < 0)
      throw new IllegalStateException("Sorry, deque too big");
    Object[] arrayOfObject = new Object[m];
    System.arraycopy(this.a, i, arrayOfObject, 0, k);
    System.arraycopy(this.a, 0, arrayOfObject, k, i);
    this.a = arrayOfObject;
    this.b = 0;
    this.c = j;
  }

  private void a(int paramInt)
  {
    int i = 8;
    if (paramInt >= i)
    {
      int j = paramInt | paramInt >>> 1;
      int k = j | j >>> 2;
      int m = k | k >>> 4;
      int n = m | m >>> 8;
      i = 1 + (n | n >>> 16);
      if (i < 0)
        i >>>= 1;
    }
    this.a = new Object[i];
  }

  private <T> T[] a(T[] paramArrayOfT)
  {
    if (this.b < this.c)
      System.arraycopy(this.a, this.b, paramArrayOfT, 0, size());
    do
      return paramArrayOfT;
    while (this.b <= this.c);
    int i = this.a.length - this.b;
    System.arraycopy(this.a, this.b, paramArrayOfT, 0, i);
    System.arraycopy(this.a, 0, paramArrayOfT, i, this.c);
    return paramArrayOfT;
  }

  private boolean b(int paramInt)
  {
    assert (this.a[this.c] == null);
    if (!$assertionsDisabled)
    {
      if (this.b != this.c)
        break label91;
      if (this.a[this.b] != null)
        break label125;
    }
    label91: 
    do
    {
      if (($assertionsDisabled) || (this.a[(-1 + this.b & -1 + this.a.length)] == null))
        break;
      throw new AssertionError();
    }
    while ((this.a[this.b] != null) && (this.a[(-1 + this.c & -1 + this.a.length)] != null));
    label125: throw new AssertionError();
    Object[] arrayOfObject = this.a;
    int i = -1 + arrayOfObject.length;
    int j = this.b;
    int k = this.c;
    int m = i & paramInt - j;
    int n = i & k - paramInt;
    if (m >= (i & k - j))
      throw new ConcurrentModificationException();
    if (m < n)
    {
      if (j <= paramInt)
        System.arraycopy(arrayOfObject, j, arrayOfObject, j + 1, m);
      while (true)
      {
        arrayOfObject[j] = null;
        this.b = (i & j + 1);
        return false;
        System.arraycopy(arrayOfObject, 0, arrayOfObject, 1, paramInt);
        arrayOfObject[0] = arrayOfObject[i];
        System.arraycopy(arrayOfObject, j, arrayOfObject, j + 1, i - j);
      }
    }
    if (paramInt < k)
      System.arraycopy(arrayOfObject, paramInt + 1, arrayOfObject, paramInt, n);
    for (this.c = (k - 1); ; this.c = (i & k - 1))
    {
      return true;
      System.arraycopy(arrayOfObject, paramInt + 1, arrayOfObject, paramInt, i - paramInt);
      arrayOfObject[i] = arrayOfObject[0];
      System.arraycopy(arrayOfObject, 1, arrayOfObject, 0, k);
    }
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    int i = 0;
    paramObjectInputStream.defaultReadObject();
    int j = paramObjectInputStream.readInt();
    a(j);
    this.b = 0;
    this.c = j;
    while (i < j)
    {
      this.a[i] = paramObjectInputStream.readObject();
      i++;
    }
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeInt(size());
    int i = -1 + this.a.length;
    for (int j = this.b; j != this.c; j = i & j + 1)
      paramObjectOutputStream.writeObject(this.a[j]);
  }

  public boolean add(E paramE)
  {
    addLast(paramE);
    return true;
  }

  public void addFirst(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException("e == null");
    Object[] arrayOfObject = this.a;
    int i = -1 + this.b & -1 + this.a.length;
    this.b = i;
    arrayOfObject[i] = paramE;
    if (this.b == this.c)
      a();
  }

  public void addLast(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException("e == null");
    this.a[this.c] = paramE;
    int i = 1 + this.c & -1 + this.a.length;
    this.c = i;
    if (i == this.b)
      a();
  }

  public void clear()
  {
    int i = this.b;
    int j = this.c;
    if (i != j)
    {
      this.c = 0;
      this.b = 0;
      int k = -1 + this.a.length;
      do
      {
        this.a[i] = null;
        i = k & i + 1;
      }
      while (i != j);
    }
  }

  public ArrayDeque<E> clone()
  {
    try
    {
      ArrayDeque localArrayDeque = (ArrayDeque)super.clone();
      System.arraycopy(this.a, 0, localArrayDeque.a, 0, this.a.length);
      return localArrayDeque;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new AssertionError();
  }

  public boolean contains(Object paramObject)
  {
    if (paramObject == null)
      return false;
    int i = -1 + this.a.length;
    for (int j = this.b; ; j = i & j + 1)
    {
      Object localObject = this.a[j];
      if (localObject == null)
        break;
      if (paramObject.equals(localObject))
        return true;
    }
    return false;
  }

  public Iterator<E> descendingIterator()
  {
    return new c(this, 0);
  }

  public E element()
  {
    return getFirst();
  }

  public E getFirst()
  {
    Object localObject = this.a[this.b];
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public E getLast()
  {
    Object localObject = this.a[(-1 + this.c & -1 + this.a.length)];
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public boolean isEmpty()
  {
    return this.b == this.c;
  }

  public Iterator<E> iterator()
  {
    return new b(this, 0);
  }

  public boolean offer(E paramE)
  {
    return offerLast(paramE);
  }

  public boolean offerFirst(E paramE)
  {
    addFirst(paramE);
    return true;
  }

  public boolean offerLast(E paramE)
  {
    addLast(paramE);
    return true;
  }

  public E peek()
  {
    return peekFirst();
  }

  public E peekFirst()
  {
    return this.a[this.b];
  }

  public E peekLast()
  {
    return this.a[(-1 + this.c & -1 + this.a.length)];
  }

  public E poll()
  {
    return pollFirst();
  }

  public E pollFirst()
  {
    int i = this.b;
    Object localObject = this.a[i];
    if (localObject == null)
      return null;
    this.a[i] = null;
    this.b = (i + 1 & -1 + this.a.length);
    return localObject;
  }

  public E pollLast()
  {
    int i = -1 + this.c & -1 + this.a.length;
    Object localObject = this.a[i];
    if (localObject == null)
      return null;
    this.a[i] = null;
    this.c = i;
    return localObject;
  }

  public E pop()
  {
    return removeFirst();
  }

  public void push(E paramE)
  {
    addFirst(paramE);
  }

  public E remove()
  {
    return removeFirst();
  }

  public boolean remove(Object paramObject)
  {
    return removeFirstOccurrence(paramObject);
  }

  public E removeFirst()
  {
    Object localObject = pollFirst();
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public boolean removeFirstOccurrence(Object paramObject)
  {
    if (paramObject == null)
      return false;
    int i = -1 + this.a.length;
    for (int j = this.b; ; j = i & j + 1)
    {
      Object localObject = this.a[j];
      if (localObject == null)
        break;
      if (!paramObject.equals(localObject))
        continue;
      b(j);
      return true;
    }
    return false;
  }

  public E removeLast()
  {
    Object localObject = pollLast();
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public boolean removeLastOccurrence(Object paramObject)
  {
    if (paramObject == null)
      return false;
    int i = -1 + this.a.length;
    for (int j = i & -1 + this.c; ; j = i & j - 1)
    {
      Object localObject = this.a[j];
      if (localObject == null)
        break;
      if (!paramObject.equals(localObject))
        continue;
      b(j);
      return true;
    }
    return false;
  }

  public int size()
  {
    return this.c - this.b & -1 + this.a.length;
  }

  public Object[] toArray()
  {
    return a(new Object[size()]);
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    int i = size();
    if (paramArrayOfT.length < i);
    for (Object localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), i); ; localObject = paramArrayOfT)
    {
      a(localObject);
      if (localObject.length > i)
        localObject[i] = null;
      return localObject;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.ArrayDeque
 * JD-Core Version:    0.6.0
 */