package com.integralblue.httpresponsecache.compat.java.util.concurrent;

 enum TimeUnit$1
{
  public final long convert(long paramLong, TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.toNanos(paramLong);
  }

  final int excessNanos(long paramLong1, long paramLong2)
  {
    return (int)(paramLong1 - 1000000L * paramLong2);
  }

  public final long toDays(long paramLong)
  {
    return paramLong / 86400000000000L;
  }

  public final long toHours(long paramLong)
  {
    return paramLong / 3600000000000L;
  }

  public final long toMicros(long paramLong)
  {
    return paramLong / 1000L;
  }

  public final long toMillis(long paramLong)
  {
    return paramLong / 1000000L;
  }

  public final long toMinutes(long paramLong)
  {
    return paramLong / 60000000000L;
  }

  public final long toNanos(long paramLong)
  {
    return paramLong;
  }

  public final long toSeconds(long paramLong)
  {
    return paramLong / 1000000000L;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.java.util.concurrent.TimeUnit.1
 * JD-Core Version:    0.6.0
 */