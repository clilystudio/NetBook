package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.widget.TextView;

public class TextViewCompat
{
  static final TextViewCompat.TextViewCompatImpl IMPL;

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 18)
    {
      IMPL = new TextViewCompat.JbMr2TextViewCompatImpl();
      return;
    }
    if (i >= 17)
    {
      IMPL = new TextViewCompat.JbMr1TextViewCompatImpl();
      return;
    }
    IMPL = new TextViewCompat.BaseTextViewCompatImpl();
  }

  public static void setCompoundDrawablesRelative(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    IMPL.setCompoundDrawablesRelative(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }

  public static void setCompoundDrawablesRelativeWithIntrinsicBounds(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    IMPL.setCompoundDrawablesRelativeWithIntrinsicBounds(paramTextView, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public static void setCompoundDrawablesRelativeWithIntrinsicBounds(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    IMPL.setCompoundDrawablesRelativeWithIntrinsicBounds(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.TextViewCompat
 * JD-Core Version:    0.6.0
 */