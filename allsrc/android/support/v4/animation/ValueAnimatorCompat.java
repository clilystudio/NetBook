package android.support.v4.animation;

import android.view.View;

public abstract interface ValueAnimatorCompat
{
  public abstract void addListener(AnimatorListenerCompat paramAnimatorListenerCompat);

  public abstract void addUpdateListener(AnimatorUpdateListenerCompat paramAnimatorUpdateListenerCompat);

  public abstract void cancel();

  public abstract float getAnimatedFraction();

  public abstract void setDuration(long paramLong);

  public abstract void setTarget(View paramView);

  public abstract void start();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.animation.ValueAnimatorCompat
 * JD-Core Version:    0.6.0
 */