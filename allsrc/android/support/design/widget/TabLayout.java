package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;
import java.util.Iterator;

public class TabLayout extends HorizontalScrollView
{
  private final ArrayList<am> a = new ArrayList();
  private am b;
  private final aj c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private ColorStateList i;
  private final int j;
  private final int k;
  private int l;
  private final int m;
  private int n;
  private int o;
  private int p;
  private com.arcsoft.hpay100.a.a q;
  private View.OnClickListener r;
  private au s;
  private au t;

  public TabLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public TabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public TabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setHorizontalScrollBarEnabled(false);
    setFillViewport(true);
    this.c = new aj(this, paramContext);
    addView(this.c, -2, -1);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TabLayout, paramInt, R.style.Widget_Design_TabLayout);
    this.c.b(localTypedArray.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, 0));
    this.c.a(localTypedArray.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
    this.h = localTypedArray.getResourceId(R.styleable.TabLayout_tabTextAppearance, R.style.TextAppearance_Design_Tab);
    int i1 = localTypedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
    this.g = i1;
    this.f = i1;
    this.e = i1;
    this.d = i1;
    this.d = localTypedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, this.d);
    this.e = localTypedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.e);
    this.f = localTypedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.f);
    this.g = localTypedArray.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.g);
    this.i = f(this.h);
    if (localTypedArray.hasValue(R.styleable.TabLayout_tabTextColor))
      this.i = localTypedArray.getColorStateList(R.styleable.TabLayout_tabTextColor);
    if (localTypedArray.hasValue(R.styleable.TabLayout_tabSelectedTextColor))
    {
      int i2 = localTypedArray.getColor(R.styleable.TabLayout_tabSelectedTextColor, 0);
      this.i = a(this.i.getDefaultColor(), i2);
    }
    this.k = localTypedArray.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, 0);
    this.m = localTypedArray.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, 0);
    this.j = localTypedArray.getResourceId(R.styleable.TabLayout_tabBackground, 0);
    this.n = localTypedArray.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
    this.p = localTypedArray.getInt(R.styleable.TabLayout_tabMode, 1);
    this.o = localTypedArray.getInt(R.styleable.TabLayout_tabGravity, 0);
    localTypedArray.recycle();
    a();
  }

  private int a(int paramInt, float paramFloat)
  {
    int i1 = this.p;
    int i2 = 0;
    View localView1;
    View localView2;
    if (i1 == 0)
    {
      localView1 = this.c.getChildAt(paramInt);
      if (paramInt + 1 >= this.c.getChildCount())
        break label112;
      localView2 = this.c.getChildAt(paramInt + 1);
      if (localView1 == null)
        break label118;
    }
    label112: label118: for (int i3 = localView1.getWidth(); ; i3 = 0)
    {
      int i4 = 0;
      if (localView2 != null)
        i4 = localView2.getWidth();
      i2 = localView1.getLeft() + (int)(0.5F * (paramFloat * (i4 + i3))) + localView1.getWidth() / 2 - getWidth() / 2;
      return i2;
      localView2 = null;
      break;
    }
  }

  private static ColorStateList a(int paramInt1, int paramInt2)
  {
    int[][] arrayOfInt = new int[2][];
    int[] arrayOfInt1 = new int[2];
    arrayOfInt[0] = SELECTED_STATE_SET;
    arrayOfInt1[0] = paramInt2;
    arrayOfInt[1] = EMPTY_STATE_SET;
    arrayOfInt1[1] = paramInt1;
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }

  private void a()
  {
    if (this.p == 0);
    for (int i1 = Math.max(0, this.n - this.d); ; i1 = 0)
    {
      ViewCompat.setPaddingRelative(this.c, i1, 0, 0, 0);
      switch (this.p)
      {
      default:
      case 1:
      case 0:
      }
      while (true)
      {
        b();
        return;
        this.c.setGravity(1);
        continue;
        this.c.setGravity(8388611);
      }
    }
  }

  private void a(am paramam, int paramInt)
  {
    paramam.a(paramInt);
    this.a.add(paramInt, paramam);
    int i1 = this.a.size();
    for (int i2 = paramInt + 1; i2 < i1; i2++)
      ((am)this.a.get(i2)).a(i2);
  }

  private void a(LinearLayout.LayoutParams paramLayoutParams)
  {
    if ((this.p == 1) && (this.o == 0))
    {
      paramLayoutParams.width = 0;
      paramLayoutParams.weight = 1.0F;
      return;
    }
    paramLayoutParams.width = -2;
    paramLayoutParams.weight = 0.0F;
  }

  private void b()
  {
    for (int i1 = 0; i1 < this.c.getChildCount(); i1++)
    {
      View localView = this.c.getChildAt(i1);
      a((LinearLayout.LayoutParams)localView.getLayoutParams());
      localView.requestLayout();
    }
  }

  private void b(int paramInt)
  {
    an localan = (an)this.c.getChildAt(paramInt);
    if (localan != null)
      localan.a();
  }

  private int c(int paramInt)
  {
    return Math.round(getResources().getDisplayMetrics().density * paramInt);
  }

  private void d(int paramInt)
  {
    if (paramInt == -1)
      return;
    aj localaj;
    int i1;
    if ((getWindowToken() != null) && (ViewCompat.isLaidOut(this)))
    {
      localaj = this.c;
      i1 = localaj.getChildCount();
    }
    for (int i2 = 0; ; i2++)
    {
      int i3 = 0;
      if (i2 < i1)
      {
        if (localaj.getChildAt(i2).getWidth() > 0)
          continue;
        i3 = 1;
      }
      if (i3 == 0)
        break;
      setScrollPosition(paramInt, 0.0F, true);
      return;
    }
    int i4 = getScrollX();
    int i5 = a(paramInt, 0.0F);
    if (i4 != i5)
    {
      if (this.s == null)
      {
        this.s = aP.a();
        this.s.a(a.b);
        this.s.a(300);
        this.s.a(new ai(this));
      }
      this.s.a(i4, i5);
      this.s.a();
    }
    this.c.a(paramInt, 300);
  }

  private void e(int paramInt)
  {
    int i1 = this.c.getChildCount();
    int i2 = 0;
    if (i2 < i1)
    {
      View localView = this.c.getChildAt(i2);
      if (i2 == paramInt);
      for (boolean bool = true; ; bool = false)
      {
        localView.setSelected(bool);
        i2++;
        break;
      }
    }
  }

  private ColorStateList f(int paramInt)
  {
    TypedArray localTypedArray = getContext().obtainStyledAttributes(paramInt, R.styleable.TextAppearance);
    try
    {
      ColorStateList localColorStateList = localTypedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
      return localColorStateList;
    }
    finally
    {
      localTypedArray.recycle();
    }
    throw localObject;
  }

  public final am a(int paramInt)
  {
    return (am)this.a.get(paramInt);
  }

  final void a(am paramam)
  {
    a(paramam, true);
  }

  final void a(am paramam, boolean paramBoolean)
  {
    if (this.b == paramam)
    {
      if (this.b != null)
        d(paramam.a());
      return;
    }
    int i1;
    if (paramam != null)
    {
      i1 = paramam.a();
      label33: e(i1);
      if (paramBoolean)
      {
        if (((this.b != null) && (this.b.a() != -1)) || (i1 == -1))
          break label108;
        setScrollPosition(i1, 0.0F, true);
      }
    }
    while (true)
    {
      this.b = paramam;
      if ((this.b == null) || (this.q == null))
        break;
      this.q.a(this.b);
      return;
      i1 = -1;
      break label33;
      label108: d(i1);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = c(48) + getPaddingTop() + getPaddingBottom();
    switch (View.MeasureSpec.getMode(paramInt2))
    {
    default:
    case -2147483648:
    case 0:
    }
    while (true)
    {
      super.onMeasure(paramInt1, paramInt2);
      if ((this.p == 1) && (getChildCount() == 1))
      {
        View localView = getChildAt(0);
        int i4 = getMeasuredWidth();
        if (localView.getMeasuredWidth() > i4)
        {
          int i5 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom(), localView.getLayoutParams().height);
          localView.measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i5);
        }
      }
      int i2 = this.m;
      int i3 = getMeasuredWidth() - c(56);
      if ((i2 == 0) || (i2 > i3))
        i2 = i3;
      this.l = i2;
      return;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.min(i1, View.MeasureSpec.getSize(paramInt2)), 1073741824);
      continue;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
    }
  }

  public void setOnTabSelectedListener$160fef5a(com.arcsoft.hpay100.a.a parama)
  {
    this.q = parama;
  }

  public void setScrollPosition(int paramInt, float paramFloat, boolean paramBoolean)
  {
    if ((this.t != null) && (this.t.b()));
    do
    {
      do
        return;
      while ((paramInt < 0) || (paramInt >= this.c.getChildCount()));
      this.c.a(paramInt, paramFloat);
      scrollTo(a(paramInt, paramFloat), 0);
    }
    while (!paramBoolean);
    e(Math.round(paramFloat + paramInt));
  }

  public void setTabGravity(int paramInt)
  {
    if (this.o != paramInt)
    {
      this.o = paramInt;
      a();
    }
  }

  public void setTabMode(int paramInt)
  {
    if (paramInt != this.p)
    {
      this.p = paramInt;
      a();
    }
  }

  public void setTabTextColors(int paramInt1, int paramInt2)
  {
    setTabTextColors(a(paramInt1, paramInt2));
  }

  public void setTabTextColors(ColorStateList paramColorStateList)
  {
    if (this.i != paramColorStateList)
    {
      this.i = paramColorStateList;
      int i1 = 0;
      int i2 = this.c.getChildCount();
      while (i1 < i2)
      {
        b(i1);
        i1++;
      }
    }
  }

  public void setTabsFromPagerAdapter(PagerAdapter paramPagerAdapter)
  {
    this.c.removeAllViews();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      ((am)localIterator.next()).a(-1);
      localIterator.remove();
    }
    this.b = null;
    int i1 = 0;
    int i2 = paramPagerAdapter.getCount();
    while (i1 < i2)
    {
      am localam = new am(this).a(paramPagerAdapter.getPageTitle(i1));
      boolean bool = this.a.isEmpty();
      if (am.a(localam) != this)
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
      an localan = new an(this, getContext(), localam);
      localan.setFocusable(true);
      if (this.r == null)
        this.r = new ah(this);
      localan.setOnClickListener(this.r);
      aj localaj = this.c;
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
      a(localLayoutParams);
      localaj.addView(localan, localLayoutParams);
      if (bool)
        localan.setSelected(true);
      a(localam, this.a.size());
      if (bool)
        localam.c();
      i1++;
    }
  }

  public void setupWithViewPager(ViewPager paramViewPager)
  {
    PagerAdapter localPagerAdapter = paramViewPager.getAdapter();
    if (localPagerAdapter == null)
      throw new IllegalArgumentException("ViewPager does not have a PagerAdapter set");
    setTabsFromPagerAdapter(localPagerAdapter);
    paramViewPager.addOnPageChangeListener(new TabLayout.TabLayoutOnPageChangeListener(this));
    setOnTabSelectedListener$160fef5a(new com.arcsoft.hpay100.a.a(paramViewPager));
    if ((this.b == null) || (this.b.a() != paramViewPager.getCurrentItem()))
      a(paramViewPager.getCurrentItem()).c();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.TabLayout
 * JD-Core Version:    0.6.0
 */