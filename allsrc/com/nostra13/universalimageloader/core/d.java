package com.nostra13.universalimageloader.core;

import android.content.res.Resources;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.design.widget.K;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.b.a;

public final class d
{
  private final int a;
  private final int b;
  private final int c;
  private final Drawable d;
  private final Drawable e;
  private final Drawable f;
  private final boolean g;
  private final boolean h;
  private final boolean i;
  private final ImageScaleType j;
  private final BitmapFactory.Options k;
  private final int l;
  private final boolean m;
  private final Object n;
  private final K o;
  private final K p;
  private final a q;
  private final Handler r;
  private final boolean s;

  private d(e parame)
  {
    this.a = e.a(parame);
    this.b = e.b(parame);
    this.c = e.c(parame);
    this.d = e.d(parame);
    this.e = e.e(parame);
    this.f = e.f(parame);
    this.g = e.g(parame);
    this.h = e.h(parame);
    this.i = e.i(parame);
    this.j = e.j(parame);
    this.k = e.k(parame);
    this.l = e.l(parame);
    this.m = e.m(parame);
    this.n = e.n(parame);
    this.o = e.o(parame);
    this.p = e.p(parame);
    this.q = e.q(parame);
    this.r = e.r(parame);
    this.s = e.s(parame);
  }

  public final Drawable a(Resources paramResources)
  {
    if (this.a != 0)
      return paramResources.getDrawable(this.a);
    return this.d;
  }

  public final boolean a()
  {
    return (this.d != null) || (this.a != 0);
  }

  public final Drawable b(Resources paramResources)
  {
    if (this.b != 0)
      return paramResources.getDrawable(this.b);
    return this.e;
  }

  public final boolean b()
  {
    return (this.e != null) || (this.b != 0);
  }

  public final Drawable c(Resources paramResources)
  {
    if (this.c != 0)
      return paramResources.getDrawable(this.c);
    return this.f;
  }

  public final boolean c()
  {
    return (this.f != null) || (this.c != 0);
  }

  public final boolean d()
  {
    return this.o != null;
  }

  public final boolean e()
  {
    return this.p != null;
  }

  public final boolean f()
  {
    return this.l > 0;
  }

  public final boolean g()
  {
    return this.g;
  }

  public final boolean h()
  {
    return this.h;
  }

  public final boolean i()
  {
    return this.i;
  }

  public final ImageScaleType j()
  {
    return this.j;
  }

  public final BitmapFactory.Options k()
  {
    return this.k;
  }

  public final int l()
  {
    return this.l;
  }

  public final boolean m()
  {
    return this.m;
  }

  public final Object n()
  {
    return this.n;
  }

  public final K o()
  {
    return this.o;
  }

  public final K p()
  {
    return this.p;
  }

  public final a q()
  {
    return this.q;
  }

  public final Handler r()
  {
    return this.r;
  }

  final boolean s()
  {
    return this.s;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.d
 * JD-Core Version:    0.6.0
 */