package android.support.v7.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

final class aU extends Animation
{
  aU(SwitchCompat paramSwitchCompat, float paramFloat1, float paramFloat2)
  {
  }

  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    SwitchCompat.a(this.c, this.a + paramFloat * this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aU
 * JD-Core Version:    0.6.0
 */