package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class ThemeLoadingView extends FrameLayout
{
  private LoadingProgressView a;
  private LoadingProgressView b;
  private ThemeLoadingView.Mode c = ThemeLoadingView.Mode.LIGHT;
  private boolean d = true;

  public ThemeLoadingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void c()
  {
    if (this.c == ThemeLoadingView.Mode.LIGHT)
    {
      setBackgroundResource(2130837696);
      return;
    }
    setBackgroundResource(2130837695);
  }

  private LoadingProgressView d()
  {
    if (this.c == ThemeLoadingView.Mode.LIGHT)
      return this.a;
    return this.b;
  }

  public final void a()
  {
    LoadingProgressView localLoadingProgressView = d();
    if (this.d)
    {
      this.d = false;
      setVisibility(0);
      localLoadingProgressView.a();
    }
  }

  public final void a(boolean paramBoolean)
  {
    ThemeLoadingView.Mode localMode;
    if (paramBoolean)
    {
      localMode = ThemeLoadingView.Mode.DARK;
      this.c = localMode;
      if (this.c != ThemeLoadingView.Mode.LIGHT)
        break label72;
      this.a.setVisibility(0);
      this.b.setVisibility(8);
      label40: c();
      if (d().b())
        break label92;
    }
    label72: label92: for (int i = 1; ; i = 0)
    {
      if (i != 0)
        a();
      return;
      localMode = ThemeLoadingView.Mode.LIGHT;
      break;
      this.b.setVisibility(0);
      this.a.setVisibility(8);
      break label40;
    }
  }

  public final void b()
  {
    LoadingProgressView localLoadingProgressView = d();
    if (!this.d)
      localLoadingProgressView.a(new aC(this));
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    int i = getResources().getDimensionPixelSize(2131099927);
    setPadding(i, i, i, i);
    this.a = ((LoadingProgressView)findViewById(2131493168));
    this.b = ((LoadingProgressView)findViewById(2131493169));
    c();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.ThemeLoadingView
 * JD-Core Version:    0.6.2
 */