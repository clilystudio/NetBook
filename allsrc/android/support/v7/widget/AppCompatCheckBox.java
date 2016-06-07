package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.widget.Y;
import android.util.AttributeSet;
import android.widget.CheckBox;
import com.handmark.pulltorefresh.library.internal.e;

public class AppCompatCheckBox extends CheckBox
{
  private static final int[] a = { 16843015 };
  private Y b;
  private Drawable c;

  public AppCompatCheckBox(Context paramContext)
  {
    this(paramContext, null);
  }

  public AppCompatCheckBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.checkboxStyle);
  }

  public AppCompatCheckBox(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (Y.a)
    {
      e locale = e.a(getContext(), paramAttributeSet, a, paramInt, 0);
      setButtonDrawable(locale.a(0));
      locale.b();
      this.b = locale.c();
    }
  }

  public int getCompoundPaddingLeft()
  {
    int i = super.getCompoundPaddingLeft();
    if ((Build.VERSION.SDK_INT < 17) && (this.c != null))
      i += this.c.getIntrinsicWidth();
    return i;
  }

  public void setButtonDrawable(int paramInt)
  {
    if (this.b != null)
    {
      setButtonDrawable(this.b.a(paramInt));
      return;
    }
    super.setButtonDrawable(paramInt);
  }

  public void setButtonDrawable(Drawable paramDrawable)
  {
    super.setButtonDrawable(paramDrawable);
    this.c = paramDrawable;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.AppCompatCheckBox
 * JD-Core Version:    0.6.0
 */