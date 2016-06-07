package com.integralblue.httpresponsecache.compat.java.util.concurrent;

 enum TimeUnit$7
{
  public final long convert(long paramLong, TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.toDays(paramLong);
  }

  final int excessNanos(long paramLong1, long paramLong2)
  {
    return 0;
  }

  public final long toDays(long paramLong)
  {
    return paramLong;
  }

  public final long toHours(long paramLong)
  {
    return x(paramLong, 24L, 384307168202282325L);
  }

  public final long toMicros(long paramLong)
  {
    return x(paramLong, 86400000000L, 106751991L);
  }

  public final long toMillis(long paramLong)
  {
    return x(paramLong, 86400000L, 106751991167L);
  }

  public final long toMinutes(long paramLong)
  {
    return x(paramLong, 1440L, 6405119470038038L);
  }

  public final long toNanos(long paramLong)
  {
    return x(paramLong, 86400000000000L, 106751L);
  }

  public final long toSeconds(long paramLong)
  {
    return x(paramLong, 86400L, 106751991167300L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.java.util.concurrent.TimeUnit.7
 * JD-Core Version:    0.6.0
 */