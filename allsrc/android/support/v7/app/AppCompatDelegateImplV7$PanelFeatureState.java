package android.support.v7.app;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.f;
import android.view.View;
import android.view.ViewGroup;

final class AppCompatDelegateImplV7$PanelFeatureState
{
  int a;
  int b;
  int c;
  int d;
  ViewGroup e;
  View f;
  View g;
  MenuBuilder h;
  f i;
  Context j;
  boolean k;
  boolean l;
  boolean m;
  public boolean n;
  boolean o;
  boolean p;
  Bundle q;

  AppCompatDelegateImplV7$PanelFeatureState(int paramInt)
  {
    this.a = paramInt;
    this.o = false;
  }

  final void a(MenuBuilder paramMenuBuilder)
  {
    if (paramMenuBuilder == this.h);
    do
    {
      return;
      if (this.h != null)
        this.h.b(this.i);
      this.h = paramMenuBuilder;
    }
    while ((paramMenuBuilder == null) || (this.i == null));
    paramMenuBuilder.a(this.i);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV7.PanelFeatureState
 * JD-Core Version:    0.6.0
 */