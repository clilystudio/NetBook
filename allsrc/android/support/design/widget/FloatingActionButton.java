package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.design.R.dimen;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageView;

@r(a="Landroid/support/design/widget/z;")
public class FloatingActionButton extends ImageView
{
  private ColorStateList a;
  private PorterDuff.Mode b;
  private int c;
  private int d;
  private int e;
  private int f;
  private final Rect g = new Rect();
  private final H h;

  public FloatingActionButton(Context paramContext)
  {
    this(paramContext, null);
  }

  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.FloatingActionButton, paramInt, R.style.Widget_Design_FloatingActionButton);
    Drawable localDrawable = localTypedArray.getDrawable(R.styleable.FloatingActionButton_android_background);
    this.a = localTypedArray.getColorStateList(R.styleable.FloatingActionButton_backgroundTint);
    PorterDuff.Mode localMode;
    float f1;
    float f2;
    y localy;
    int i;
    switch (localTypedArray.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1))
    {
    default:
      localMode = null;
      this.b = localMode;
      this.d = localTypedArray.getColor(R.styleable.FloatingActionButton_rippleColor, 0);
      this.e = localTypedArray.getInt(R.styleable.FloatingActionButton_fabSize, 0);
      this.c = localTypedArray.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
      f1 = localTypedArray.getDimension(R.styleable.FloatingActionButton_elevation, 0.0F);
      f2 = localTypedArray.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0F);
      localTypedArray.recycle();
      localy = new y(this);
      i = Build.VERSION.SDK_INT;
      if (i < 21)
        break;
      this.h = new I(this, localy);
    case 3:
    case 5:
    case 9:
    case 14:
    case 15:
    }
    while (true)
    {
      int j = (int)getResources().getDimension(R.dimen.fab_content_size);
      this.f = ((c() - j) / 2);
      this.h.a(localDrawable, this.a, this.b, this.d, this.c);
      this.h.a(f1);
      this.h.b(f2);
      setClickable(true);
      return;
      localMode = PorterDuff.Mode.SRC_OVER;
      break;
      localMode = PorterDuff.Mode.SRC_IN;
      break;
      localMode = PorterDuff.Mode.SRC_ATOP;
      break;
      localMode = PorterDuff.Mode.MULTIPLY;
      break;
      localMode = PorterDuff.Mode.SCREEN;
      break;
      if (i >= 12)
      {
        this.h = new F(this, localy);
        continue;
      }
      this.h = new A(this, localy);
    }
  }

  private static int a(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    int j = View.MeasureSpec.getSize(paramInt2);
    switch (i)
    {
    case 0:
    default:
      return paramInt1;
    case -2147483648:
      return Math.min(paramInt1, j);
    case 1073741824:
    }
    return j;
  }

  public final void a()
  {
    if (getVisibility() == 0);
    do
    {
      return;
      setVisibility(0);
    }
    while (!ViewCompat.isLaidOut(this));
    this.h.c();
  }

  public final void b()
  {
    if (getVisibility() != 0)
      return;
    if ((ViewCompat.isLaidOut(this)) && (!isInEditMode()))
    {
      this.h.b();
      return;
    }
    setVisibility(8);
  }

  final int c()
  {
    switch (this.e)
    {
    default:
      return getResources().getDimensionPixelSize(R.dimen.fab_size_normal);
    case 1:
    }
    return getResources().getDimensionPixelSize(R.dimen.fab_size_mini);
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    this.h.a(getDrawableState());
  }

  public ColorStateList getBackgroundTintList()
  {
    return this.a;
  }

  public PorterDuff.Mode getBackgroundTintMode()
  {
    return this.b;
  }

  @TargetApi(11)
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    this.h.a();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = c();
    int j = Math.min(a(i, paramInt1), a(i, paramInt2));
    setMeasuredDimension(j + this.g.left + this.g.right, j + this.g.top + this.g.bottom);
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.h.a(paramDrawable, this.a, this.b, this.d, this.c);
  }

  public void setBackgroundTintList(ColorStateList paramColorStateList)
  {
    this.h.a(paramColorStateList);
  }

  public void setBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    this.h.a(paramMode);
  }

  public void setRippleColor(int paramInt)
  {
    if (this.d != paramInt)
    {
      this.d = paramInt;
      this.h.a(paramInt);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.FloatingActionButton
 * JD-Core Version:    0.6.0
 */