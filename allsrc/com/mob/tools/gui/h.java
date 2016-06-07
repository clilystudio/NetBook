package com.mob.tools.gui;

import android.graphics.Bitmap;
import com.mob.tools.a.q;
import java.io.File;
import java.io.InputStream;

final class h
  implements q
{
  h(g paramg, File paramFile, boolean paramBoolean, c paramc)
  {
  }

  public final void a(InputStream paramInputStream)
  {
    Bitmap localBitmap = com.arcsoft.hpay100.a.a.a(new f(paramInputStream), 1);
    if ((localBitmap == null) || (localBitmap.isRecycled()))
    {
      g.a(this.d, null);
      return;
    }
    g.a(this.d, localBitmap, this.a, this.b);
    if (localBitmap != null)
    {
      a.c(g.c(this.d)).a(c.a(this.c), localBitmap);
      c.a(this.c, localBitmap);
    }
    g.a(this.d, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.h
 * JD-Core Version:    0.6.0
 */