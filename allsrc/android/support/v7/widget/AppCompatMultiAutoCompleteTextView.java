package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.view.TintableBackgroundView;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.widget.W;
import android.support.v7.internal.widget.Y;
import android.util.AttributeSet;
import android.widget.MultiAutoCompleteTextView;
import com.arcsoft.hpay100.c.c;
import com.handmark.pulltorefresh.library.internal.e;

public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView
  implements TintableBackgroundView
{
  private static final int[] a = { 16842964, 16843126 };
  private c b;
  private c c;
  private Y d;

  public AppCompatMultiAutoCompleteTextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public AppCompatMultiAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.autoCompleteTextViewStyle);
  }

  public AppCompatMultiAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(W.a(paramContext), paramAttributeSet, paramInt);
    if (Y.a)
    {
      e locale = e.a(getContext(), paramAttributeSet, a, paramInt, 0);
      this.d = locale.c();
      if (locale.e(0))
      {
        ColorStateList localColorStateList = locale.c().b(locale.f(0, -1));
        if (localColorStateList != null)
          a(localColorStateList);
      }
      if (locale.e(1))
        setDropDownBackgroundDrawable(locale.a(1));
      locale.b();
    }
  }

  private void a()
  {
    if (getBackground() != null)
    {
      if (this.c == null)
        break label23;
      Y.a(this, this.c);
    }
    label23: 
    do
      return;
    while (this.b == null);
    Y.a(this, this.b);
  }

  private void a(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      if (this.b == null)
        this.b = new c();
      this.b.a = paramColorStateList;
      this.b.d = true;
    }
    while (true)
    {
      a();
      return;
      this.b = null;
    }
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    a();
  }

  public ColorStateList getSupportBackgroundTintList()
  {
    if (this.c != null)
      return this.c.a;
    return null;
  }

  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.c != null)
      return this.c.b;
    return null;
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    a(null);
  }

  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (this.d != null);
    for (ColorStateList localColorStateList = this.d.b(paramInt); ; localColorStateList = null)
    {
      a(localColorStateList);
      return;
    }
  }

  public void setDropDownBackgroundResource(int paramInt)
  {
    if (this.d != null)
    {
      setDropDownBackgroundDrawable(this.d.a(paramInt));
      return;
    }
    super.setDropDownBackgroundResource(paramInt);
  }

  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.c == null)
      this.c = new c();
    this.c.a = paramColorStateList;
    this.c.d = true;
    a();
  }

  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.c == null)
      this.c = new c();
    this.c.b = paramMode;
    this.c.c = true;
    a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.AppCompatMultiAutoCompleteTextView
 * JD-Core Version:    0.6.0
 */