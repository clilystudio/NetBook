package com.clilystudio.netbook.widget;

import android.content.Context;
import android.support.design.widget.K;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public class AdBottomLayout extends RelativeLayout
{
  private K a;
  private float b = 0.0F;

  public AdBottomLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
      return super.onTouchEvent(paramMotionEvent);
    case 0:
    }
    paramMotionEvent.getRawX();
    return true;
  }

  public void setAreaBound(float paramFloat)
  {
    this.b = paramFloat;
  }

  public void setSkipAd$500ea8a7(K paramK)
  {
    this.a = paramK;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.AdBottomLayout
 * JD-Core Version:    0.6.0
 */