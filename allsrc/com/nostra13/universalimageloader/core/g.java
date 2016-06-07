package com.nostra13.universalimageloader.core;

import android.content.Context;
import android.content.res.Resources;
import android.support.design.widget.K;
import android.util.DisplayMetrics;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.assist.c;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import java.util.concurrent.Executor;

public final class g
{
  final Resources a;
  final int b;
  final int c;
  final K d;
  final Executor e;
  final Executor f;
  final boolean g;
  final boolean h;
  final int i;
  final int j;
  final QueueProcessingType k;
  final com.nostra13.universalimageloader.a.b.a l;
  final com.nostra13.universalimageloader.a.a.a m;
  final ImageDownloader n;
  final com.nostra13.universalimageloader.core.a.d o;
  final d p;
  final ImageDownloader q;
  final ImageDownloader r;
  private int s;
  private int t;

  private g(i parami)
  {
    this.a = i.a(parami).getResources();
    this.s = i.b(parami);
    this.t = i.c(parami);
    this.b = i.d(parami);
    this.c = i.e(parami);
    this.d = i.f(parami);
    this.e = i.g(parami);
    this.f = i.h(parami);
    this.i = i.i(parami);
    this.j = i.j(parami);
    this.k = i.k(parami);
    this.m = i.l(parami);
    this.l = i.m(parami);
    this.p = i.n(parami);
    this.n = i.o(parami);
    this.o = i.p(parami);
    this.g = i.q(parami);
    this.h = i.r(parami);
    this.q = new j(this.n);
    this.r = new k(this.n);
    com.nostra13.universalimageloader.b.d.a(i.s(parami));
  }

  final c a()
  {
    DisplayMetrics localDisplayMetrics = this.a.getDisplayMetrics();
    int i1 = this.s;
    if (i1 <= 0)
      i1 = localDisplayMetrics.widthPixels;
    int i2 = this.t;
    if (i2 <= 0)
      i2 = localDisplayMetrics.heightPixels;
    return new c(i1, i2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.g
 * JD-Core Version:    0.6.0
 */