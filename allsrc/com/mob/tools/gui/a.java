package com.mob.tools.gui;

import android.content.Context;
import android.graphics.Bitmap;
import java.io.File;
import java.util.Vector;

public class a
{
  private static a a;
  private int b;
  private int c;
  private int d;
  private i<String, Bitmap> e;
  private boolean f;
  private Vector<c> g;
  private File h;
  private g[] i;
  private Vector<c> j;

  private a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, float paramFloat, int paramInt4)
  {
    int k;
    label22: int m;
    if (paramInt2 > 0)
    {
      this.b = paramInt2;
      if (paramInt3 <= 0)
        break label136;
      k = paramInt3;
      this.c = k;
      if (paramFloat <= 1.0F)
        break label143;
      m = (int)(paramFloat * paramInt3);
      label44: this.d = m;
      this.g = new Vector();
      this.j = new Vector();
      if (paramInt1 <= 0)
        break label150;
      label76: this.i = new g[paramInt1];
      if (paramInt4 <= 0)
        break label155;
    }
    while (true)
    {
      this.e = new i(paramInt4);
      this.h = new File(com.arcsoft.hpay100.a.a.h(paramContext, "images"));
      new d(this);
      return;
      paramInt2 = 200;
      break;
      label136: k = 100;
      break label22;
      label143: m = 120;
      break label44;
      label150: paramInt1 = 3;
      break label76;
      label155: paramInt4 = 50;
    }
  }

  public static Bitmap a(String paramString)
  {
    if (a == null)
      return null;
    return (Bitmap)a.e.a(paramString);
  }

  public static void a(Context paramContext)
  {
    monitorenter;
    try
    {
      a(paramContext, 0, 0, 0, 0.0F, 0);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private static void a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, float paramFloat, int paramInt4)
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new a(paramContext.getApplicationContext(), 0, 0, 0, 0.0F, 0);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void a(String paramString, b paramb)
  {
    if ((a == null) || (paramString == null))
      return;
    c localc = new c();
    c.a(localc, paramString);
    c.a(localc, paramb);
    a.g.add(localc);
    if (a.g.size() > a.d)
      while (a.g.size() > a.c)
        a.g.remove(0);
    if (a == null)
      throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
    a.f = true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.a
 * JD-Core Version:    0.6.0
 */