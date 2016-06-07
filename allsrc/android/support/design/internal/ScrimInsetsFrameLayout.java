package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class ScrimInsetsFrameLayout extends FrameLayout
{
  private Drawable a;
  private Rect b;
  private Rect c = new Rect();

  public ScrimInsetsFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ScrimInsetsFrameLayout, paramInt, R.style.Widget_Design_ScrimInsetsFrameLayout);
    this.a = localTypedArray.getDrawable(R.styleable.ScrimInsetsFrameLayout_insetForeground);
    localTypedArray.recycle();
    setWillNotDraw(true);
    ViewCompat.setOnApplyWindowInsetsListener(this, new d(this));
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = getWidth();
    int j = getHeight();
    if ((this.b != null) && (this.a != null))
    {
      int k = paramCanvas.save();
      paramCanvas.translate(getScrollX(), getScrollY());
      this.c.set(0, 0, i, this.b.top);
      this.a.setBounds(this.c);
      this.a.draw(paramCanvas);
      this.c.set(0, j - this.b.bottom, i, j);
      this.a.setBounds(this.c);
      this.a.draw(paramCanvas);
      this.c.set(0, this.b.top, this.b.left, j - this.b.bottom);
      this.a.setBounds(this.c);
      this.a.draw(paramCanvas);
      this.c.set(i - this.b.right, this.b.top, i, j - this.b.bottom);
      this.a.setBounds(this.c);
      this.a.draw(paramCanvas);
      paramCanvas.restoreToCount(k);
    }
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.a != null)
      this.a.setCallback(this);
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.a != null)
      this.a.setCallback(null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.internal.ScrimInsetsFrameLayout
 * JD-Core Version:    0.6.0
 */