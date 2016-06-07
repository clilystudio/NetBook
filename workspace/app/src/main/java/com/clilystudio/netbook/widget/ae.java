package com.clilystudio.netbook.widget;

import com.c.a.D;
import com.c.a.w;

final class ae
  implements D
{
  ae(LoadingProgressView paramLoadingProgressView)
  {
  }

  public final void a(w paramw)
  {
    if (!LoadingProgressView.a(this.a))
    {
      LoadingProgressView.a(this.a, ((Float)paramw.f()).floatValue());
      this.a.setProgress(LoadingProgressView.b(this.a));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.ae
 * JD-Core Version:    0.6.0
 */