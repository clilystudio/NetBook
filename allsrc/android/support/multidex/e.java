package android.support.multidex;

import java.io.File;
import java.io.FileFilter;

final class e
  implements FileFilter
{
  e(String paramString)
  {
  }

  public final boolean accept(File paramFile)
  {
    return !paramFile.getName().startsWith(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.multidex.e
 * JD-Core Version:    0.6.0
 */