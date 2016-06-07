package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.support.design.R.anim;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

class A extends H
{
  M a;
  private Drawable g;
  private Drawable h;
  private Drawable i;
  private float j;
  private float k;
  private int l;
  private aa m;
  private boolean n;

  A(View paramView, N paramN)
  {
    super(paramView, paramN);
    this.l = paramView.getResources().getInteger(17694720);
    this.m = new aa();
    this.m.a(paramView);
    this.m.a(b, a(new D(this, 0)));
    this.m.a(c, a(new D(this, 0)));
    this.m.a(d, a(new E(this, 0)));
  }

  private Animation a(Animation paramAnimation)
  {
    paramAnimation.setInterpolator(a.b);
    paramAnimation.setDuration(this.l);
    return paramAnimation;
  }

  private static ColorStateList b(int paramInt)
  {
    int[][] arrayOfInt = new int[3][];
    int[] arrayOfInt1 = new int[3];
    arrayOfInt[0] = c;
    arrayOfInt1[0] = paramInt;
    arrayOfInt[1] = b;
    arrayOfInt1[1] = paramInt;
    arrayOfInt[2] = new int[0];
    arrayOfInt1[2] = 0;
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }

  private void e()
  {
    Rect localRect = new Rect();
    this.a.getPadding(localRect);
    this.f.a(localRect.left, localRect.top, localRect.right, localRect.bottom);
  }

  void a()
  {
    this.m.a();
  }

  void a(float paramFloat)
  {
    if ((this.j != paramFloat) && (this.a != null))
    {
      this.a.a(paramFloat, paramFloat + this.k);
      this.j = paramFloat;
      e();
    }
  }

  void a(int paramInt)
  {
    DrawableCompat.setTintList(this.h, b(paramInt));
  }

  void a(ColorStateList paramColorStateList)
  {
    DrawableCompat.setTintList(this.g, paramColorStateList);
    if (this.i != null)
      DrawableCompat.setTintList(this.i, paramColorStateList);
  }

  void a(PorterDuff.Mode paramMode)
  {
    DrawableCompat.setTintMode(this.g, paramMode);
  }

  void a(Drawable paramDrawable, ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    this.g = DrawableCompat.wrap(paramDrawable);
    DrawableCompat.setTintList(this.g, paramColorStateList);
    if (paramMode != null)
      DrawableCompat.setTintMode(this.g, paramMode);
    GradientDrawable localGradientDrawable = new GradientDrawable();
    localGradientDrawable.setShape(1);
    localGradientDrawable.setColor(-1);
    localGradientDrawable.setCornerRadius(this.f.a());
    this.h = DrawableCompat.wrap(localGradientDrawable);
    DrawableCompat.setTintList(this.h, b(paramInt1));
    DrawableCompat.setTintMode(this.h, PorterDuff.Mode.MULTIPLY);
    Drawable[] arrayOfDrawable2;
    if (paramInt2 > 0)
    {
      this.i = a(paramInt2, paramColorStateList);
      arrayOfDrawable2 = new Drawable[3];
      arrayOfDrawable2[0] = this.i;
      arrayOfDrawable2[1] = this.g;
      arrayOfDrawable2[2] = this.h;
    }
    Drawable[] arrayOfDrawable1;
    for (Object localObject = arrayOfDrawable2; ; localObject = arrayOfDrawable1)
    {
      this.a = new M(this.e.getResources(), new LayerDrawable(localObject), this.f.a(), this.j, this.j + this.k);
      this.a.a(false);
      this.f.a(this.a);
      e();
      return;
      this.i = null;
      arrayOfDrawable1 = new Drawable[2];
      arrayOfDrawable1[0] = this.g;
      arrayOfDrawable1[1] = this.h;
    }
  }

  void a(int[] paramArrayOfInt)
  {
    this.m.a(paramArrayOfInt);
  }

  void b()
  {
    if (this.n)
      return;
    Animation localAnimation = AnimationUtils.loadAnimation(this.e.getContext(), R.anim.fab_out);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(200L);
    localAnimation.setAnimationListener(new B(this));
    this.e.startAnimation(localAnimation);
  }

  void b(float paramFloat)
  {
    if ((this.k != paramFloat) && (this.a != null))
    {
      this.k = paramFloat;
      M localM = this.a;
      float f = paramFloat + this.j;
      localM.a(localM.b, f);
      e();
    }
  }

  void c()
  {
    Animation localAnimation = AnimationUtils.loadAnimation(this.e.getContext(), R.anim.fab_in);
    localAnimation.setDuration(200L);
    localAnimation.setInterpolator(a.b);
    this.e.startAnimation(localAnimation);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.A
 * JD-Core Version:    0.6.0
 */