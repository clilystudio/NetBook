package com.mob.tools.gui;

import java.util.Timer;

final class d extends Timer
{
  private a a;

  public d(a parama)
  {
    this.a = parama;
    schedule(new e(this), 0L, a.b(this.a));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.d
 * JD-Core Version:    0.6.0
 */