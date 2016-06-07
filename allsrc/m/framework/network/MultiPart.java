package m.framework.network;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

public class MultiPart extends HTTPPart
{
  private ArrayList<HTTPPart> parts = new ArrayList();

  public MultiPart append(HTTPPart paramHTTPPart)
  {
    this.parts.add(paramHTTPPart);
    return this;
  }

  protected InputStream getInputStream()
  {
    MultiPartInputStream localMultiPartInputStream = new MultiPartInputStream();
    Iterator localIterator = this.parts.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localMultiPartInputStream;
      localMultiPartInputStream.addInputStream(((HTTPPart)localIterator.next()).getInputStream());
    }
  }

  protected long length()
  {
    Iterator localIterator = this.parts.iterator();
    long l = 0L;
    while (true)
    {
      if (!localIterator.hasNext())
        return l;
      l += ((HTTPPart)localIterator.next()).length();
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.parts.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localStringBuilder.toString();
      localStringBuilder.append(((HTTPPart)localIterator.next()).toString());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.network.MultiPart
 * JD-Core Version:    0.6.0
 */