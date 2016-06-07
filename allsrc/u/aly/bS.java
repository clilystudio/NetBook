package u.aly;

import java.util.BitSet;

public final class bS extends cs
{
  public final void a(BitSet paramBitSet, int paramInt)
  {
    int i = 0;
    byte[] arrayOfByte = new byte[(int)Math.ceil(paramInt / 8.0D)];
    int j = 0;
    int m;
    if (j >= paramBitSet.length())
      m = arrayOfByte.length;
    while (true)
    {
      if (i >= m)
      {
        return;
        if (paramBitSet.get(j))
        {
          int k = -1 + (arrayOfByte.length - j / 8);
          arrayOfByte[k] = (byte)(arrayOfByte[k] | 1 << j % 8);
        }
        j++;
        break;
      }
      a(arrayOfByte[i]);
      i++;
    }
  }

  public final BitSet b(int paramInt)
  {
    int i = 0;
    int j = (int)Math.ceil(paramInt / 8.0D);
    byte[] arrayOfByte = new byte[j];
    int k = 0;
    BitSet localBitSet;
    if (k >= j)
      localBitSet = new BitSet();
    while (true)
    {
      if (i >= arrayOfByte.length << 3)
      {
        return localBitSet;
        arrayOfByte[k] = k();
        k++;
        break;
      }
      if ((arrayOfByte[(-1 + (arrayOfByte.length - i / 8))] & 1 << i % 8) > 0)
        localBitSet.set(i);
      i++;
    }
  }

  public final Class<? extends bT> s()
  {
    return bW.class;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bS
 * JD-Core Version:    0.6.0
 */