package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.content.res.TypedArray;
import com.handmark.pulltorefresh.library.internal.FlipLoadingLayout;
import com.handmark.pulltorefresh.library.internal.LoadingLayout;
import com.handmark.pulltorefresh.library.internal.RotateLoadingLayout;

public enum PullToRefreshBase$AnimationStyle
{
  static
  {
    FLIP = new AnimationStyle("FLIP", 1);
    AnimationStyle[] arrayOfAnimationStyle = new AnimationStyle[2];
    arrayOfAnimationStyle[0] = ROTATE;
    arrayOfAnimationStyle[1] = FLIP;
    a = arrayOfAnimationStyle;
  }

  static AnimationStyle getDefault()
  {
    return ROTATE;
  }

  static AnimationStyle mapIntToValue(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return ROTATE;
    case 1:
    }
    return FLIP;
  }

  final LoadingLayout createLoadingLayout(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.Orientation paramOrientation, TypedArray paramTypedArray)
  {
    switch (i.d[ordinal()])
    {
    default:
      return new RotateLoadingLayout(paramContext, paramMode, paramOrientation, paramTypedArray);
    case 2:
    }
    return new FlipLoadingLayout(paramContext, paramMode, paramOrientation, paramTypedArray);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshBase.AnimationStyle
 * JD-Core Version:    0.6.0
 */