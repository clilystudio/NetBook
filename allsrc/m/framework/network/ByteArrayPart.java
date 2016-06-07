package m.framework.network;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import m.framework.utils.Data;

public class ByteArrayPart extends HTTPPart
{
  private byte[] buffer;

  public ByteArrayPart append(byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    if ((this.buffer != null) && (this.buffer.length > 0))
      localByteArrayOutputStream.write(this.buffer);
    localByteArrayOutputStream.write(paramArrayOfByte);
    localByteArrayOutputStream.flush();
    this.buffer = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    return this;
  }

  protected InputStream getInputStream()
  {
    if ((this.buffer == null) || (this.buffer.length <= 0))
      return new ByteArrayInputStream(new byte[0]);
    return new ByteArrayInputStream(this.buffer);
  }

  protected long length()
  {
    if (this.buffer == null);
    for (int i = 0; ; i = this.buffer.length)
      return i;
  }

  public String toString()
  {
    return Data.byteToHex(this.buffer);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.network.ByteArrayPart
 * JD-Core Version:    0.6.0
 */