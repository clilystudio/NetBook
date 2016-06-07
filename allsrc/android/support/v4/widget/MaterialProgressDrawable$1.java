package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

class MaterialProgressDrawable$1 extends Animation
{
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (this.this$0.mFinishing)
    {
      MaterialProgressDrawable.access$000(this.this$0, paramFloat, this.val$ring);
      return;
    }
    float f1 = MaterialProgressDrawable.access$100(this.this$0, this.val$ring);
    float f2 = this.val$ring.getStartingEndTrim();
    float f3 = this.val$ring.getStartingStartTrim();
    float f4 = this.val$ring.getStartingRotation();
    MaterialProgressDrawable.access$200(this.this$0, paramFloat, this.val$ring);
    if (paramFloat <= 0.5F)
    {
      float f10 = paramFloat / 0.5F;
      float f11 = f3 + (0.8F - f1) * MaterialProgressDrawable.access$300().getInterpolation(f10);
      this.val$ring.setStartTrim(f11);
    }
    if (paramFloat > 0.5F)
    {
      float f7 = 0.8F - f1;
      float f8 = (paramFloat - 0.5F) / 0.5F;
      float f9 = f2 + f7 * MaterialProgressDrawable.access$300().getInterpolation(f8);
      this.val$ring.setEndTrim(f9);
    }
    float f5 = f4 + 0.25F * paramFloat;
    this.val$ring.setRotation(f5);
    float f6 = 216.0F * paramFloat + 1080.0F * (MaterialProgressDrawable.access$400(this.this$0) / 5.0F);
    this.this$0.setRotation(f6);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.MaterialProgressDrawable.1
 * JD-Core Version:    0.6.0
 */