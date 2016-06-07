package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.design.R.attr;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.internal.ScrimInsetsFrameLayout;
import android.support.design.internal.a;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.internal.view.e;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuInflater;
import android.view.View;
import android.view.View.MeasureSpec;

public class NavigationView extends ScrimInsetsFrameLayout
{
  private static final int[] a = { 16842912 };
  private static final int[] b = { -16842910 };
  private final MenuBuilder c;
  private final a d;
  private K e;
  private int f;
  private MenuInflater g;

  public NavigationView(Context paramContext)
  {
    this(paramContext, null);
  }

  public NavigationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public NavigationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.c = new MenuBuilder(paramContext);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.NavigationView, paramInt, R.style.Widget_Design_NavigationView);
    setBackgroundDrawable(localTypedArray.getDrawable(R.styleable.NavigationView_android_background));
    if (localTypedArray.hasValue(R.styleable.NavigationView_elevation))
      ViewCompat.setElevation(this, localTypedArray.getDimensionPixelSize(R.styleable.NavigationView_elevation, 0));
    ViewCompat.setFitsSystemWindows(this, localTypedArray.getBoolean(R.styleable.NavigationView_android_fitsSystemWindows, false));
    this.f = localTypedArray.getDimensionPixelSize(R.styleable.NavigationView_android_maxWidth, 0);
    ColorStateList localColorStateList1;
    if (localTypedArray.hasValue(R.styleable.NavigationView_itemIconTint))
    {
      localColorStateList1 = localTypedArray.getColorStateList(R.styleable.NavigationView_itemIconTint);
      if (!localTypedArray.hasValue(R.styleable.NavigationView_itemTextColor))
        break label377;
    }
    label377: for (ColorStateList localColorStateList2 = localTypedArray.getColorStateList(R.styleable.NavigationView_itemTextColor); ; localColorStateList2 = a(16842806))
    {
      Drawable localDrawable = localTypedArray.getDrawable(R.styleable.NavigationView_itemBackground);
      if (localTypedArray.hasValue(R.styleable.NavigationView_menu))
      {
        int j = localTypedArray.getResourceId(R.styleable.NavigationView_menu, 0);
        this.d.b(true);
        if (this.g == null)
          this.g = new e(getContext());
        this.g.inflate(j, this.c);
        this.d.b(false);
        this.d.a(false);
      }
      this.c.a(new J(this));
      this.d = new a();
      this.d.a(1);
      this.d.a(paramContext, this.c);
      this.d.a(localColorStateList1);
      this.d.b(localColorStateList2);
      this.d.a(localDrawable);
      this.c.a(this.d);
      addView((View)this.d.a(this));
      if (localTypedArray.hasValue(R.styleable.NavigationView_headerLayout))
      {
        int i = localTypedArray.getResourceId(R.styleable.NavigationView_headerLayout, 0);
        this.d.b(i);
      }
      localTypedArray.recycle();
      return;
      localColorStateList1 = a(16842808);
      break;
    }
  }

  private ColorStateList a(int paramInt)
  {
    TypedValue localTypedValue = new TypedValue();
    if (!getContext().getTheme().resolveAttribute(paramInt, localTypedValue, true));
    ColorStateList localColorStateList;
    do
    {
      return null;
      localColorStateList = getResources().getColorStateList(localTypedValue.resourceId);
    }
    while (!getContext().getTheme().resolveAttribute(R.attr.colorPrimary, localTypedValue, true));
    int i = localTypedValue.data;
    int j = localColorStateList.getDefaultColor();
    int[][] arrayOfInt = new int[3][];
    arrayOfInt[0] = b;
    arrayOfInt[1] = a;
    arrayOfInt[2] = EMPTY_STATE_SET;
    int[] arrayOfInt1 = new int[3];
    arrayOfInt1[0] = localColorStateList.getColorForState(b, j);
    arrayOfInt1[1] = i;
    arrayOfInt1[2] = j;
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    switch (View.MeasureSpec.getMode(paramInt1))
    {
    case 1073741824:
    default:
    case -2147483648:
    case 0:
    }
    while (true)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
      paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(paramInt1), this.f), 1073741824);
      continue;
      paramInt1 = View.MeasureSpec.makeMeasureSpec(this.f, 1073741824);
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    NavigationView.SavedState localSavedState = (NavigationView.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.c.b(localSavedState.a);
  }

  protected Parcelable onSaveInstanceState()
  {
    NavigationView.SavedState localSavedState = new NavigationView.SavedState(super.onSaveInstanceState());
    localSavedState.a = new Bundle();
    this.c.a(localSavedState.a);
    return localSavedState;
  }

  public void setItemBackground(Drawable paramDrawable)
  {
    this.d.a(paramDrawable);
  }

  public void setItemBackgroundResource(int paramInt)
  {
    setItemBackground(ContextCompat.getDrawable(getContext(), paramInt));
  }

  public void setItemIconTintList(ColorStateList paramColorStateList)
  {
    this.d.a(paramColorStateList);
  }

  public void setItemTextColor(ColorStateList paramColorStateList)
  {
    this.d.b(paramColorStateList);
  }

  public void setNavigationItemSelectedListener(K paramK)
  {
    this.e = paramK;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.NavigationView
 * JD-Core Version:    0.6.0
 */