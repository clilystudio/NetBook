package u.aly;

public abstract class bZ
{
  public abstract int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public void a(int paramInt)
  {
  }

  public final void a(byte[] paramArrayOfByte)
  {
    b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public abstract void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public byte[] b()
  {
    return null;
  }

  public int c()
  {
    return 0;
  }

  public int d()
  {
    return -1;
  }

  public final int d(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (true)
    {
      if (i >= paramInt2)
        return i;
      int j = a(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
      if (j <= 0)
        throw new dn("Cannot read. Remote side has closed. Tried to read " + paramInt2 + " bytes, but only got " + i + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
      i += j;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bZ
 * JD-Core Version:    0.6.0
 */