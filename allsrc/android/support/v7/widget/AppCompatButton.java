package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.TintableBackgroundView;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.b.a;
import android.support.v7.internal.widget.V;
import android.support.v7.internal.widget.Y;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import com.arcsoft.hpay100.c.c;
import com.handmark.pulltorefresh.library.internal.e;

public class AppCompatButton extends Button
  implements TintableBackgroundView
{
  private static final int[] a = { 16842964 };
  private c b;
  private c c;
  private Y d;

  public AppCompatButton(Context paramContext)
  {
    this(paramContext, null);
  }

  public AppCompatButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.buttonStyle);
  }

  public AppCompatButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (Y.a)
    {
      e locale = e.a(getContext(), paramAttributeSet, a, paramInt, 0);
      if (locale.e(0))
      {
        ColorStateList localColorStateList2 = locale.c().b(locale.f(0, -1));
        if (localColorStateList2 != null)
          a(localColorStateList2);
      }
      this.d = locale.c();
      locale.b();
    }
    TypedArray localTypedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppCompatTextView, paramInt, 0);
    int i = localTypedArray1.getResourceId(R.styleable.AppCompatTextView_android_textAppearance, -1);
    localTypedArray1.recycle();
    if (i != -1)
    {
      TypedArray localTypedArray3 = paramContext.obtainStyledAttributes(i, R.styleable.TextAppearance);
      if (localTypedArray3.hasValue(R.styleable.TextAppearance_textAllCaps))
        setAllCaps(localTypedArray3.getBoolean(R.styleable.TextAppearance_textAllCaps, false));
      localTypedArray3.recycle();
    }
    TypedArray localTypedArray2 = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppCompatTextView, paramInt, 0);
    if (localTypedArray2.hasValue(R.styleable.AppCompatTextView_textAllCaps))
      setAllCaps(localTypedArray2.getBoolean(R.styleable.AppCompatTextView_textAllCaps, false));
    localTypedArray2.recycle();
    ColorStateList localColorStateList1 = getTextColors();
    if ((localColorStateList1 != null) && (!localColorStateList1.isStateful()))
      if (Build.VERSION.SDK_INT >= 21)
        break label244;
    label244: for (int j = V.c(paramContext, 16842808); ; j = V.a(paramContext, 16842808))
    {
      setTextColor(V.a(localColorStateList1.getDefaultColor(), j));
      return;
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

  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(Button.class.getName());
  }

  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(Button.class.getName());
  }

  public void setAllCaps(boolean paramBoolean)
  {
    if (paramBoolean);
    for (a locala = new a(getContext()); ; locala = null)
    {
      setTransformationMethod(locala);
      return;
    }
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

  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramInt, R.styleable.TextAppearance);
    if (localTypedArray.hasValue(R.styleable.TextAppearance_textAllCaps))
      setAllCaps(localTypedArray.getBoolean(R.styleable.TextAppearance_textAllCaps, false));
    localTypedArray.recycle();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.AppCompatButton
 * JD-Core Version:    0.6.0
 */