package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.ushaqi.zhuishushenqi.R.styleable;
import com.ushaqi.zhuishushenqi.ui.CornerImageView;

public class CoverView extends RelativeLayout
{
  private CornerImageView a;
  private final int b;

  public CoverView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoverView);
    this.b = localTypedArray.getResourceId(0, 0);
    localTypedArray.getResourceId(1, 2130838144);
    localTypedArray.recycle();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = new CornerImageView(getContext());
    this.a.setScaleType(ImageView.ScaleType.FIT_XY);
    FrameLayout localFrameLayout = new FrameLayout(getContext());
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    localFrameLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    this.a.setLayoutParams(localLayoutParams);
    if (this.b != 0)
      this.a.setImageResource(this.b);
    addView(this.a);
    addView(localFrameLayout);
  }

  public void setImageResource(int paramInt)
  {
    this.a.setImageResource(paramInt);
  }

  public void setImageUrl(String paramString)
  {
    this.a.setImageUrl(paramString);
  }

  public void setImageUrl(String paramString, int paramInt)
  {
    this.a.setImageUrl(paramString, paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.CoverView
 * JD-Core Version:    0.6.0
 */