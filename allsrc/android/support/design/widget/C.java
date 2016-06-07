package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

abstract class C extends Animation
{
  private float a;
  private float b;

  private C(A paramA)
  {
  }

  protected abstract float a();

  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    M localM = this.c.a;
    localM.a(this.a + paramFloat * this.b, localM.a);
  }

  public void reset()
  {
    super.reset();
    this.a = this.c.a.b;
    this.b = (a() - this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.C
 * JD-Core Version:    0.6.0
 */