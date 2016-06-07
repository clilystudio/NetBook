package android.support.v4.animation;

class DonutAnimatorCompatProvider
  implements AnimatorProvider
{
  public ValueAnimatorCompat emptyValueAnimator()
  {
    return new DonutAnimatorCompatProvider.DonutFloatValueAnimator();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.animation.DonutAnimatorCompatProvider
 * JD-Core Version:    0.6.0
 */