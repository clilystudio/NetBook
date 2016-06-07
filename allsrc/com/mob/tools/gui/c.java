package com.mob.tools.gui;

import android.graphics.Bitmap;

public final class c
{
  private String a;
  private b b;
  private g c;
  private long d = System.currentTimeMillis();
  private Bitmap e;

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("url=").append(this.a);
    localStringBuilder.append("time=").append(this.d);
    localStringBuilder.append("worker=").append(this.c.getName()).append(" (").append(this.c.getId());
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.c
 * JD-Core Version:    0.6.0
 */