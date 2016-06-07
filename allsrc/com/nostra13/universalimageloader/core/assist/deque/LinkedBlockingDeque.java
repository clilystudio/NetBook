package com.nostra13.universalimageloader.core.assist.deque;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class LinkedBlockingDeque<E> extends AbstractQueue<E>
  implements a<E>, Serializable
{
  private static final long serialVersionUID = -387911632671998426L;
  private transient int a;
  private final int capacity;
  transient c<E> first$7f5d0838;
  transient c<E> last$7f5d0838;
  final ReentrantLock lock = new ReentrantLock();
  private final Condition notEmpty = this.lock.newCondition();
  private final Condition notFull = this.lock.newCondition();

  public LinkedBlockingDeque()
  {
    this(2147483647);
  }

  public LinkedBlockingDeque(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException();
    this.capacity = paramInt;
  }

  public LinkedBlockingDeque(Collection<? extends E> paramCollection)
  {
    this(2147483647);
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    while (true)
    {
      Object localObject2;
      try
      {
        Iterator localIterator = paramCollection.iterator();
        if (!localIterator.hasNext())
          break;
        localObject2 = localIterator.next();
        if (localObject2 == null)
          throw new NullPointerException();
      }
      finally
      {
        localReentrantLock.unlock();
      }
      if (b(new c(localObject2)))
        continue;
      throw new IllegalStateException("Deque full");
    }
    localReentrantLock.unlock();
  }

  private E a()
  {
    c localc1 = this.first$7f5d0838;
    if (localc1 == null)
      return null;
    c localc2 = localc1.c;
    Object localObject = localc1.a;
    localc1.a = null;
    localc1.c = localc1;
    this.first$7f5d0838 = localc2;
    if (localc2 == null)
      this.last$7f5d0838 = null;
    while (true)
    {
      this.a = (-1 + this.a);
      this.notFull.signal();
      return localObject;
      localc2.b = null;
    }
  }

  private boolean a(c<E> paramc)
  {
    if (this.a >= this.capacity)
      return false;
    c localc = this.first$7f5d0838;
    paramc.c = localc;
    this.first$7f5d0838 = paramc;
    if (this.last$7f5d0838 == null)
      this.last$7f5d0838 = paramc;
    while (true)
    {
      this.a = (1 + this.a);
      this.notEmpty.signal();
      return true;
      localc.b = paramc;
    }
  }

  private E b()
  {
    c localc1 = this.last$7f5d0838;
    if (localc1 == null)
      return null;
    c localc2 = localc1.b;
    Object localObject = localc1.a;
    localc1.a = null;
    localc1.b = localc1;
    this.last$7f5d0838 = localc2;
    if (localc2 == null)
      this.first$7f5d0838 = null;
    while (true)
    {
      this.a = (-1 + this.a);
      this.notFull.signal();
      return localObject;
      localc2.c = null;
    }
  }

  private boolean b(c<E> paramc)
  {
    if (this.a >= this.capacity)
      return false;
    c localc = this.last$7f5d0838;
    paramc.b = localc;
    this.last$7f5d0838 = paramc;
    if (this.first$7f5d0838 == null)
      this.first$7f5d0838 = paramc;
    while (true)
    {
      this.a = (1 + this.a);
      this.notEmpty.signal();
      return true;
      localc.c = paramc;
    }
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.a = 0;
    this.first$7f5d0838 = null;
    this.last$7f5d0838 = null;
    while (true)
    {
      Object localObject = paramObjectInputStream.readObject();
      if (localObject == null)
        break;
      add(localObject);
    }
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      paramObjectOutputStream.defaultWriteObject();
      for (c localc = this.first$7f5d0838; localc != null; localc = localc.c)
        paramObjectOutputStream.writeObject(localc.a);
      paramObjectOutputStream.writeObject(null);
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public boolean add(E paramE)
  {
    addLast(paramE);
    return true;
  }

  public void addFirst(E paramE)
  {
    if (!offerFirst(paramE))
      throw new IllegalStateException("Deque full");
  }

  public void addLast(E paramE)
  {
    if (!offerLast(paramE))
      throw new IllegalStateException("Deque full");
  }

  public void clear()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      c localc;
      for (Object localObject2 = this.first$7f5d0838; localObject2 != null; localObject2 = localc)
      {
        ((c)localObject2).a = null;
        localc = ((c)localObject2).c;
        ((c)localObject2).b = null;
        ((c)localObject2).c = null;
      }
      this.last$7f5d0838 = null;
      this.first$7f5d0838 = null;
      this.a = 0;
      this.notFull.signalAll();
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }

  public boolean contains(Object paramObject)
  {
    if (paramObject == null)
      return false;
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      for (c localc = this.first$7f5d0838; localc != null; localc = localc.c)
      {
        boolean bool = paramObject.equals(localc.a);
        if (bool)
          return true;
      }
      return false;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public Iterator<E> descendingIterator()
  {
    return new e(this, 0);
  }

  public int drainTo(Collection<? super E> paramCollection)
  {
    return drainTo(paramCollection, 2147483647);
  }

  public int drainTo(Collection<? super E> paramCollection, int paramInt)
  {
    if (paramCollection == null)
      throw new NullPointerException();
    if (paramCollection == this)
      throw new IllegalArgumentException();
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      int i = Math.min(paramInt, this.a);
      for (int j = 0; j < i; j++)
      {
        paramCollection.add(this.first$7f5d0838.a);
        a();
      }
      return i;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public E element()
  {
    return getFirst();
  }

  public E getFirst()
  {
    Object localObject = peekFirst();
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public E getLast()
  {
    Object localObject = peekLast();
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public Iterator<E> iterator()
  {
    return new f(this, 0);
  }

  public boolean offer(E paramE)
  {
    return offerLast(paramE);
  }

  public boolean offer(E paramE, long paramLong, TimeUnit paramTimeUnit)
  {
    return offerLast(paramE, paramLong, paramTimeUnit);
  }

  public boolean offerFirst(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException();
    c localc = new c(paramE);
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      boolean bool = a(localc);
      return bool;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public boolean offerFirst(E paramE, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramE == null)
      throw new NullPointerException();
    c localc = new c(paramE);
    long l1 = paramTimeUnit.toNanos(paramLong);
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lockInterruptibly();
    try
    {
      while (true)
      {
        boolean bool = a(localc);
        if (bool)
          break;
        if (l1 <= 0L)
          return false;
        long l2 = this.notFull.awaitNanos(l1);
        l1 = l2;
      }
      return true;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public boolean offerLast(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException();
    c localc = new c(paramE);
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      boolean bool = b(localc);
      return bool;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public boolean offerLast(E paramE, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramE == null)
      throw new NullPointerException();
    c localc = new c(paramE);
    long l1 = paramTimeUnit.toNanos(paramLong);
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lockInterruptibly();
    try
    {
      while (true)
      {
        boolean bool = b(localc);
        if (bool)
          break;
        if (l1 <= 0L)
          return false;
        long l2 = this.notFull.awaitNanos(l1);
        l1 = l2;
      }
      return true;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public E peek()
  {
    return peekFirst();
  }

  public E peekFirst()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      c localc = this.first$7f5d0838;
      if (localc == null);
      for (Object localObject2 = null; ; localObject2 = this.first$7f5d0838.a)
        return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }

  public E peekLast()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      c localc = this.last$7f5d0838;
      if (localc == null);
      for (Object localObject2 = null; ; localObject2 = this.last$7f5d0838.a)
        return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }

  public E poll()
  {
    return pollFirst();
  }

  public E poll(long paramLong, TimeUnit paramTimeUnit)
  {
    return pollFirst(paramLong, paramTimeUnit);
  }

  public E pollFirst()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      Object localObject2 = a();
      return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }

  public E pollFirst(long paramLong, TimeUnit paramTimeUnit)
  {
    long l1 = paramTimeUnit.toNanos(paramLong);
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lockInterruptibly();
    long l2 = l1;
    try
    {
      Object localObject2;
      while (true)
      {
        localObject2 = a();
        if (localObject2 != null)
          break;
        if (l2 <= 0L)
          return null;
        long l3 = this.notEmpty.awaitNanos(l2);
        l2 = l3;
      }
      return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }

  public E pollLast()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      Object localObject2 = b();
      return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }

  public E pollLast(long paramLong, TimeUnit paramTimeUnit)
  {
    long l1 = paramTimeUnit.toNanos(paramLong);
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lockInterruptibly();
    long l2 = l1;
    try
    {
      Object localObject2;
      while (true)
      {
        localObject2 = b();
        if (localObject2 != null)
          break;
        if (l2 <= 0L)
          return null;
        long l3 = this.notEmpty.awaitNanos(l2);
        l2 = l3;
      }
      return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }

  public E pop()
  {
    return removeFirst();
  }

  public void push(E paramE)
  {
    addFirst(paramE);
  }

  public void put(E paramE)
  {
    putLast(paramE);
  }

  public void putFirst(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException();
    c localc = new c(paramE);
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      if (!a(localc))
        this.notFull.await();
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public void putLast(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException();
    c localc = new c(paramE);
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      if (!b(localc))
        this.notFull.await();
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public int remainingCapacity()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      int i = this.capacity;
      int j = this.a;
      int k = i - j;
      return k;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
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
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      for (c localc = this.first$7f5d0838; localc != null; localc = localc.c)
      {
        if (!paramObject.equals(localc.a))
          continue;
        unlink$2f314fad(localc);
        return true;
      }
      return false;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
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
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      for (c localc = this.last$7f5d0838; localc != null; localc = localc.b)
      {
        if (!paramObject.equals(localc.a))
          continue;
        unlink$2f314fad(localc);
        return true;
      }
      return false;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public int size()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      int i = this.a;
      return i;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public E take()
  {
    return takeFirst();
  }

  public E takeFirst()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    Object localObject2;
    try
    {
      while (true)
      {
        localObject2 = a();
        if (localObject2 != null)
          break;
        this.notEmpty.await();
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
    localReentrantLock.unlock();
    return localObject2;
  }

  public E takeLast()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    Object localObject2;
    try
    {
      while (true)
      {
        localObject2 = b();
        if (localObject2 != null)
          break;
        this.notEmpty.await();
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
    localReentrantLock.unlock();
    return localObject2;
  }

  public Object[] toArray()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      Object[] arrayOfObject = new Object[this.a];
      int i = 0;
      c localc = this.first$7f5d0838;
      while (localc != null)
      {
        int j = i + 1;
        arrayOfObject[i] = localc.a;
        localc = localc.c;
        i = j;
      }
      return arrayOfObject;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      if (paramArrayOfT.length < this.a)
        paramArrayOfT = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), this.a);
      int i = 0;
      c localc = this.first$7f5d0838;
      while (localc != null)
      {
        int j = i + 1;
        paramArrayOfT[i] = localc.a;
        localc = localc.c;
        i = j;
      }
      if (paramArrayOfT.length > i)
        paramArrayOfT[i] = null;
      return paramArrayOfT;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }

  public String toString()
  {
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      c localc1 = this.first$7f5d0838;
      if (localc1 == null)
        return "[]";
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append('[');
      c localc2;
      for (Object localObject2 = localc1; ; localObject2 = localc2)
      {
        Object localObject3 = ((c)localObject2).a;
        if (localObject3 == this)
          localObject3 = "(this Collection)";
        localStringBuilder.append(localObject3);
        localc2 = ((c)localObject2).c;
        if (localc2 == null)
        {
          String str = ']';
          return str;
        }
        localStringBuilder.append(',').append(' ');
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }

  void unlink$2f314fad(c<E> paramc)
  {
    c localc1 = paramc.b;
    c localc2 = paramc.c;
    if (localc1 == null)
    {
      a();
      return;
    }
    if (localc2 == null)
    {
      b();
      return;
    }
    localc1.c = localc2;
    localc2.b = localc1;
    paramc.a = null;
    this.a = (-1 + this.a);
    this.notFull.signal();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque
 * JD-Core Version:    0.6.0
 */