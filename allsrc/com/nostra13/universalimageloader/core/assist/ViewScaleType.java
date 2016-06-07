package com.nostra13.universalimageloader.core.assist;

import android.widget.ImageView;

public enum ViewScaleType
{
  static
  {
    CROP = new ViewScaleType("CROP", 1);
    ViewScaleType[] arrayOfViewScaleType = new ViewScaleType[2];
    arrayOfViewScaleType[0] = FIT_INSIDE;
    arrayOfViewScaleType[1] = CROP;
    a = arrayOfViewScaleType;
  }

  public static ViewScaleType fromImageView(ImageView paramImageView)
  {
    switch (d.a[paramImageView.getScaleType().ordinal()])
    {
    default:
      return CROP;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    return FIT_INSIDE;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.assist.ViewScaleType
 * JD-Core Version:    0.6.0
 */