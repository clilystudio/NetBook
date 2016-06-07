package android.support.design.widget;

import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.support.design.R.anim;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.xiaomi.mistatistic.sdk.a.r;

public final class Snackbar
{
  private final ViewGroup a;
  private final Snackbar.SnackbarLayout b;
  private final K c;

  static
  {
    new Handler(Looper.getMainLooper(), new O());
  }

  private void d()
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      ViewCompat.setTranslationY(this.b, this.b.getHeight());
      ViewCompat.animate(this.b).translationY(0.0F).setInterpolator(a.b).setDuration(250L).setListener(new R(this)).start();
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(this.b.getContext(), R.anim.snackbar_in);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(250L);
    localAnimation.setAnimationListener(new S(this));
    this.b.startAnimation(localAnimation);
  }

  private void e()
  {
    this.a.removeView(this.b);
    X.a().b(this.c);
  }

  public final void a()
  {
    X.a().a(this.c);
  }

  final void b()
  {
    if (this.b.getParent() == null)
    {
      ViewGroup.LayoutParams localLayoutParams = this.b.getLayoutParams();
      if ((localLayoutParams instanceof t))
      {
        V localV = new V(this);
        localV.a(0.1F);
        localV.b(0.6F);
        localV.a(0);
        localV.a(new P(this));
        ((t)localLayoutParams).a(localV);
      }
      this.a.addView(this.b);
    }
    if (ViewCompat.isLaidOut(this.b))
    {
      d();
      return;
    }
    this.b.a(new Q(this));
  }

  final void c()
  {
    int i;
    if (this.b.getVisibility() == 0)
    {
      ViewGroup.LayoutParams localLayoutParams = this.b.getLayoutParams();
      if (!(localLayoutParams instanceof t))
        break label69;
      r localr = ((t)localLayoutParams).a;
      if (!(localr instanceof ad))
        break label69;
      if (((ad)localr).a() == 0)
        break label64;
      i = 1;
    }
    while (i != 0)
    {
      e();
      return;
      label64: i = 0;
      continue;
      label69: i = 0;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      ViewCompat.animate(this.b).translationY(this.b.getHeight()).setInterpolator(a.b).setDuration(250L).setListener(new T(this)).start();
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(this.b.getContext(), R.anim.snackbar_out);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(250L);
    localAnimation.setAnimationListener(new U(this));
    this.b.startAnimation(localAnimation);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.Snackbar
 * JD-Core Version:    0.6.0
 */