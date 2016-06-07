package android.support.multidex;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

class b
{
  long a;
  long b;

  static long a(File paramFile)
  {
    RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramFile, "r");
    try
    {
      long l = a(localRandomAccessFile, a(localRandomAccessFile));
      return l;
    }
    finally
    {
      localRandomAccessFile.close();
    }
    throw localObject;
  }

  static long a(RandomAccessFile paramRandomAccessFile, b paramb)
  {
    CRC32 localCRC32 = new CRC32();
    long l = paramb.b;
    paramRandomAccessFile.seek(paramb.a);
    int i = (int)Math.min(16384L, l);
    byte[] arrayOfByte = new byte[16384];
    for (int j = paramRandomAccessFile.read(arrayOfByte, 0, i); j != -1; j = paramRandomAccessFile.read(arrayOfByte, 0, (int)Math.min(16384L, l)))
    {
      localCRC32.update(arrayOfByte, 0, j);
      l -= j;
      if (l == 0L)
        break;
    }
    return localCRC32.getValue();
  }

  static b a(RandomAccessFile paramRandomAccessFile)
  {
    long l1 = 0L;
    long l2 = paramRandomAccessFile.length() - 22L;
    if (l2 < l1)
      throw new ZipException("File too short to be a zip file: " + paramRandomAccessFile.length());
    long l3 = l2 - 65536L;
    if (l3 < l1);
    while (true)
    {
      int i = Integer.reverseBytes(101010256);
      long l4 = l2;
      while (true)
      {
        paramRandomAccessFile.seek(l4);
        if (paramRandomAccessFile.readInt() == i)
          break;
        l4 -= 1L;
        if (l4 >= l1)
          continue;
        throw new ZipException("End Of Central Directory signature not found");
      }
      paramRandomAccessFile.skipBytes(2);
      paramRandomAccessFile.skipBytes(2);
      paramRandomAccessFile.skipBytes(2);
      paramRandomAccessFile.skipBytes(2);
      b localb = new b();
      localb.b = (0xFFFFFFFF & Integer.reverseBytes(paramRandomAccessFile.readInt()));
      localb.a = (0xFFFFFFFF & Integer.reverseBytes(paramRandomAccessFile.readInt()));
      return localb;
      l1 = l3;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.multidex.b
 * JD-Core Version:    0.6.0
 */