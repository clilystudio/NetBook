package com.nostra13.universalimageloader.core;

import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.FailReason.FailType;
import com.nostra13.universalimageloader.core.c.a;

final class p
  implements Runnable
{
  p(LoadAndDisplayImageTask paramLoadAndDisplayImageTask, FailReason.FailType paramFailType, Throwable paramThrowable)
  {
  }

  public final void run()
  {
    if (this.c.c.c())
      this.c.b.a(this.c.c.c(LoadAndDisplayImageTask.a(this.c).a));
    this.c.b.d();
    new FailReason(this.a, this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.p
 * JD-Core Version:    0.6.0
 */