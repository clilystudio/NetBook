package com.mob.tools.gui;

import java.util.TimerTask;

final class e extends TimerTask
{
  private int a;

  e(d paramd)
  {
  }

  public final void run()
  {
    if (a.a(d.a(this.b)))
    {
      this.a = (-1 + this.a);
      if (this.a <= 0)
      {
        this.a = 100;
        d.b(this.b);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.e
 * JD-Core Version:    0.6.0
 */