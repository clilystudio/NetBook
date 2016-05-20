package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import com.nostra13.universalimageloader.core.d.a;

public class AutoScaleImageView extends SmartImageView
{
  private final int b;

  public AutoScaleImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.b = paramContext.getResources().getDisplayMetrics().widthPixels;
  }

  public void setImageUrl(String paramString)
  {
    setImageUrl(paramString, 0, new I(this));
  }

  public final void setImageUrl(String paramString, int paramInt)
  {
    super.setImageUrl(paramString, paramInt);
  }

  public final void setImageUrl(String paramString, int paramInt, a parama)
  {
    super.setImageUrl(paramString, paramInt, parama);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.AutoScaleImageView
 * JD-Core Version:    0.6.2
 */