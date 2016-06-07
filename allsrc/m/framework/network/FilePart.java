package m.framework.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class FilePart extends HTTPPart
{
  private File file;

  protected InputStream getInputStream()
  {
    return new FileInputStream(this.file);
  }

  protected long length()
  {
    return this.file.length();
  }

  public void setFile(File paramFile)
  {
    this.file = paramFile;
  }

  public void setFile(String paramString)
  {
    this.file = new File(paramString);
  }

  public String toString()
  {
    return this.file.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.network.FilePart
 * JD-Core Version:    0.6.0
 */