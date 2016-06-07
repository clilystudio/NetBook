package com.integralblue.httpresponsecache.compat.java.util.concurrent;

public enum TimeUnit
{
  static final long C0 = 1L;
  static final long C1 = 1000L;
  static final long C2 = 1000000L;
  static final long C3 = 1000000000L;
  static final long C4 = 60000000000L;
  static final long C5 = 3600000000000L;
  static final long C6 = 86400000000000L;
  static final long MAX = 9223372036854775807L;

  static
  {
    MICROSECONDS = new TimeUnit.2("MICROSECONDS", 1);
    MILLISECONDS = new TimeUnit.3("MILLISECONDS", 2);
    SECONDS = new TimeUnit.4("SECONDS", 3);
    MINUTES = new TimeUnit.5("MINUTES", 4);
    HOURS = new TimeUnit.6("HOURS", 5);
    DAYS = new TimeUnit.7("DAYS", 6);
    TimeUnit[] arrayOfTimeUnit = new TimeUnit[7];
    arrayOfTimeUnit[0] = NANOSECONDS;
    arrayOfTimeUnit[1] = MICROSECONDS;
    arrayOfTimeUnit[2] = MILLISECONDS;
    arrayOfTimeUnit[3] = SECONDS;
    arrayOfTimeUnit[4] = MINUTES;
    arrayOfTimeUnit[5] = HOURS;
    arrayOfTimeUnit[6] = DAYS;
    a = arrayOfTimeUnit;
  }

  static long x(long paramLong1, long paramLong2, long paramLong3)
  {
    if (paramLong1 > paramLong3)
      return 9223372036854775807L;
    if (paramLong1 < -paramLong3)
      return -9223372036854775808L;
    return paramLong1 * paramLong2;
  }

  public long convert(long paramLong, TimeUnit paramTimeUnit)
  {
    throw new AbstractMethodError();
  }

  abstract int excessNanos(long paramLong1, long paramLong2);

  public void sleep(long paramLong)
  {
    if (paramLong > 0L)
    {
      long l = toMillis(paramLong);
      Thread.sleep(l, excessNanos(paramLong, l));
    }
  }

  public void timedJoin(Thread paramThread, long paramLong)
  {
    if (paramLong > 0L)
    {
      long l = toMillis(paramLong);
      paramThread.join(l, excessNanos(paramLong, l));
    }
  }

  public void timedWait(Object paramObject, long paramLong)
  {
    if (paramLong > 0L)
    {
      long l = toMillis(paramLong);
      paramObject.wait(l, excessNanos(paramLong, l));
    }
  }

  public long toDays(long paramLong)
  {
    throw new AbstractMethodError();
  }

  public long toHours(long paramLong)
  {
    throw new AbstractMethodError();
  }

  public long toMicros(long paramLong)
  {
    throw new AbstractMethodError();
  }

  public long toMillis(long paramLong)
  {
    throw new AbstractMethodError();
  }

  public long toMinutes(long paramLong)
  {
    throw new AbstractMethodError();
  }

  public long toNanos(long paramLong)
  {
    throw new AbstractMethodError();
  }

  public long toSeconds(long paramLong)
  {
    throw new AbstractMethodError();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.java.util.concurrent.TimeUnit
 * JD-Core Version:    0.6.0
 */