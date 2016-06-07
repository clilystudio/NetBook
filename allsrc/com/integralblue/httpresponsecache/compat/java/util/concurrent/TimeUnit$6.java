package com.integralblue.httpresponsecache.compat.java.util.concurrent;

 enum TimeUnit$6
{
  public final long convert(long paramLong, TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.toHours(paramLong);
  }

  final int excessNanos(long paramLong1, long paramLong2)
  {
    return 0;
  }

  public final long toDays(long paramLong)
  {
    return paramLong / 24L;
  }

  public final long toHours(long paramLong)
  {
    return paramLong;
  }

  public final long toMicros(long paramLong)
  {
    return x(paramLong, 3600000000L, 2562047788L);
  }

  public final long toMillis(long paramLong)
  {
    return x(paramLong, 3600000L, 2562047788015L);
  }

  public final long toMinutes(long paramLong)
  {
    return x(paramLong, 60L, 153722867280912930L);
  }

  public final long toNanos(long paramLong)
  {
    return x(paramLong, 3600000000000L, 2562047L);
  }

  public final long toSeconds(long paramLong)
  {
    return x(paramLong, 3600L, 2562047788015215L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.java.util.concurrent.TimeUnit.6
 * JD-Core Version:    0.6.0
 */