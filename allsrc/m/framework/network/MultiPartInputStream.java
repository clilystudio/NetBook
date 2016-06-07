package m.framework.network;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

public class MultiPartInputStream extends InputStream
{
  private int curIs;
  private ArrayList<InputStream> isList = new ArrayList();

  private boolean isEmpty()
  {
    return (this.isList == null) || (this.isList.size() <= 0);
  }

  public void addInputStream(InputStream paramInputStream)
  {
    this.isList.add(paramInputStream);
  }

  public int available()
  {
    if (isEmpty())
      return 0;
    return ((InputStream)this.isList.get(this.curIs)).available();
  }

  public void close()
  {
    Iterator localIterator = this.isList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ((InputStream)localIterator.next()).close();
    }
  }

  public int read()
  {
    int i;
    if (isEmpty())
      i = -1;
    label76: 
    while (true)
    {
      return i;
      for (i = ((InputStream)this.isList.get(this.curIs)).read(); ; i = ((InputStream)this.isList.get(this.curIs)).read())
      {
        if (i >= 0)
          break label76;
        this.curIs = (1 + this.curIs);
        if (this.curIs >= this.isList.size())
          break;
      }
    }
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i;
    if (isEmpty())
      i = -1;
    label87: 
    while (true)
    {
      return i;
      for (i = ((InputStream)this.isList.get(this.curIs)).read(paramArrayOfByte, paramInt1, paramInt2); ; i = ((InputStream)this.isList.get(this.curIs)).read(paramArrayOfByte, paramInt1, paramInt2))
      {
        if (i >= 0)
          break label87;
        this.curIs = (1 + this.curIs);
        if (this.curIs >= this.isList.size())
          break;
      }
    }
  }

  public long skip(long paramLong)
  {
    throw new IOException();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.network.MultiPartInputStream
 * JD-Core Version:    0.6.0
 */