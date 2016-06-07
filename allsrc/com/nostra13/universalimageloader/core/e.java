package com.nostra13.universalimageloader.core;

import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.design.widget.K;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.b.a;

public final class e
{
  private int a = 0;
  private int b = 0;
  private int c = 0;
  private Drawable d = null;
  private Drawable e = null;
  private Drawable f = null;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private ImageScaleType j = ImageScaleType.IN_SAMPLE_POWER_OF_2;
  private BitmapFactory.Options k = new BitmapFactory.Options();
  private int l = 0;
  private boolean m = false;
  private Object n = null;
  private K o = null;
  private K p = null;
  private a q = new com.nostra13.universalimageloader.core.b.d();
  private Handler r = null;
  private boolean s = false;

  public e()
  {
    this.k.inPurgeable = true;
    this.k.inInputShareable = true;
  }

  public final d a()
  {
    return new d(this, 0);
  }

  public final e a(int paramInt)
  {
    this.a = paramInt;
    return this;
  }

  public final e a(ImageScaleType paramImageScaleType)
  {
    this.j = paramImageScaleType;
    return this;
  }

  public final e a(a parama)
  {
    if (parama == null)
      throw new IllegalArgumentException("displayer can't be null");
    this.q = parama;
    return this;
  }

  public final e a(d paramd)
  {
    this.a = d.a(paramd);
    this.b = d.b(paramd);
    this.c = d.c(paramd);
    this.d = d.d(paramd);
    this.e = d.e(paramd);
    this.f = d.f(paramd);
    this.g = d.g(paramd);
    this.h = d.h(paramd);
    this.i = d.i(paramd);
    this.j = d.j(paramd);
    this.k = d.k(paramd);
    this.l = d.l(paramd);
    this.m = d.m(paramd);
    this.n = d.n(paramd);
    this.o = d.o(paramd);
    this.p = d.p(paramd);
    this.q = d.q(paramd);
    this.r = d.r(paramd);
    this.s = d.s(paramd);
    return this;
  }

  public final e a(boolean paramBoolean)
  {
    this.h = true;
    return this;
  }

  public final e b(boolean paramBoolean)
  {
    this.i = true;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.e
 * JD-Core Version:    0.6.0
 */