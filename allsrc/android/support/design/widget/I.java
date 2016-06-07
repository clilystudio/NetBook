package android.support.design.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

@TargetApi(21)
final class I extends F
{
  private Drawable g;
  private RippleDrawable h;
  private Drawable i;
  private Interpolator j;

  I(View paramView, N paramN)
  {
    super(paramView, paramN);
    if (!paramView.isInEditMode())
      this.j = AnimationUtils.loadInterpolator(this.e.getContext(), 17563661);
  }

  private Animator a(Animator paramAnimator)
  {
    paramAnimator.setInterpolator(this.j);
    return paramAnimator;
  }

  final void a()
  {
  }

  public final void a(float paramFloat)
  {
    ViewCompat.setElevation(this.e, paramFloat);
  }

  final void a(int paramInt)
  {
    this.h.setColor(ColorStateList.valueOf(paramInt));
  }

  final void a(ColorStateList paramColorStateList)
  {
    DrawableCompat.setTintList(this.g, paramColorStateList);
    if (this.i != null)
      DrawableCompat.setTintList(this.i, paramColorStateList);
  }

  final void a(PorterDuff.Mode paramMode)
  {
    DrawableCompat.setTintMode(this.g, paramMode);
  }

  final void a(Drawable paramDrawable, ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    this.g = DrawableCompat.wrap(paramDrawable);
    DrawableCompat.setTintList(this.g, paramColorStateList);
    if (paramMode != null)
      DrawableCompat.setTintMode(this.g, paramMode);
    Drawable[] arrayOfDrawable;
    if (paramInt2 > 0)
    {
      this.i = a(paramInt2, paramColorStateList);
      arrayOfDrawable = new Drawable[2];
      arrayOfDrawable[0] = this.i;
      arrayOfDrawable[1] = this.g;
    }
    for (Object localObject = new LayerDrawable(arrayOfDrawable); ; localObject = this.g)
    {
      this.h = new RippleDrawable(ColorStateList.valueOf(paramInt1), (Drawable)localObject, null);
      this.f.a(this.h);
      this.f.a(0, 0, 0, 0);
      return;
      this.i = null;
    }
  }

  final void a(int[] paramArrayOfInt)
  {
  }

  final void b(float paramFloat)
  {
    StateListAnimator localStateListAnimator = new StateListAnimator();
    localStateListAnimator.addState(b, a(ObjectAnimator.ofFloat(this.e, "translationZ", new float[] { paramFloat })));
    localStateListAnimator.addState(c, a(ObjectAnimator.ofFloat(this.e, "translationZ", new float[] { paramFloat })));
    localStateListAnimator.addState(d, a(ObjectAnimator.ofFloat(this.e, "translationZ", new float[] { 0.0F })));
    this.e.setStateListAnimator(localStateListAnimator);
  }

  final i d()
  {
    return new j();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.I
 * JD-Core Version:    0.6.0
 */