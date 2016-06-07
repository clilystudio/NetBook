package com.clilystudio.netbook.widget;

import com.c.a.D;

final class w
  implements D
{
  w(CoverLoadingLayer paramCoverLoadingLayer)
  {
  }

  public final void a(com.c.a.w paramw)
  {
    float f = ((Float)paramw.f()).floatValue();
    CoverLoadingLayer.b(this.a, f * CoverLoadingLayer.d(this.a));
    this.a.invalidate();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.w
 * JD-Core Version:    0.6.0
 */