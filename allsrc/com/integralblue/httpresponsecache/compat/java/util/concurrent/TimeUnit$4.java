package com.integralblue.httpresponsecache.compat.java.util.concurrent;

 enum TimeUnit$4
{
  public final long convert(long paramLong, TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.toSeconds(paramLong);
  }

  final int excessNanos(long paramLong1, long paramLong2)
  {
    return 0;
  }

  public final long toDays(long paramLong)
  {
    return paramLong / 86400L;
  }

  public final long toHours(long paramLong)
  {
    return paramLong / 3600L;
  }

  public final long toMicros(long paramLong)
  {
    return x(paramLong, 1000000L, 9223372036854L);
  }

  public final long toMillis(long paramLong)
  {
    return x(paramLong, 1000L, 9223372036854775L);
  }

  public final long toMinutes(long paramLong)
  {
    return paramLong / 60L;
  }

  public final long toNanos(long paramLong)
  {
    return x(paramLong, 1000000000L, 9223372036L);
  }

  public final long toSeconds(long paramLong)
  {
    return paramLong;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.java.util.concurrent.TimeUnit.4
 * JD-Core Version:    0.6.0
 */