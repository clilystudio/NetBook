package android.support.v4.util;

class ContainerHelpers
{
  static final int[] EMPTY_INTS = new int[0];
  static final long[] EMPTY_LONGS = new long[0];
  static final Object[] EMPTY_OBJECTS = new Object[0];

  static int binarySearch(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramInt1 - 1;
    int j = 0;
    int k;
    while (true)
      if (j <= i)
      {
        k = j + i >>> 1;
        int m = paramArrayOfInt[k];
        if (m < paramInt2)
        {
          j = k + 1;
          continue;
        }
        if (m <= paramInt2)
          break;
        i = k - 1;
        continue;
      }
      else
      {
        k = j ^ 0xFFFFFFFF;
      }
    return k;
  }

  static int binarySearch(long[] paramArrayOfLong, int paramInt, long paramLong)
  {
    int i = paramInt - 1;
    int j = 0;
    int k;
    while (true)
      if (j <= i)
      {
        k = j + i >>> 1;
        long l = paramArrayOfLong[k];
        if (l < paramLong)
        {
          j = k + 1;
          continue;
        }
        if (l <= paramLong)
          break;
        i = k - 1;
        continue;
      }
      else
      {
        k = j ^ 0xFFFFFFFF;
      }
    return k;
  }

  public static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  public static int idealByteArraySize(int paramInt)
  {
    for (int i = 4; ; i++)
    {
      if (i < 32)
      {
        if (paramInt > -12 + (1 << i))
          continue;
        paramInt = -12 + (1 << i);
      }
      return paramInt;
    }
  }

  public static int idealIntArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt << 2) / 4;
  }

  public static int idealLongArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt << 3) / 8;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.ContainerHelpers
 * JD-Core Version:    0.6.0
 */