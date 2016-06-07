package m.framework.network;

import java.io.InputStream;
import org.apache.http.entity.InputStreamEntity;

public abstract class HTTPPart
{
  protected abstract InputStream getInputStream();

  public InputStreamEntity getInputStreamEntity()
  {
    return new InputStreamEntity(getInputStream(), length());
  }

  protected abstract long length();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.network.HTTPPart
 * JD-Core Version:    0.6.0
 */