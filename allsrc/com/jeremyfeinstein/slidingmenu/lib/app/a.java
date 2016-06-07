package com.jeremyfeinstein.slidingmenu.lib.app;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import com.jeremyfeinstein.slidingmenu.lib.R.layout;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

public final class a
{
  private Activity a;
  private SlidingMenu b;
  private View c;
  private View d;
  private boolean e = false;
  private boolean f = true;

  public a(Activity paramActivity)
  {
    this.a = paramActivity;
  }

  public final View a(int paramInt)
  {
    if (this.b != null)
    {
      View localView = this.b.findViewById(paramInt);
      if (localView != null)
        return localView;
    }
    return null;
  }

  public final void a()
  {
    this.b = ((SlidingMenu)LayoutInflater.from(this.a).inflate(R.layout.slidingmenumain, null));
  }

  public final void a(Bundle paramBundle)
  {
    if ((this.d == null) || (this.c == null))
      throw new IllegalStateException("Both setBehindContentView must be called in onCreate in addition to setContentView.");
    SlidingMenu localSlidingMenu = this.b;
    Activity localActivity = this.a;
    int i;
    boolean bool2;
    boolean bool1;
    if (this.f)
    {
      i = 0;
      localSlidingMenu.a(localActivity, i);
      if (paramBundle == null)
        break label101;
      bool2 = paramBundle.getBoolean("SlidingActivityHelper.open");
      bool1 = paramBundle.getBoolean("SlidingActivityHelper.secondary");
    }
    while (true)
    {
      new Handler().post(new b(this, bool2, bool1));
      return;
      i = 1;
      break;
      label101: bool1 = false;
      bool2 = false;
    }
  }

  public final void a(View paramView)
  {
    this.c = paramView;
  }

  public final SlidingMenu b()
  {
    return this.b;
  }

  public final void b(Bundle paramBundle)
  {
    paramBundle.putBoolean("SlidingActivityHelper.open", this.b.f());
    paramBundle.putBoolean("SlidingActivityHelper.secondary", this.b.g());
  }

  public final void b(View paramView)
  {
    this.d = paramView;
    this.b.setMenu(this.d);
  }

  public final boolean b(int paramInt)
  {
    if ((paramInt == 4) && (this.b.f()))
    {
      this.b.d();
      return true;
    }
    return false;
  }

  public final void c()
  {
    this.b.e();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.jeremyfeinstein.slidingmenu.lib.app.a
 * JD-Core Version:    0.6.0
 */