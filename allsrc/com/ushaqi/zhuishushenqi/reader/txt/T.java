package com.ushaqi.zhuishushenqi.reader.txt;

import com.ushaqi.zhuishushenqi.db.BookFile;
import java.io.File;

final class T
{
  private boolean a;
  private BookFile b;
  private long c;

  private T(ScanTxtFileActivity paramScanTxtFileActivity, BookFile paramBookFile)
  {
    this.b = paramBookFile;
  }

  private T(ScanTxtFileActivity paramScanTxtFileActivity, File paramFile)
  {
    this(paramScanTxtFileActivity, new BookFile(paramFile));
    this.c = paramFile.lastModified();
  }

  public final BookFile a()
  {
    return this.b;
  }

  public final void a(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public final boolean b()
  {
    return this.a;
  }

  public final void c()
  {
    if (!this.a);
    for (boolean bool = true; ; bool = false)
    {
      this.a = bool;
      return;
    }
  }

  public final long d()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.txt.T
 * JD-Core Version:    0.6.0
 */