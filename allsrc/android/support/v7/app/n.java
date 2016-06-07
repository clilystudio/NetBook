package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.b.b;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.Window;
import android.view.Window.Callback;

abstract class n extends m
{
  final Context a;
  final Window b;
  final Window.Callback c;
  final l d;
  boolean e;
  boolean f;
  boolean g;
  boolean h;
  boolean i;
  private Window.Callback j;
  private a k;
  private MenuInflater l;
  private CharSequence m;
  private boolean n;

  n(Context paramContext, Window paramWindow, l paraml)
  {
    this.a = paramContext;
    this.b = paramWindow;
    this.d = paraml;
    this.c = this.b.getCallback();
    if ((this.c instanceof o))
      throw new IllegalStateException("AppCompat has already installed itself into the Window");
    this.j = a(this.c);
    this.b.setCallback(this.j);
  }

  public final a a()
  {
    if (this.e)
      if (this.k == null)
        this.k = i();
    while (true)
    {
      return this.k;
      if (!(this.k instanceof android.support.v7.internal.a.e))
        continue;
      this.k = null;
    }
  }

  abstract android.support.v7.b.a a(b paramb);

  Window.Callback a(Window.Callback paramCallback)
  {
    return new o(this, paramCallback);
  }

  public void a(Bundle paramBundle)
  {
    TypedArray localTypedArray = this.a.obtainStyledAttributes(R.styleable.Theme);
    if (!localTypedArray.hasValue(R.styleable.Theme_windowActionBar))
    {
      localTypedArray.recycle();
      throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }
    if (localTypedArray.getBoolean(R.styleable.Theme_windowActionBar, false))
      this.e = true;
    if (localTypedArray.getBoolean(R.styleable.Theme_windowActionBarOverlay, false))
      this.f = true;
    if (localTypedArray.getBoolean(R.styleable.Theme_windowActionModeOverlay, false))
      this.g = true;
    this.h = localTypedArray.getBoolean(R.styleable.Theme_android_windowIsFloating, false);
    this.i = localTypedArray.getBoolean(R.styleable.Theme_windowNoTitle, false);
    localTypedArray.recycle();
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.m = paramCharSequence;
    b(paramCharSequence);
  }

  abstract boolean a(int paramInt, KeyEvent paramKeyEvent);

  abstract boolean a(KeyEvent paramKeyEvent);

  public final MenuInflater b()
  {
    if (this.l == null)
      this.l = new android.support.v7.internal.view.e(k());
    return this.l;
  }

  abstract void b(CharSequence paramCharSequence);

  abstract boolean c(int paramInt);

  abstract boolean d(int paramInt);

  public final void g()
  {
    this.n = true;
  }

  abstract a i();

  final a j()
  {
    return this.k;
  }

  final Context k()
  {
    a locala = a();
    Context localContext = null;
    if (locala != null)
      localContext = locala.c();
    if (localContext == null)
      localContext = this.a;
    return localContext;
  }

  final boolean l()
  {
    return this.n;
  }

  final CharSequence m()
  {
    if ((this.c instanceof Activity))
      return ((Activity)this.c).getTitle();
    return this.m;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.n
 * JD-Core Version:    0.6.0
 */