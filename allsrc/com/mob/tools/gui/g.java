package com.mob.tools.gui;

import android.graphics.Bitmap;
import com.mob.tools.a.l;
import com.mob.tools.e;
import com.mob.tools.log.d;
import java.io.File;
import java.util.Vector;

final class g extends Thread
{
  private a a;
  private long b;
  private boolean c;
  private c d;

  public g(a parama)
  {
    this.a = parama;
    this.b = System.currentTimeMillis();
  }

  private void a(c paramc)
  {
    this.d = paramc;
    c.a(this.d, this);
    boolean bool;
    File localFile;
    Bitmap localBitmap;
    if ((c.a(paramc).toLowerCase().endsWith("png")) || (c.a(paramc).toLowerCase().endsWith("gif")))
    {
      bool = true;
      localFile = new File(a.f(this.a), com.arcsoft.hpay100.a.a.h(c.a(paramc)));
      if (!localFile.exists())
        break label159;
      localBitmap = com.arcsoft.hpay100.a.a.f(localFile.getAbsolutePath());
      if (localBitmap != null)
      {
        a.c(this.a).a(c.a(paramc), localBitmap);
        c.a(paramc, localBitmap);
      }
      this.d = null;
    }
    while (true)
    {
      if (localBitmap != null)
      {
        a.c(this.a).a(c.a(paramc), localBitmap);
        c.a(paramc, localBitmap);
      }
      this.d = null;
      return;
      bool = false;
      break;
      label159: new l().rawGet(c.a(paramc), new h(this, localFile, bool, paramc), null);
      localBitmap = null;
    }
  }

  public final void interrupt()
  {
    try
    {
      super.interrupt();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public final void run()
  {
    if (a.a(this.a));
    while (true)
    {
      while (true)
      {
        try
        {
          if (!this.c)
            break label261;
          if (a.d(this.a).size() <= 0)
            break label426;
          localc3 = (c)a.d(this.a).remove(0);
          if (localc3 == null)
            break label240;
          Bitmap localBitmap2 = (Bitmap)a.c(this.a).a(c.a(localc3));
          if (localBitmap2 == null)
            break label120;
          this.d = localc3;
          c.a(this.d, this);
          c.a(localc3, localBitmap2);
          this.b = System.currentTimeMillis();
        }
        catch (Throwable localThrowable1)
        {
          e.a().w(localThrowable1);
        }
        break;
        label120: if (new File(a.f(this.a), com.arcsoft.hpay100.a.a.h(c.a(localc3))).exists())
        {
          a(localc3);
          this.b = System.currentTimeMillis();
          break;
        }
        if (a.g(this.a).size() > a.h(this.a))
        {
          while (a.d(this.a).size() > 0)
            a.d(this.a).remove(0);
          a.g(this.a).remove(0);
        }
        a.g(this.a).add(localc3);
        continue;
        label240: this.b = System.currentTimeMillis();
        try
        {
          Thread.sleep(30L);
        }
        catch (Throwable localThrowable3)
        {
        }
      }
      break;
      label261: if (a.g(this.a).size() > 0);
      for (c localc1 = (c)a.g(this.a).remove(0); ; localc1 = null)
      {
        if ((localc1 == null) && (a.d(this.a).size() > 0));
        for (c localc2 = (c)a.d(this.a).remove(0); ; localc2 = localc1)
        {
          while (true)
          {
            if (localc2 != null)
            {
              Bitmap localBitmap1 = (Bitmap)a.c(this.a).a(c.a(localc2));
              if (localBitmap1 != null)
              {
                this.d = localc2;
                c.a(this.d, this);
                c.a(localc2, localBitmap1);
              }
              while (true)
              {
                this.b = System.currentTimeMillis();
                break;
                a(localc2);
              }
            }
            this.b = System.currentTimeMillis();
            try
            {
              Thread.sleep(30L);
            }
            catch (Throwable localThrowable2)
            {
            }
          }
          break;
          return;
        }
      }
      label426: c localc3 = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.g
 * JD-Core Version:    0.6.0
 */