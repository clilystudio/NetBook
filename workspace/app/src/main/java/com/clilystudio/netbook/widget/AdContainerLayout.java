package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public class AdContainerLayout extends RelativeLayout
{
  private boolean a = false;
  private f b;

  public AdContainerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    }
    while (true)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      if (this.a)
      {
        if (this.b != null)
          this.b.a();
        return true;
      }
      if (this.b == null)
        continue;
      this.b.b();
    }
  }

  public void setIsShowConfirm(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public void setSplashAdContainerClickListener(f paramf)
  {
    this.b = paramf;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.AdContainerLayout
 * JD-Core Version:    0.6.0
 */