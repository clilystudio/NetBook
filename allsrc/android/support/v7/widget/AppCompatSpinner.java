package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.TintableBackgroundView;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.widget.Y;
import android.util.AttributeSet;
import android.widget.ListPopupWindow;
import android.widget.Spinner;
import com.arcsoft.hpay100.c.c;
import com.handmark.pulltorefresh.library.internal.e;
import java.lang.reflect.Field;

public class AppCompatSpinner extends Spinner
  implements TintableBackgroundView
{
  private static final int[] a = { 16842964, 16843126 };
  private c b;
  private c c;
  private Y d;

  public AppCompatSpinner(Context paramContext)
  {
    this(paramContext, null);
  }

  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.spinnerStyle);
  }

  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e locale;
    Drawable localDrawable;
    if (Y.a)
    {
      locale = e.a(getContext(), paramAttributeSet, a, paramInt, 0);
      if (locale.e(0))
      {
        ColorStateList localColorStateList = locale.c().b(locale.f(0, -1));
        if (localColorStateList != null)
          a(localColorStateList);
      }
      if (locale.e(1))
      {
        localDrawable = locale.a(1);
        if (Build.VERSION.SDK_INT < 16)
          break label111;
        setPopupBackgroundDrawable(localDrawable);
      }
    }
    while (true)
    {
      this.d = locale.c();
      locale.b();
      return;
      label111: if (Build.VERSION.SDK_INT < 11)
        continue;
      try
      {
        Field localField = Spinner.class.getDeclaredField("mPopup");
        localField.setAccessible(true);
        Object localObject = localField.get(this);
        if (!(localObject instanceof ListPopupWindow))
          continue;
        ((ListPopupWindow)localObject).setBackgroundDrawable(localDrawable);
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        localNoSuchFieldException.printStackTrace();
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
      }
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
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner
 * JD-Core Version:    0.6.0
 */