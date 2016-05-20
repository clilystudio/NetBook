package com.clilystudio.app.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.preference.PreferenceManager;
import android.support.design.widget.am;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.event.C;
import com.clilystudio.app.netbook.event.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class bZ
{
  private static final List<String> k = Arrays.asList(new String[] { "s", "m", "l", "xl", "xxl", "3xl" });
  public int a;
  public int b;
  public int c;
  public int d;
  public int e;
  public int f;
  public int g;
  public int h;
  public int i;
  public int j;
  private int l;
  private final Activity m;
  private final Resources n;
  private List<ce> o = new ArrayList();
  private List<cc> p = new ArrayList();
  private List<ca> q = new ArrayList();
  private List<cd> r = new ArrayList();
  private List<cb> s = new ArrayList();
  private SharedPreferences t;
  private int u;
  private boolean v;
  private int w;
  private boolean x;
  private boolean y;
  private int z;

  public bZ(Activity paramActivity)
  {
    this.m = paramActivity;
    this.n = paramActivity.getResources();
    this.t = PreferenceManager.getDefaultSharedPreferences(this.m);
    this.u = k.indexOf(this.t.getString("text_spec", (String)k.get(1)));
    this.v = this.t.getBoolean("is_use_system_brightness", true);
    this.w = this.t.getInt("brightness", 50);
    this.x = this.t.getBoolean("night_mode", false);
    this.y = this.t.getBoolean("convert_t", false);
    this.z = this.t.getInt("reader_background_mode", 1);
    int i1 = am.b(this.m).widthPixels;
    this.c = this.n.getDimensionPixelSize(2131099677);
    this.d = this.n.getDimensionPixelSize(2131099680);
    this.f = (i1 - (this.c << 1));
    this.l = this.n.getDimensionPixelSize(2131099678);
    a(a.l(this.m, "reader_opt_full_screen"));
    k();
    c(this.z);
  }

  public static boolean a(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("night_mode", false);
  }

  private void c(int paramInt)
  {
    if (this.x)
    {
      this.g = this.n.getColor(2131427506);
      this.h = 2131427505;
      this.j = 2130838080;
    }
    while (true)
    {
      this.i = Color.argb(153, Color.red(this.g), Color.green(this.g), Color.blue(this.g));
      return;
      switch (paramInt)
      {
      default:
        break;
      case 1:
        this.g = this.n.getColor(2131427500);
        this.h = 2131427494;
        this.j = 2130838081;
        break;
      case 2:
        this.g = this.n.getColor(2131427498);
        this.h = 2130838077;
        this.j = 2130838078;
        break;
      case 3:
        this.g = this.n.getColor(2131427499);
        this.h = 2131427495;
        this.j = 2130838079;
      }
    }
  }

  private void k()
  {
    float f1 = 1.0F;
    float f2 = this.n.getDimensionPixelSize(2131099679);
    switch (this.u)
    {
    case 1:
    default:
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      this.a = Math.round(f1 * f2);
      this.b = Math.round(0.4F * this.a);
      return;
      f1 = 0.9F;
      continue;
      f1 = 1.15F;
      continue;
      f1 = 1.3F;
      continue;
      f1 = 1.6F;
      continue;
      f1 = 1.9F;
    }
  }

  private void l()
  {
    Iterator localIterator = this.p.iterator();
    while (localIterator.hasNext())
      ((cc)localIterator.next()).a();
  }

  private void m()
  {
    Iterator localIterator = this.q.iterator();
    while (localIterator.hasNext())
      ((ca)localIterator.next()).a();
  }

  private void n()
  {
    SharedPreferences.Editor localEditor = this.t.edit();
    localEditor.putString("text_spec", (String)k.get(this.u));
    localEditor.apply();
  }

  private void o()
  {
    SharedPreferences.Editor localEditor = this.t.edit();
    localEditor.putInt("brightness", this.w);
    localEditor.putBoolean("is_use_system_brightness", this.v);
    localEditor.apply();
  }

  private void p()
  {
    a.b(this.m, "customer_night_theme", this.x);
    a.b(this.m, "night_mode", this.x);
    if (this.x)
    {
      com.umeng.a.b.a(this.m, "start_night_theme_page");
      a.B(this.m);
    }
    while (true)
    {
      Intent localIntent = new Intent();
      localIntent.setAction("broadcastOnThemeChanged");
      this.m.sendBroadcast(localIntent);
      return;
      a.C(this.m);
    }
  }

  public final void a()
  {
    if (!this.x);
    for (boolean bool = true; ; bool = false)
    {
      this.x = bool;
      c(j());
      Iterator localIterator = this.o.iterator();
      while (localIterator.hasNext())
        ((ce)localIterator.next()).a();
    }
    p();
    i.a().c(new C(this.x));
  }

  public final void a(int paramInt)
  {
    boolean bool = this.x;
    this.x = false;
    c(paramInt);
    Iterator localIterator = this.r.iterator();
    while (localIterator.hasNext())
      ((cd)localIterator.next()).a();
    if (bool)
      p();
    SharedPreferences.Editor localEditor = this.t.edit();
    localEditor.putInt("reader_background_mode", paramInt);
    localEditor.apply();
  }

  public final void a(ca paramca)
  {
    this.q.add(paramca);
  }

  public final void a(cb paramcb)
  {
    this.s.add(paramcb);
  }

  public final void a(cc paramcc)
  {
    this.p.add(paramcc);
  }

  public final void a(cd paramcd)
  {
    this.r.add(paramcd);
  }

  public final void a(ce paramce)
  {
    this.o.add(paramce);
  }

  public final void a(boolean paramBoolean)
  {
    Point localPoint;
    if (this.t.getBoolean("key_enable_imersive_mode", false))
    {
      Display localDisplay = ((WindowManager)this.m.getSystemService("window")).getDefaultDisplay();
      localPoint = new Point();
      localDisplay.getRealSize(localPoint);
    }
    int i3;
    for (int i1 = localPoint.y; ; i1 = a.L(this.m))
    {
      int i2 = this.n.getDimensionPixelSize(2131099676);
      i3 = i1 - (this.d << 1) - (this.l << 1) - (i2 << 1);
      if (!paramBoolean)
        break;
      this.e = i3;
      return;
    }
    this.e = (i3 - am.k(this.m));
  }

  public final void b()
  {
    if (!this.y);
    for (boolean bool = true; ; bool = false)
    {
      this.y = bool;
      Iterator localIterator = this.s.iterator();
      while (localIterator.hasNext())
        ((cb)localIterator.next()).a();
    }
    SharedPreferences.Editor localEditor = this.t.edit();
    localEditor.putBoolean("convert_t", this.y);
    localEditor.apply();
  }

  public final void b(int paramInt)
  {
    this.w = paramInt;
    m();
    o();
  }

  public final void b(boolean paramBoolean)
  {
    this.v = paramBoolean;
    m();
    o();
  }

  public final int c()
  {
    return this.u;
  }

  public final void d()
  {
    if (this.u < -1 + k.size())
    {
      this.u = (1 + this.u);
      k();
      l();
      n();
    }
  }

  public final void e()
  {
    if (this.u > 0)
    {
      this.u = (-1 + this.u);
      k();
      l();
      n();
    }
  }

  public final int f()
  {
    return this.w;
  }

  public final boolean g()
  {
    return this.v;
  }

  public final boolean h()
  {
    return this.x;
  }

  public final boolean i()
  {
    return this.y;
  }

  public final int j()
  {
    int i1 = this.t.getInt("reader_background_mode", 1);
    this.z = i1;
    return i1;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bZ
 * JD-Core Version:    0.6.2
 */