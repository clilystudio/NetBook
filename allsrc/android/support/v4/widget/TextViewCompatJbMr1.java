package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.widget.TextView;

class TextViewCompatJbMr1
{
  public static void setCompoundDrawablesRelative(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    int i;
    Drawable localDrawable;
    if (paramTextView.getLayoutDirection() == 1)
    {
      i = 1;
      if (i == 0)
        break label41;
      localDrawable = paramDrawable3;
      label19: if (i == 0)
        break label47;
    }
    while (true)
    {
      paramTextView.setCompoundDrawables(localDrawable, paramDrawable2, paramDrawable1, paramDrawable4);
      return;
      i = 0;
      break;
      label41: localDrawable = paramDrawable1;
      break label19;
      label47: paramDrawable1 = paramDrawable3;
    }
  }

  public static void setCompoundDrawablesRelativeWithIntrinsicBounds(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i;
    int j;
    if (paramTextView.getLayoutDirection() == 1)
    {
      i = 1;
      if (i == 0)
        break label41;
      j = paramInt3;
      label19: if (i == 0)
        break label47;
    }
    while (true)
    {
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(j, paramInt2, paramInt1, paramInt4);
      return;
      i = 0;
      break;
      label41: j = paramInt1;
      break label19;
      label47: paramInt1 = paramInt3;
    }
  }

  public static void setCompoundDrawablesRelativeWithIntrinsicBounds(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    int i;
    Drawable localDrawable;
    if (paramTextView.getLayoutDirection() == 1)
    {
      i = 1;
      if (i == 0)
        break label41;
      localDrawable = paramDrawable3;
      label19: if (i == 0)
        break label47;
    }
    while (true)
    {
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(localDrawable, paramDrawable2, paramDrawable1, paramDrawable4);
      return;
      i = 0;
      break;
      label41: localDrawable = paramDrawable1;
      break label19;
      label47: paramDrawable1 = paramDrawable3;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.TextViewCompatJbMr1
 * JD-Core Version:    0.6.0
 */