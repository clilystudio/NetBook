package android.support.v4.util;

public abstract interface Pools$Pool<T>
{
  public abstract T acquire();

  public abstract boolean release(T paramT);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.Pools.Pool
 * JD-Core Version:    0.6.0
 */