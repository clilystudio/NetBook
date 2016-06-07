package com.integralblue.httpresponsecache.compat.java.util.concurrent;

 enum TimeUnit$5
{
  public final long convert(long paramLong, TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.toMinutes(paramLong);
  }

  final int excessNanos(long paramLong1, long paramLong2)
  {
    return 0;
  }

  public final long toDays(long paramLong)
  {
    return paramLong / 1440L;
  }

  public final long toHours(long paramLong)
  {
    return paramLong / 60L;
  }

  public final long toMicros(long paramLong)
  {
    return x(paramLong, 60000000L, 153722867280L);
  }

  public final long toMillis(long paramLong)
  {
    return x(paramLong, 60000L, 153722867280912L);
  }

  public final long toMinutes(long paramLong)
  {
    return paramLong;
  }

  public final long toNanos(long paramLong)
  {
    return x(paramLong, 60000000000L, 153722867L);
  }

  public final long toSeconds(long paramLong)
  {
    return x(paramLong, 60L, 153722867280912930L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.java.util.concurrent.TimeUnit.5
 * JD-Core Version:    0.6.0
 */