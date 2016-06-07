package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.RelativeLayout.LayoutParams;
import com.ushaqi.zhuishushenqi.R.styleable;

public class CoverLoadingView extends CoverView
{
  private final float a;
  private CoverLoadingLayer b;

  public CoverLoadingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoverLoadingView);
    this.a = localTypedArray.getDimension(0, 0.0F);
    localTypedArray.recycle();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.b = new CoverLoadingLayer(getContext());
    this.b.setCornerRadius(this.a);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    this.b.setLayoutParams(localLayoutParams);
    this.b.setId(2131492906);
    addView(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.CoverLoadingView
 * JD-Core Version:    0.6.0
 */