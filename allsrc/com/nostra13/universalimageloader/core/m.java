package com.nostra13.universalimageloader.core;

import com.nostra13.universalimageloader.a.a.a;
import java.io.File;
import java.util.concurrent.Executor;

final class m
  implements Runnable
{
  m(l paraml, LoadAndDisplayImageTask paramLoadAndDisplayImageTask)
  {
  }

  public final void run()
  {
    File localFile = this.b.a.m.a(this.a.a);
    if ((localFile != null) && (localFile.exists()));
    for (int i = 1; ; i = 0)
    {
      l.a(this.b);
      if (i == 0)
        break;
      l.b(this.b).execute(this.a);
      return;
    }
    l.c(this.b).execute(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.m
 * JD-Core Version:    0.6.0
 */