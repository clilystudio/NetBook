package uk.co.senab.photoview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.design.widget.K;
import android.util.AttributeSet;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.View.OnLongClickListener;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class PhotoView extends ImageView
  implements b
{
  private final d a;
  private ImageView.ScaleType b;

  public PhotoView(Context paramContext)
  {
    this(paramContext, null);
  }

  public PhotoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public PhotoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    super.setScaleType(ImageView.ScaleType.MATRIX);
    this.a = new d(this);
    if (this.b != null)
    {
      setScaleType(this.b);
      this.b = null;
    }
  }

  public ImageView.ScaleType getScaleType()
  {
    return this.a.h();
  }

  protected void onDetachedFromWindow()
  {
    this.a.a();
    super.onDetachedFromWindow();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    getViewTreeObserver().addOnPreDrawListener(new c(this));
  }

  public void setAllowParentInterceptOnEdge(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }

  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    if (this.a != null)
      this.a.k();
  }

  public void setImageResource(int paramInt)
  {
    super.setImageResource(paramInt);
    if (this.a != null)
      this.a.k();
  }

  public void setImageURI(Uri paramUri)
  {
    super.setImageURI(paramUri);
    if (this.a != null)
      this.a.k();
  }

  @Deprecated
  public void setMaxScale(float paramFloat)
  {
    setMaximumScale(paramFloat);
  }

  public void setMaximumScale(float paramFloat)
  {
    this.a.f(paramFloat);
  }

  public void setMediumScale(float paramFloat)
  {
    this.a.e(paramFloat);
  }

  @Deprecated
  public void setMidScale(float paramFloat)
  {
    setMediumScale(paramFloat);
  }

  @Deprecated
  public void setMinScale(float paramFloat)
  {
    setMinimumScale(paramFloat);
  }

  public void setMinimumScale(float paramFloat)
  {
    this.a.c(paramFloat);
  }

  public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
  {
    this.a.a(paramOnDoubleTapListener);
  }

  public void setOnLongClickListener(View.OnLongClickListener paramOnLongClickListener)
  {
    this.a.a(paramOnLongClickListener);
  }

  public void setOnMatrixChangeListener$223948ad(K paramK)
  {
    this.a.a(paramK);
  }

  public void setOnPhotoTapListener$15001ef(K paramK)
  {
    this.a.b(paramK);
  }

  public void setOnViewTapListener$2686f8e8(K paramK)
  {
    this.a.c(paramK);
  }

  public void setPhotoViewRotation(float paramFloat)
  {
    this.a.a(paramFloat);
  }

  public void setRotationBy(float paramFloat)
  {
    this.a.b(paramFloat);
  }

  public void setRotationTo(float paramFloat)
  {
    this.a.a(paramFloat);
  }

  public void setScale(float paramFloat)
  {
    this.a.a(paramFloat, false);
  }

  public void setScale(float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean)
  {
    this.a.a(paramFloat1, paramFloat2, paramFloat3, paramBoolean);
  }

  public void setScale(float paramFloat, boolean paramBoolean)
  {
    this.a.a(paramFloat, paramBoolean);
  }

  public void setScaleType(ImageView.ScaleType paramScaleType)
  {
    if (this.a != null)
    {
      this.a.a(paramScaleType);
      return;
    }
    this.b = paramScaleType;
  }

  public void setZoomTransitionDuration(int paramInt)
  {
    d locald = this.a;
    if (paramInt < 0)
      paramInt = 200;
    locald.b = paramInt;
  }

  public void setZoomable(boolean paramBoolean)
  {
    this.a.b(paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.PhotoView
 * JD-Core Version:    0.6.0
 */