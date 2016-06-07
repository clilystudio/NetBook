package m.framework.network;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class StringPart extends HTTPPart
{
  private StringBuilder sb = new StringBuilder();

  public StringPart append(String paramString)
  {
    this.sb.append(paramString);
    return this;
  }

  protected InputStream getInputStream()
  {
    return new ByteArrayInputStream(this.sb.toString().getBytes("utf-8"));
  }

  protected long length()
  {
    return this.sb.toString().getBytes("utf-8").length;
  }

  public String toString()
  {
    return this.sb.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.network.StringPart
 * JD-Core Version:    0.6.0
 */