package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;

public class DrawableTextView extends TextView
{
  public DrawableTextView(Context paramContext)
  {
    super(paramContext);
  }

  public DrawableTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public DrawableTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    Drawable[] arrayOfDrawable = getCompoundDrawables();
    if (arrayOfDrawable != null)
    {
      Drawable localDrawable = arrayOfDrawable[0];
      if (localDrawable != null)
      {
        float f1 = getPaint().measureText(getText().toString());
        int i = getCompoundDrawablePadding();
        float f2 = f1 + localDrawable.getIntrinsicWidth() + i + getPaddingLeft() + getPaddingRight();
        paramCanvas.translate((getWidth() - f2) / 2.0F, 0.0F);
      }
    }
    super.onDraw(paramCanvas);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.DrawableTextView
 * JD-Core Version:    0.6.0
 */