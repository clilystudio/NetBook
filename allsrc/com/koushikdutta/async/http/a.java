package com.koushikdutta.async.http;

import android.content.Context;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.s;
import android.support.v7.internal.view.menu.v;
import android.support.v7.widget.m;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.koushikdutta.async.http.filter.ChunkedInputFilter;
import com.koushikdutta.async.http.filter.c;
import com.koushikdutta.async.http.filter.d;
import com.koushikdutta.async.http.filter.j;
import com.koushikdutta.async.y;

public class a
  implements h, v
{
  private Context a;
  private MenuBuilder b;
  private View c;
  private s d;
  private m e;

  public a(Context paramContext, View paramView)
  {
    this(paramContext, paramView, 0);
  }

  public a(Context paramContext, View paramView, int paramInt)
  {
    this(paramContext, paramView, 0, R.attr.popupMenuStyle, 0);
  }

  public a(Context paramContext, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramContext;
    this.b = new MenuBuilder(paramContext);
    this.b.a(this);
    this.c = paramView;
    this.d = new s(paramContext, this.b, paramView, false, paramInt2, 0);
    this.d.a(paramInt1);
    this.d.a(this);
  }

  public static y a(y paramy, com.koushikdutta.async.http.b.e parame, boolean paramBoolean)
  {
    j localj;
    try
    {
      long l2 = Long.parseLong(parame.d("Content-Length"));
      l1 = l2;
      if (-1L != l1)
        if (l1 < 0L)
        {
          b localb3 = b.a(paramy.i(), new BodyDecoderException("not using chunked encoding, and no content-length found."));
          localb3.a(paramy);
          paramy = localb3;
          return paramy;
        }
    }
    catch (Exception localException)
    {
      do
      {
        long l1;
        while (true)
          l1 = -1L;
        if (l1 == 0L)
        {
          b localb2 = b.a(paramy.i(), null);
          localb2.a(paramy);
          return localb2;
        }
        c localc = new c(l1);
        localc.a(paramy);
        paramy = localc;
        while ("gzip".equals(parame.d("Content-Encoding")))
        {
          d locald = new d();
          locald.a(paramy);
          return locald;
          if ("chunked".equalsIgnoreCase(parame.d("Transfer-Encoding")))
          {
            ChunkedInputFilter localChunkedInputFilter = new ChunkedInputFilter();
            localChunkedInputFilter.a(paramy);
            paramy = localChunkedInputFilter;
            continue;
          }
          if ("close".equalsIgnoreCase(parame.d("Connection")))
            continue;
          b localb1 = b.a(paramy.i(), null);
          localb1.a(paramy);
          return localb1;
        }
      }
      while (!"deflate".equals(parame.d("Content-Encoding")));
      localj = new j();
      localj.a(paramy);
    }
    return localj;
  }

  public static boolean a(com.koushikdutta.async.http.b.e parame)
  {
    String str = parame.d("Connection");
    if (str != null)
      return "keep-alive".equalsIgnoreCase(str);
    return parame.b() > 0;
  }

  public Menu a()
  {
    return this.b;
  }

  public void a(MenuBuilder paramMenuBuilder)
  {
  }

  public void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
  }

  public void a(m paramm)
  {
    this.e = paramm;
  }

  public boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    if (this.e != null)
      return this.e.a(paramMenuItem);
    return false;
  }

  public boolean a_(MenuBuilder paramMenuBuilder)
  {
    int i = 1;
    if (paramMenuBuilder == null)
      i = 0;
    do
      return i;
    while (!paramMenuBuilder.hasVisibleItems());
    new s(this.a, paramMenuBuilder, this.c).d();
    return i;
  }

  public MenuInflater b()
  {
    return new android.support.v7.internal.view.e(this.a);
  }

  public void c()
  {
    this.d.d();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.a
 * JD-Core Version:    0.6.0
 */