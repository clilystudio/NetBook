package android.support.v4.util;

public class Pools$SimplePool<T>
  implements Pools.Pool<T>
{
  private final Object[] mPool;
  private int mPoolSize;

  public Pools$SimplePool(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("The max pool size must be > 0");
    this.mPool = new Object[paramInt];
  }

  private boolean isInPool(T paramT)
  {
    for (int i = 0; ; i++)
    {
      int j = this.mPoolSize;
      int k = 0;
      if (i < j)
      {
        if (this.mPool[i] != paramT)
          continue;
        k = 1;
      }
      return k;
    }
  }

  public T acquire()
  {
    if (this.mPoolSize > 0)
    {
      int i = -1 + this.mPoolSize;
      Object localObject = this.mPool[i];
      this.mPool[i] = null;
      this.mPoolSize = (-1 + this.mPoolSize);
      return localObject;
    }
    return null;
  }

  public boolean release(T paramT)
  {
    if (isInPool(paramT))
      throw new IllegalStateException("Already in the pool!");
    if (this.mPoolSize < this.mPool.length)
    {
      this.mPool[this.mPoolSize] = paramT;
      this.mPoolSize = (1 + this.mPoolSize);
      return true;
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.Pools.SimplePool
 * JD-Core Version:    0.6.0
 */