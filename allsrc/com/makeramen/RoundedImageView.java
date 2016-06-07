package com.makeramen;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class RoundedImageView extends ImageView
{
  private static final ImageView.ScaleType[] a;
  private float b = 0.0F;
  private float c = 0.0F;
  private ColorStateList d = ColorStateList.valueOf(-16777216);
  private boolean e = false;
  private boolean f = false;
  private int g;
  private Drawable h;
  private Drawable i;
  private ImageView.ScaleType j;

  static
  {
    if (!RoundedImageView.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      k = bool;
      ImageView.ScaleType[] arrayOfScaleType = new ImageView.ScaleType[8];
      arrayOfScaleType[0] = ImageView.ScaleType.MATRIX;
      arrayOfScaleType[1] = ImageView.ScaleType.FIT_XY;
      arrayOfScaleType[2] = ImageView.ScaleType.FIT_START;
      arrayOfScaleType[3] = ImageView.ScaleType.FIT_CENTER;
      arrayOfScaleType[4] = ImageView.ScaleType.FIT_END;
      arrayOfScaleType[5] = ImageView.ScaleType.CENTER;
      arrayOfScaleType[6] = ImageView.ScaleType.CENTER_CROP;
      arrayOfScaleType[7] = ImageView.ScaleType.CENTER_INSIDE;
      a = arrayOfScaleType;
      return;
    }
  }

  public RoundedImageView(Context paramContext)
  {
    super(paramContext);
  }

  public RoundedImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public RoundedImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RoundedImageView, paramInt, 0);
    int m = localTypedArray.getInt(0, -1);
    if (m >= 0)
      setScaleType(a[m]);
    while (true)
    {
      this.b = localTypedArray.getDimensionPixelSize(1, -1);
      this.c = localTypedArray.getDimensionPixelSize(2, -1);
      if (this.b < 0.0F)
        this.b = 0.0F;
      if (this.c < 0.0F)
        this.c = 0.0F;
      this.d = localTypedArray.getColorStateList(3);
      if (this.d == null)
        this.d = ColorStateList.valueOf(-16777216);
      this.f = localTypedArray.getBoolean(4, false);
      this.e = localTypedArray.getBoolean(5, false);
      b();
      a(true);
      localTypedArray.recycle();
      return;
      setScaleType(ImageView.ScaleType.FIT_CENTER);
    }
  }

  private Drawable a()
  {
    Resources localResources = getResources();
    if (localResources == null)
      return null;
    int m = this.g;
    Object localObject = null;
    if (m != 0);
    try
    {
      Drawable localDrawable = localResources.getDrawable(this.g);
      localObject = localDrawable;
      return a.a(localObject);
    }
    catch (Exception localException)
    {
      while (true)
      {
        Log.w("RoundedImageView", "Unable to find resource: " + this.g, localException);
        this.g = 0;
        localObject = null;
      }
    }
  }

  private void a(Drawable paramDrawable)
  {
    if (paramDrawable == null);
    while (true)
    {
      return;
      if ((paramDrawable instanceof a))
      {
        ((a)paramDrawable).a(this.j).a(this.b).b(this.c).a(this.d).a(this.e);
        return;
      }
      if (!(paramDrawable instanceof LayerDrawable))
        continue;
      LayerDrawable localLayerDrawable = (LayerDrawable)paramDrawable;
      int m = 0;
      int n = localLayerDrawable.getNumberOfLayers();
      while (m < n)
      {
        a(localLayerDrawable.getDrawable(m));
        m++;
      }
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.f)
    {
      if (paramBoolean)
        this.i = a.a(this.i);
      a(this.i);
    }
  }

  private void b()
  {
    a(this.h);
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    invalidate();
  }

  public ImageView.ScaleType getScaleType()
  {
    return this.j;
  }

  public void setBackground(Drawable paramDrawable)
  {
    setBackgroundDrawable(paramDrawable);
  }

  @Deprecated
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.i = paramDrawable;
    a(true);
    super.setBackgroundDrawable(this.i);
  }

  public void setBorderColor(int paramInt)
  {
    setBorderColor(ColorStateList.valueOf(paramInt));
  }

  public void setBorderColor(ColorStateList paramColorStateList)
  {
    if (this.d.equals(paramColorStateList))
      return;
    if (paramColorStateList != null);
    while (true)
    {
      this.d = paramColorStateList;
      b();
      a(false);
      if (this.c <= 0.0F)
        break;
      invalidate();
      return;
      paramColorStateList = ColorStateList.valueOf(-16777216);
    }
  }

  public void setBorderWidth(float paramFloat)
  {
    if (this.c == paramFloat)
      return;
    this.c = paramFloat;
    b();
    a(false);
    invalidate();
  }

  public void setBorderWidth(int paramInt)
  {
    setBorderWidth(getResources().getDimension(paramInt));
  }

  public void setCornerRadius(float paramFloat)
  {
    if (this.b == paramFloat)
      return;
    this.b = paramFloat;
    b();
    a(false);
  }

  public void setCornerRadius(int paramInt)
  {
    setCornerRadius(getResources().getDimension(paramInt));
  }

  public void setImageBitmap(Bitmap paramBitmap)
  {
    this.g = 0;
    this.h = a.a(paramBitmap);
    b();
    super.setImageDrawable(this.h);
  }

  public void setImageDrawable(Drawable paramDrawable)
  {
    this.g = 0;
    this.h = a.a(paramDrawable);
    b();
    super.setImageDrawable(this.h);
  }

  public void setImageResource(int paramInt)
  {
    if (this.g != paramInt)
    {
      this.g = paramInt;
      this.h = a();
      b();
      super.setImageDrawable(this.h);
    }
  }

  public void setImageURI(Uri paramUri)
  {
    super.setImageURI(paramUri);
    setImageDrawable(getDrawable());
  }

  public void setMutateBackground(boolean paramBoolean)
  {
    if (this.f == paramBoolean)
      return;
    this.f = paramBoolean;
    a(true);
    invalidate();
  }

  public void setOval(boolean paramBoolean)
  {
    this.e = paramBoolean;
    b();
    a(false);
    invalidate();
  }

  public void setScaleType(ImageView.ScaleType paramScaleType)
  {
    if ((!k) && (paramScaleType == null))
      throw new AssertionError();
    if (this.j != paramScaleType)
    {
      this.j = paramScaleType;
      switch (c.a[paramScaleType.ordinal()])
      {
      default:
        super.setScaleType(paramScaleType);
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
    }
    while (true)
    {
      b();
      a(false);
      invalidate();
      return;
      super.setScaleType(ImageView.ScaleType.FIT_XY);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.makeramen.RoundedImageView
 * JD-Core Version:    0.6.0
 */