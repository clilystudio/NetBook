package com.nostra13.universalimageloader.core;

import android.content.Context;
import android.support.design.widget.K;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import java.util.concurrent.Executor;

public final class i
{
  private static QueueProcessingType a = QueueProcessingType.FIFO;
  private Context b;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private K g = null;
  private Executor h = null;
  private Executor i = null;
  private boolean j = false;
  private boolean k = false;
  private int l = 3;
  private int m = 4;
  private boolean n = false;
  private QueueProcessingType o = a;
  private int p = 0;
  private long q = 0L;
  private int r = 0;
  private com.nostra13.universalimageloader.a.b.a s = null;
  private com.nostra13.universalimageloader.a.a.a t = null;
  private com.nostra13.universalimageloader.a.a.b.a u = null;
  private ImageDownloader v = null;
  private com.nostra13.universalimageloader.core.a.d w;
  private d x = null;
  private boolean y = false;

  public i(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
  }

  public final g a()
  {
    if (this.h == null)
    {
      this.h = a.a(this.l, this.m, this.o);
      if (this.i != null)
        break label203;
      this.i = a.a(this.l, this.m, this.o);
    }
    while (true)
    {
      if (this.t == null)
      {
        if (this.u == null)
          this.u = new com.nostra13.universalimageloader.a.a.b.a();
        this.t = a.a(this.b, this.u, 0L, 0);
      }
      if (this.s == null)
        this.s = new com.nostra13.universalimageloader.a.b.a.a((int)(Runtime.getRuntime().maxMemory() / 8L));
      if (this.v == null)
        this.v = new com.nostra13.universalimageloader.core.download.a(this.b);
      if (this.w == null)
        this.w = new com.nostra13.universalimageloader.core.a.a(false);
      if (this.x == null)
        this.x = new e().a();
      return new g(this, 0);
      this.j = true;
      break;
      label203: this.k = true;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.i
 * JD-Core Version:    0.6.0
 */