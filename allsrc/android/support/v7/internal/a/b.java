package android.support.v7.internal.a;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.a;
import android.support.v7.internal.widget.D;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public final class b extends a
{
  private boolean a;
  private boolean b;
  private final Runnable c;

  private void a(int paramInt1, int paramInt2)
  {
    int i = null.n();
    null.c(paramInt1 & paramInt2 | i & (paramInt2 ^ 0xFFFFFFFF));
  }

  private Menu f()
  {
    if (!this.a)
    {
      null.a(new c(this, 0), new d(this, 0));
      this.a = true;
    }
    return null.q();
  }

  public final View a()
  {
    return null.p();
  }

  public final void a(int paramInt)
  {
    a(LayoutInflater.from(null.b()).inflate(2130903226, null.a(), false));
  }

  public final void a(Configuration paramConfiguration)
  {
    super.a(paramConfiguration);
  }

  public final void a(Drawable paramDrawable)
  {
    null.b(paramDrawable);
  }

  public final void a(View paramView)
  {
    paramView.setLayoutParams(new android.support.v7.app.b(-2, -2));
    null.a(paramView);
  }

  public final void a(CharSequence paramCharSequence)
  {
    null.b(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    a(0, 2);
  }

  public final boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Menu localMenu = f();
    boolean bool = false;
    if (localMenu != null)
      bool = localMenu.performShortcut(paramInt, paramKeyEvent, 0);
    return bool;
  }

  public final int b()
  {
    return null.n();
  }

  public final void b(CharSequence paramCharSequence)
  {
    null.a(paramCharSequence);
  }

  public final void b(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 4; ; i = 0)
    {
      a(i, 4);
      return;
    }
  }

  public final Context c()
  {
    return null.b();
  }

  public final void c(boolean paramBoolean)
  {
    a(0, 8);
  }

  public final void d(boolean paramBoolean)
  {
    a(16, 16);
  }

  public final boolean d()
  {
    null.a().removeCallbacks(this.c);
    ViewCompat.postOnAnimation(null.a(), this.c);
    return true;
  }

  public final void e(boolean paramBoolean)
  {
  }

  public final boolean e()
  {
    if (null.c())
    {
      null.d();
      return true;
    }
    return false;
  }

  public final void f(boolean paramBoolean)
  {
  }

  public final void g(boolean paramBoolean)
  {
    if (paramBoolean == this.b);
    while (true)
    {
      return;
      this.b = paramBoolean;
      int i = null.size();
      for (int j = 0; j < i; j++)
        null.get(j);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.a.b
 * JD-Core Version:    0.6.0
 */