package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.bool;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.P;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Toast;

public class ActionMenuItemView extends AppCompatTextView
  implements x, android.support.v7.widget.i, View.OnClickListener, View.OnLongClickListener
{
  private MenuItemImpl a;
  private CharSequence b;
  private Drawable c;
  private i d;
  private P e;
  private b f;
  private boolean g;
  private boolean h;
  private int i;
  private int j;
  private int k;

  public ActionMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = paramContext.getResources();
    this.g = localResources.getBoolean(R.bool.abc_config_allowActionMenuItemTextWithIcon);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ActionMenuItemView, paramInt, 0);
    this.i = localTypedArray.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
    localTypedArray.recycle();
    this.k = (int)(0.5F + 32.0F * localResources.getDisplayMetrics().density);
    setOnClickListener(this);
    setOnLongClickListener(this);
    this.j = -1;
  }

  private void f()
  {
    int m;
    if (!TextUtils.isEmpty(this.b))
    {
      m = 1;
      if (this.c != null)
      {
        boolean bool1 = this.a.k();
        n = 0;
        if (!bool1)
          break label57;
        if (!this.g)
        {
          boolean bool2 = this.h;
          n = 0;
          if (!bool2)
            break label57;
        }
      }
      int n = 1;
      label57: if ((m & n) == 0)
        break label79;
    }
    label79: for (CharSequence localCharSequence = this.b; ; localCharSequence = null)
    {
      setText(localCharSequence);
      return;
      m = 0;
      break;
    }
  }

  public final MenuItemImpl a()
  {
    return this.a;
  }

  public final void a(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    this.a = paramMenuItemImpl;
    setIcon(paramMenuItemImpl.getIcon());
    setTitle(paramMenuItemImpl.a(this));
    setId(paramMenuItemImpl.getItemId());
    if (paramMenuItemImpl.isVisible());
    for (int m = 0; ; m = 8)
    {
      setVisibility(m);
      setEnabled(paramMenuItemImpl.isEnabled());
      if ((paramMenuItemImpl.hasSubMenu()) && (this.e == null))
        this.e = new a(this);
      return;
    }
  }

  public final boolean b()
  {
    return true;
  }

  public final boolean c()
  {
    return !TextUtils.isEmpty(getText());
  }

  public final boolean d()
  {
    return (c()) && (this.a.getIcon() == null);
  }

  public final boolean e()
  {
    return c();
  }

  public void onClick(View paramView)
  {
    if (this.d != null)
      this.d.a(this.a);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    this.g = getContext().getResources().getBoolean(R.bool.abc_config_allowActionMenuItemTextWithIcon);
    f();
  }

  public boolean onLongClick(View paramView)
  {
    if (c())
      return false;
    int[] arrayOfInt = new int[2];
    Rect localRect = new Rect();
    getLocationOnScreen(arrayOfInt);
    getWindowVisibleDisplayFrame(localRect);
    Context localContext = getContext();
    int m = getWidth();
    int n = getHeight();
    int i1 = arrayOfInt[1] + n / 2;
    int i2 = arrayOfInt[0] + m / 2;
    if (ViewCompat.getLayoutDirection(paramView) == 0)
      i2 = localContext.getResources().getDisplayMetrics().widthPixels - i2;
    Toast localToast = Toast.makeText(localContext, this.a.getTitle(), 0);
    if (i1 < localRect.height())
      localToast.setGravity(8388661, i2, n);
    while (true)
    {
      localToast.show();
      return true;
      localToast.setGravity(81, 0, n);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = c();
    if ((bool) && (this.j >= 0))
      super.setPadding(this.j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    super.onMeasure(paramInt1, paramInt2);
    int m = View.MeasureSpec.getMode(paramInt1);
    int n = View.MeasureSpec.getSize(paramInt1);
    int i1 = getMeasuredWidth();
    if (m == -2147483648);
    for (int i2 = Math.min(n, this.i); ; i2 = this.i)
    {
      if ((m != 1073741824) && (this.i > 0) && (i1 < i2))
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), paramInt2);
      if ((!bool) && (this.c != null))
        super.setPadding((getMeasuredWidth() - this.c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
      return;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.a.hasSubMenu()) && (this.e != null) && (this.e.onTouch(this, paramMotionEvent)))
      return true;
    return super.onTouchEvent(paramMotionEvent);
  }

  public void setCheckable(boolean paramBoolean)
  {
  }

  public void setChecked(boolean paramBoolean)
  {
  }

  public void setExpandedFormat(boolean paramBoolean)
  {
    if (this.h != paramBoolean)
    {
      this.h = paramBoolean;
      if (this.a != null)
        this.a.f();
    }
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.c = paramDrawable;
    if (paramDrawable != null)
    {
      int m = paramDrawable.getIntrinsicWidth();
      int n = paramDrawable.getIntrinsicHeight();
      if (m > this.k)
      {
        float f2 = this.k / m;
        m = this.k;
        n = (int)(f2 * n);
      }
      if (n > this.k)
      {
        float f1 = this.k / n;
        n = this.k;
        m = (int)(f1 * m);
      }
      paramDrawable.setBounds(0, 0, m, n);
    }
    setCompoundDrawables(paramDrawable, null, null, null);
    f();
  }

  public void setItemInvoker(i parami)
  {
    this.d = parami;
  }

  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.j = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void setPopupCallback(b paramb)
  {
    this.f = paramb;
  }

  public void setShortcut(boolean paramBoolean, char paramChar)
  {
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.b = paramCharSequence;
    setContentDescription(this.b);
    f();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ActionMenuItemView
 * JD-Core Version:    0.6.0
 */