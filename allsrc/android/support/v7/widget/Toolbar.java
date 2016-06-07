package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.design.widget.K;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.MenuItemCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.b;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.v;
import android.support.v7.internal.widget.D;
import android.support.v7.internal.widget.Y;
import android.support.v7.internal.widget.aa;
import android.support.v7.internal.widget.ae;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.alipay.sdk.app.o;
import com.handmark.pulltorefresh.library.internal.e;
import java.util.ArrayList;
import java.util.List;

public class Toolbar extends ViewGroup
{
  private boolean A;
  private final ArrayList<View> B = new ArrayList();
  private final int[] C = new int[2];
  private K D;
  private final m E = new aV(this);
  private aa F;
  private ActionMenuPresenter G;
  private aY H;
  private v I;
  private h J;
  private boolean K;
  private final Runnable L = new aW(this);
  private final Y M;
  View a;
  private ActionMenuView b;
  private TextView c;
  private TextView d;
  private ImageButton e;
  private ImageView f;
  private Drawable g;
  private CharSequence h;
  private ImageButton i;
  private Context j;
  private int k;
  private int l;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private int r;
  private int s;
  private final o t = new o();
  private int u = 8388627;
  private CharSequence v;
  private CharSequence w;
  private int x;
  private int y;
  private boolean z;

  public Toolbar(Context paramContext)
  {
    this(paramContext, null);
  }

  public Toolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.toolbarStyle);
  }

  public Toolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e locale = e.a(getContext(), paramAttributeSet, R.styleable.Toolbar, paramInt, 0);
    this.l = locale.f(R.styleable.Toolbar_titleTextAppearance, 0);
    this.m = locale.f(R.styleable.Toolbar_subtitleTextAppearance, 0);
    this.u = locale.b(R.styleable.Toolbar_android_gravity, this.u);
    this.n = 48;
    int i1 = locale.c(R.styleable.Toolbar_titleMargins, 0);
    this.s = i1;
    this.r = i1;
    this.q = i1;
    this.p = i1;
    int i2 = locale.c(R.styleable.Toolbar_titleMarginStart, -1);
    if (i2 >= 0)
      this.p = i2;
    int i3 = locale.c(R.styleable.Toolbar_titleMarginEnd, -1);
    if (i3 >= 0)
      this.q = i3;
    int i4 = locale.c(R.styleable.Toolbar_titleMarginTop, -1);
    if (i4 >= 0)
      this.r = i4;
    int i5 = locale.c(R.styleable.Toolbar_titleMarginBottom, -1);
    if (i5 >= 0)
      this.s = i5;
    this.o = locale.d(R.styleable.Toolbar_maxButtonHeight, -1);
    int i6 = locale.c(R.styleable.Toolbar_contentInsetStart, -2147483648);
    int i7 = locale.c(R.styleable.Toolbar_contentInsetEnd, -2147483648);
    int i8 = locale.d(R.styleable.Toolbar_contentInsetLeft, 0);
    int i9 = locale.d(R.styleable.Toolbar_contentInsetRight, 0);
    this.t.b(i8, i9);
    if ((i6 != -2147483648) || (i7 != -2147483648))
      this.t.a(i6, i7);
    this.g = locale.a(R.styleable.Toolbar_collapseIcon);
    this.h = locale.c(R.styleable.Toolbar_collapseContentDescription);
    CharSequence localCharSequence1 = locale.c(R.styleable.Toolbar_title);
    if (!TextUtils.isEmpty(localCharSequence1))
      setTitle(localCharSequence1);
    CharSequence localCharSequence2 = locale.c(R.styleable.Toolbar_subtitle);
    if (!TextUtils.isEmpty(localCharSequence2))
      setSubtitle(localCharSequence2);
    this.j = getContext();
    setPopupTheme(locale.f(R.styleable.Toolbar_popupTheme, 0));
    Drawable localDrawable = locale.a(R.styleable.Toolbar_navigationIcon);
    if (localDrawable != null)
      setNavigationIcon(localDrawable);
    CharSequence localCharSequence3 = locale.c(R.styleable.Toolbar_navigationContentDescription);
    if (!TextUtils.isEmpty(localCharSequence3))
      setNavigationContentDescription(localCharSequence3);
    locale.b();
    this.M = locale.c();
  }

  private int a(int paramInt)
  {
    int i1 = ViewCompat.getLayoutDirection(this);
    int i2 = 0x7 & GravityCompat.getAbsoluteGravity(paramInt, i1);
    switch (i2)
    {
    case 2:
    case 4:
    default:
      if (i1 != 1)
        break;
      i2 = 5;
    case 1:
    case 3:
    case 5:
      return i2;
    }
    return 3;
  }

  private int a(View paramView, int paramInt)
  {
    aZ localaZ = (aZ)paramView.getLayoutParams();
    int i1 = paramView.getMeasuredHeight();
    int i2;
    int i4;
    int i5;
    int i6;
    int i7;
    int i9;
    if (paramInt > 0)
    {
      i2 = (i1 - paramInt) / 2;
      int i3 = 0x70 & localaZ.a;
      switch (i3)
      {
      default:
        i3 = 0x70 & this.u;
      case 16:
      case 48:
      case 80:
      }
      switch (i3)
      {
      default:
        i4 = getPaddingTop();
        i5 = getPaddingBottom();
        i6 = getHeight();
        i7 = (i6 - i4 - i5 - i1) / 2;
        if (i7 >= localaZ.topMargin)
          break;
        i9 = localaZ.topMargin;
      case 48:
      case 80:
      }
    }
    while (true)
    {
      return i9 + i4;
      i2 = 0;
      break;
      return getPaddingTop() - i2;
      return getHeight() - getPaddingBottom() - i1 - localaZ.bottomMargin - i2;
      int i8 = i6 - i5 - i1 - i7 - i4;
      if (i8 < localaZ.bottomMargin)
      {
        i9 = Math.max(0, i7 - (localaZ.bottomMargin - i8));
        continue;
      }
      i9 = i7;
    }
  }

  private int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = localMarginLayoutParams.leftMargin - paramArrayOfInt[0];
    int i2 = localMarginLayoutParams.rightMargin - paramArrayOfInt[1];
    int i3 = Math.max(0, i1) + Math.max(0, i2);
    paramArrayOfInt[0] = Math.max(0, -i1);
    paramArrayOfInt[1] = Math.max(0, -i2);
    paramView.measure(getChildMeasureSpec(paramInt1, paramInt2 + (i3 + (getPaddingLeft() + getPaddingRight())), localMarginLayoutParams.width), getChildMeasureSpec(paramInt3, paramInt4 + (getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin), localMarginLayoutParams.height));
    return i3 + paramView.getMeasuredWidth();
  }

  private int a(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    aZ localaZ = (aZ)paramView.getLayoutParams();
    int i1 = localaZ.leftMargin - paramArrayOfInt[0];
    int i2 = paramInt1 + Math.max(0, i1);
    paramArrayOfInt[0] = Math.max(0, -i1);
    int i3 = a(paramView, paramInt2);
    int i4 = paramView.getMeasuredWidth();
    paramView.layout(i2, i3, i2 + i4, i3 + paramView.getMeasuredHeight());
    return i2 + (i4 + localaZ.rightMargin);
  }

  private static aZ a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof aZ))
      return new aZ((aZ)paramLayoutParams);
    if ((paramLayoutParams instanceof b))
      return new aZ((b)paramLayoutParams);
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new aZ((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new aZ(paramLayoutParams);
  }

  private void a(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    aZ localaZ;
    if (localLayoutParams == null)
      localaZ = n();
    while (true)
    {
      localaZ.b = 1;
      addView(paramView, localaZ);
      return;
      if (!checkLayoutParams(localLayoutParams))
      {
        localaZ = a(localLayoutParams);
        continue;
      }
      localaZ = (aZ)localLayoutParams;
    }
  }

  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = getChildMeasureSpec(paramInt1, paramInt2 + (getPaddingLeft() + getPaddingRight() + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin), localMarginLayoutParams.width);
    int i2 = getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin, localMarginLayoutParams.height);
    int i3 = View.MeasureSpec.getMode(i2);
    if ((i3 != 1073741824) && (paramInt5 >= 0))
    {
      if (i3 != 0)
        paramInt5 = Math.min(View.MeasureSpec.getSize(i2), paramInt5);
      i2 = View.MeasureSpec.makeMeasureSpec(paramInt5, 1073741824);
    }
    paramView.measure(i1, i2);
  }

  private void a(List<View> paramList, int paramInt)
  {
    int i1 = 1;
    if (ViewCompat.getLayoutDirection(this) == i1);
    while (true)
    {
      int i2 = getChildCount();
      int i3 = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
      paramList.clear();
      int i4 = 0;
      if (i1 != 0)
      {
        for (int i5 = i2 - 1; i5 >= 0; i5--)
        {
          View localView2 = getChildAt(i5);
          aZ localaZ2 = (aZ)localView2.getLayoutParams();
          if ((localaZ2.b != 0) || (!b(localView2)) || (a(localaZ2.a) != i3))
            continue;
          paramList.add(localView2);
        }
        i1 = 0;
        continue;
      }
      while (i4 < i2)
      {
        View localView1 = getChildAt(i4);
        aZ localaZ1 = (aZ)localView1.getLayoutParams();
        if ((localaZ1.b == 0) && (b(localView1)) && (a(localaZ1.a) == i3))
          paramList.add(localView1);
        i4++;
      }
    }
  }

  private int b(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    aZ localaZ = (aZ)paramView.getLayoutParams();
    int i1 = localaZ.rightMargin - paramArrayOfInt[1];
    int i2 = paramInt1 - Math.max(0, i1);
    paramArrayOfInt[1] = Math.max(0, -i1);
    int i3 = a(paramView, paramInt2);
    int i4 = paramView.getMeasuredWidth();
    paramView.layout(i2 - i4, i3, i2, i3 + paramView.getMeasuredHeight());
    return i2 - (i4 + localaZ.leftMargin);
  }

  private boolean b(View paramView)
  {
    return (paramView != null) && (paramView.getParent() == this) && (paramView.getVisibility() != 8);
  }

  private static int c(View paramView)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    return MarginLayoutParamsCompat.getMarginStart(localMarginLayoutParams) + MarginLayoutParamsCompat.getMarginEnd(localMarginLayoutParams);
  }

  private static int d(View paramView)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    return localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin;
  }

  private void e(View paramView)
  {
    if ((((aZ)paramView.getLayoutParams()).b != 2) && (paramView != this.b))
      if (this.a == null)
        break label38;
    label38: for (int i1 = 8; ; i1 = 0)
    {
      paramView.setVisibility(i1);
      return;
    }
  }

  protected static aZ n()
  {
    return new aZ(-2, -2);
  }

  private void p()
  {
    if (this.f == null)
      this.f = new ImageView(getContext());
  }

  private void q()
  {
    if (this.b == null)
    {
      this.b = new ActionMenuView(getContext());
      this.b.setPopupTheme(this.k);
      this.b.setOnMenuItemClickListener(this.E);
      this.b.setMenuCallbacks(this.I, this.J);
      aZ localaZ = n();
      localaZ.a = (0x800005 | 0x70 & this.n);
      this.b.setLayoutParams(localaZ);
      a(this.b);
    }
  }

  private void r()
  {
    if (this.e == null)
    {
      this.e = new ImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
      aZ localaZ = n();
      localaZ.a = (0x800003 | 0x70 & this.n);
      this.e.setLayoutParams(localaZ);
    }
  }

  public final boolean a()
  {
    return (getVisibility() == 0) && (this.b != null) && (this.b.a());
  }

  public final boolean b()
  {
    return (this.b != null) && (this.b.g());
  }

  public final boolean c()
  {
    return (this.b != null) && (this.b.h());
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof aZ));
  }

  public final boolean d()
  {
    return (this.b != null) && (this.b.e());
  }

  public final boolean e()
  {
    return (this.b != null) && (this.b.f());
  }

  public final void f()
  {
    if (this.b != null)
      this.b.i();
  }

  public final boolean g()
  {
    return (this.H != null) && (this.H.a != null);
  }

  public final void h()
  {
    if (this.H == null);
    for (MenuItemImpl localMenuItemImpl = null; ; localMenuItemImpl = this.H.a)
    {
      if (localMenuItemImpl != null)
        localMenuItemImpl.collapseActionView();
      return;
    }
  }

  public final CharSequence i()
  {
    return this.v;
  }

  public final CharSequence j()
  {
    return this.w;
  }

  public final CharSequence k()
  {
    if (this.e != null)
      return this.e.getContentDescription();
    return null;
  }

  public final Drawable l()
  {
    if (this.e != null)
      return this.e.getDrawable();
    return null;
  }

  public final Menu m()
  {
    q();
    if (this.b.d() == null)
    {
      MenuBuilder localMenuBuilder = (MenuBuilder)this.b.c();
      if (this.H == null)
        this.H = new aY(this, 0);
      this.b.setExpandedActionViewsExclusive(true);
      localMenuBuilder.a(this.H, this.j);
    }
    return this.b.c();
  }

  public final D o()
  {
    if (this.F == null)
      this.F = new aa(this, true);
    return this.F;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.L);
  }

  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionMasked(paramMotionEvent);
    if (i1 == 9)
      this.A = false;
    if (!this.A)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i1 == 9) && (!bool))
        this.A = true;
    }
    if ((i1 == 10) || (i1 == 3))
      this.A = false;
    return true;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    int[] arrayOfInt;
    int i9;
    int i10;
    if (ViewCompat.getLayoutDirection(this) == 1)
    {
      i1 = 1;
      i2 = getWidth();
      i3 = getHeight();
      i4 = getPaddingLeft();
      i5 = getPaddingRight();
      i6 = getPaddingTop();
      i7 = getPaddingBottom();
      i8 = i2 - i5;
      arrayOfInt = this.C;
      arrayOfInt[1] = 0;
      arrayOfInt[0] = 0;
      i9 = ViewCompat.getMinimumHeight(this);
      if (!b(this.e))
        break label1770;
      if (i1 == 0)
        break label890;
      i8 = b(this.e, i8, arrayOfInt, i9);
      i10 = i4;
    }
    while (true)
    {
      label112: int i11;
      label144: label176: int i12;
      label284: int i13;
      int i14;
      if (b(this.i))
      {
        if (i1 != 0)
          i8 = b(this.i, i8, arrayOfInt, i9);
      }
      else
      {
        if (b(this.b))
        {
          if (i1 == 0)
            break label928;
          i10 = a(this.b, i10, arrayOfInt, i9);
        }
        arrayOfInt[0] = Math.max(0, this.t.c() - i10);
        arrayOfInt[1] = Math.max(0, this.t.d() - (i2 - i5 - i8));
        i11 = Math.max(i10, this.t.c());
        i12 = Math.min(i8, i2 - i5 - this.t.d());
        if (b(this.a))
        {
          if (i1 == 0)
            break label947;
          i12 = b(this.a, i12, arrayOfInt, i9);
        }
        if (!b(this.f))
          break label1759;
        if (i1 == 0)
          break label966;
        i13 = b(this.f, i12, arrayOfInt, i9);
        i14 = i11;
      }
      while (true)
      {
        label320: boolean bool1 = b(this.c);
        boolean bool2 = b(this.d);
        int i15 = 0;
        if (bool1)
        {
          aZ localaZ9 = (aZ)this.c.getLayoutParams();
          i15 = 0 + (localaZ9.topMargin + this.c.getMeasuredHeight() + localaZ9.bottomMargin);
        }
        aZ localaZ8;
        if (bool2)
          localaZ8 = (aZ)this.d.getLayoutParams();
        for (int i16 = i15 + (localaZ8.topMargin + this.d.getMeasuredHeight() + localaZ8.bottomMargin); ; i16 = i15)
        {
          TextView localTextView1;
          label445: TextView localTextView2;
          label456: aZ localaZ1;
          aZ localaZ2;
          int i17;
          label509: int i70;
          int i72;
          if ((bool1) || (bool2))
          {
            if (!bool1)
              break label993;
            localTextView1 = this.c;
            if (!bool2)
              break label1002;
            localTextView2 = this.d;
            localaZ1 = (aZ)localTextView1.getLayoutParams();
            localaZ2 = (aZ)localTextView2.getLayoutParams();
            if (((!bool1) || (this.c.getMeasuredWidth() <= 0)) && ((!bool2) || (this.d.getMeasuredWidth() <= 0)))
              break label1011;
            i17 = 1;
            switch (0x70 & this.u)
            {
            default:
              i70 = (i3 - i6 - i7 - i16) / 2;
              if (i70 >= localaZ1.topMargin + this.r)
                break;
              i72 = localaZ1.topMargin + this.r;
            case 48:
            case 80:
            }
          }
          while (true)
          {
            label586: int i18 = i6 + i72;
            label593: int i57;
            label609: int i59;
            int i69;
            if (i1 != 0)
              if (i17 != 0)
              {
                i57 = this.p;
                int i58 = i57 - arrayOfInt[1];
                i59 = i13 - Math.max(0, i58);
                arrayOfInt[1] = Math.max(0, -i58);
                if (!bool1)
                  break label1738;
                aZ localaZ7 = (aZ)this.c.getLayoutParams();
                int i67 = i59 - this.c.getMeasuredWidth();
                int i68 = i18 + this.c.getMeasuredHeight();
                this.c.layout(i67, i18, i59, i68);
                i69 = i67 - this.q;
                i18 = i68 + localaZ7.bottomMargin;
              }
            label928: label947: label966: label1738: for (int i60 = i69; ; i60 = i59)
            {
              aZ localaZ6;
              int i66;
              if (bool2)
              {
                localaZ6 = (aZ)this.d.getLayoutParams();
                int i63 = i18 + localaZ6.topMargin;
                int i64 = i59 - this.d.getMeasuredWidth();
                int i65 = i63 + this.d.getMeasuredHeight();
                this.d.layout(i64, i63, i59, i65);
                i66 = i59 - this.q;
              }
              for (int i61 = i66; ; i61 = i59)
              {
                if (i17 != 0);
                for (int i62 = Math.min(i60, i61); ; i62 = i59)
                {
                  i13 = i62;
                  a(this.B, 3);
                  int i24 = this.B.size();
                  int i25 = 0;
                  int i26 = i14;
                  label890: int i19;
                  label993: label1002: label1011: int i56;
                  label1134: int i21;
                  while (true)
                    if (i25 < i24)
                    {
                      i26 = a((View)this.B.get(i25), i26, arrayOfInt, i9);
                      i25++;
                      continue;
                      i1 = 0;
                      break;
                      i10 = a(this.e, i4, arrayOfInt, i9);
                      break label112;
                      i10 = a(this.i, i10, arrayOfInt, i9);
                      break label144;
                      i8 = b(this.b, i8, arrayOfInt, i9);
                      break label176;
                      i11 = a(this.a, i11, arrayOfInt, i9);
                      break label284;
                      int i73 = a(this.f, i11, arrayOfInt, i9);
                      i13 = i12;
                      i14 = i73;
                      break label320;
                      localTextView1 = this.d;
                      break label445;
                      localTextView2 = this.c;
                      break label456;
                      i17 = 0;
                      break label509;
                      i18 = getPaddingTop() + localaZ1.topMargin + this.r;
                      break label593;
                      int i71 = i3 - i7 - i16 - i70 - i6;
                      if (i71 >= localaZ1.bottomMargin + this.s)
                        break label1745;
                      i72 = Math.max(0, i70 - (localaZ2.bottomMargin + this.s - i71));
                      break label586;
                      i18 = i3 - i7 - localaZ2.bottomMargin - this.s - i16;
                      break label593;
                      i57 = 0;
                      break label609;
                      if (i17 != 0)
                      {
                        i19 = this.p;
                        int i20 = i19 - arrayOfInt[0];
                        i14 += Math.max(0, i20);
                        arrayOfInt[0] = Math.max(0, -i20);
                        if (!bool1)
                          break label1713;
                        aZ localaZ5 = (aZ)this.c.getLayoutParams();
                        int i53 = i14 + this.c.getMeasuredWidth();
                        int i54 = i18 + this.c.getMeasuredHeight();
                        this.c.layout(i14, i18, i53, i54);
                        int i55 = i53 + this.q;
                        i56 = i54 + localaZ5.bottomMargin;
                        i21 = i55;
                      }
                    }
                  for (int i22 = i56; ; i22 = i18)
                  {
                    aZ localaZ4;
                    int i52;
                    if (bool2)
                    {
                      localaZ4 = (aZ)this.d.getLayoutParams();
                      int i49 = i22 + localaZ4.topMargin;
                      int i50 = i14 + this.d.getMeasuredWidth();
                      int i51 = i49 + this.d.getMeasuredHeight();
                      this.d.layout(i14, i49, i50, i51);
                      i52 = i50 + this.q;
                    }
                    for (int i23 = i52; ; i23 = i14)
                    {
                      if (i17 == 0)
                        break label1711;
                      i14 = Math.max(i21, i23);
                      break;
                      i19 = 0;
                      break label1134;
                      a(this.B, 5);
                      int i27 = this.B.size();
                      int i28 = 0;
                      int i48;
                      for (int i29 = i13; i28 < i27; i29 = i48)
                      {
                        i48 = b((View)this.B.get(i28), i29, arrayOfInt, i9);
                        i28++;
                      }
                      a(this.B, 1);
                      ArrayList localArrayList = this.B;
                      int i30 = arrayOfInt[0];
                      int i31 = arrayOfInt[1];
                      int i32 = localArrayList.size();
                      int i33 = i30;
                      int i34 = i31;
                      int i35 = 0;
                      int i47;
                      for (int i36 = 0; i35 < i32; i36 = i47)
                      {
                        View localView = (View)localArrayList.get(i35);
                        aZ localaZ3 = (aZ)localView.getLayoutParams();
                        int i43 = localaZ3.leftMargin - i33;
                        int i44 = localaZ3.rightMargin - i34;
                        int i45 = Math.max(0, i43);
                        int i46 = Math.max(0, i44);
                        i33 = Math.max(0, -i43);
                        i34 = Math.max(0, -i44);
                        i47 = i36 + (i46 + (i45 + localView.getMeasuredWidth()));
                        i35++;
                      }
                      int i37 = i4 + (i2 - i4 - i5) / 2 - i36 / 2;
                      int i38 = i37 + i36;
                      if (i37 < i26)
                        i37 = i26;
                      while (true)
                      {
                        int i39 = this.B.size();
                        int i40 = 0;
                        int i42;
                        for (int i41 = i37; i40 < i39; i41 = i42)
                        {
                          i42 = a((View)this.B.get(i40), i41, arrayOfInt, i9);
                          i40++;
                        }
                        if (i38 <= i29)
                          continue;
                        i37 -= i38 - i29;
                      }
                      this.B.clear();
                      return;
                    }
                    break;
                    i21 = i14;
                  }
                }
              }
            }
            label1711: label1713: label1745: i72 = i70;
          }
        }
        label1759: i13 = i12;
        i14 = i11;
      }
      label1770: i10 = i4;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = this.C;
    int i1;
    int i2;
    int i3;
    int i31;
    int i4;
    if (ae.a(this))
    {
      i1 = 0;
      i2 = 1;
      if (!b(this.e))
        break label969;
      a(this.e, paramInt1, 0, paramInt2, 0, this.o);
      i3 = this.e.getMeasuredWidth() + c(this.e);
      i31 = Math.max(0, this.e.getMeasuredHeight() + d(this.e));
      i4 = ae.a(0, ViewCompat.getMeasuredState(this.e));
    }
    for (int i5 = i31; ; i5 = 0)
    {
      if (b(this.i))
      {
        a(this.i, paramInt1, 0, paramInt2, 0, this.o);
        i3 = this.i.getMeasuredWidth() + c(this.i);
        i5 = Math.max(i5, this.i.getMeasuredHeight() + d(this.i));
        i4 = ae.a(i4, ViewCompat.getMeasuredState(this.i));
      }
      int i6 = this.t.e();
      int i7 = 0 + Math.max(i6, i3);
      arrayOfInt[i2] = Math.max(0, i6 - i3);
      boolean bool1 = b(this.b);
      int i8 = 0;
      if (bool1)
      {
        a(this.b, paramInt1, i7, paramInt2, 0, this.o);
        i8 = this.b.getMeasuredWidth() + c(this.b);
        i5 = Math.max(i5, this.b.getMeasuredHeight() + d(this.b));
        i4 = ae.a(i4, ViewCompat.getMeasuredState(this.b));
      }
      int i9 = this.t.f();
      int i10 = i7 + Math.max(i9, i8);
      arrayOfInt[i1] = Math.max(0, i9 - i8);
      if (b(this.a))
      {
        i10 += a(this.a, paramInt1, i10, paramInt2, 0, arrayOfInt);
        i5 = Math.max(i5, this.a.getMeasuredHeight() + d(this.a));
        i4 = ae.a(i4, ViewCompat.getMeasuredState(this.a));
      }
      if (b(this.f))
      {
        i10 += a(this.f, paramInt1, i10, paramInt2, 0, arrayOfInt);
        i5 = Math.max(i5, this.f.getMeasuredHeight() + d(this.f));
        i4 = ae.a(i4, ViewCompat.getMeasuredState(this.f));
      }
      int i11 = getChildCount();
      int i12 = 0;
      int i13 = i5;
      int i14 = i4;
      label484: int i30;
      int i28;
      if (i12 < i11)
      {
        View localView2 = getChildAt(i12);
        if ((((aZ)localView2.getLayoutParams()).b != 0) || (!b(localView2)))
          break label958;
        i10 += a(localView2, paramInt1, i10, paramInt2, 0, arrayOfInt);
        i30 = Math.max(i13, localView2.getMeasuredHeight() + d(localView2));
        i28 = ae.a(i14, ViewCompat.getMeasuredState(localView2));
      }
      for (int i29 = i30; ; i29 = i13)
      {
        i12++;
        i14 = i28;
        i13 = i29;
        break label484;
        i1 = 1;
        i2 = 0;
        break;
        int i15 = this.r + this.s;
        int i16 = this.p + this.q;
        boolean bool2 = b(this.c);
        int i17 = 0;
        int i18 = 0;
        if (bool2)
        {
          a(this.c, paramInt1, i10 + i16, paramInt2, i15, arrayOfInt);
          i18 = this.c.getMeasuredWidth() + c(this.c);
          i17 = this.c.getMeasuredHeight() + d(this.c);
          i14 = ae.a(i14, ViewCompat.getMeasuredState(this.c));
        }
        if (b(this.d))
        {
          i18 = Math.max(i18, a(this.d, paramInt1, i10 + i16, paramInt2, i15 + i17, arrayOfInt));
          i17 += this.d.getMeasuredHeight() + d(this.d);
          i14 = ae.a(i14, ViewCompat.getMeasuredState(this.d));
        }
        int i19 = i18 + i10;
        int i20 = Math.max(i13, i17);
        int i21 = i19 + (getPaddingLeft() + getPaddingRight());
        int i22 = i20 + (getPaddingTop() + getPaddingBottom());
        int i23 = ViewCompat.resolveSizeAndState(Math.max(i21, getSuggestedMinimumWidth()), paramInt1, 0xFF000000 & i14);
        int i24 = ViewCompat.resolveSizeAndState(Math.max(i22, getSuggestedMinimumHeight()), paramInt2, i14 << 16);
        int i27;
        if (!this.K)
          i27 = 0;
        while (true)
        {
          if (i27 != 0)
            i24 = 0;
          setMeasuredDimension(i23, i24);
          return;
          int i25 = getChildCount();
          for (int i26 = 0; ; i26++)
          {
            if (i26 >= i25)
              break label952;
            View localView1 = getChildAt(i26);
            if ((!b(localView1)) || (localView1.getMeasuredWidth() <= 0) || (localView1.getMeasuredHeight() <= 0))
              continue;
            i27 = 0;
            break;
          }
          label952: i27 = 1;
        }
        label958: i28 = i14;
      }
      label969: i3 = 0;
      i4 = 0;
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    Toolbar.SavedState localSavedState = (Toolbar.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (this.b != null);
    for (MenuBuilder localMenuBuilder = this.b.d(); ; localMenuBuilder = null)
    {
      if ((localSavedState.a != 0) && (this.H != null) && (localMenuBuilder != null))
      {
        MenuItem localMenuItem = localMenuBuilder.findItem(localSavedState.a);
        if (localMenuItem != null)
          MenuItemCompat.expandActionView(localMenuItem);
      }
      if (localSavedState.b)
      {
        removeCallbacks(this.L);
        post(this.L);
      }
      return;
    }
  }

  public void onRtlPropertiesChanged(int paramInt)
  {
    int i1 = 1;
    if (Build.VERSION.SDK_INT >= 17)
      super.onRtlPropertiesChanged(paramInt);
    o localo = this.t;
    if (paramInt == i1);
    while (true)
    {
      localo.a(i1);
      return;
      i1 = 0;
    }
  }

  protected Parcelable onSaveInstanceState()
  {
    Toolbar.SavedState localSavedState = new Toolbar.SavedState(super.onSaveInstanceState());
    if ((this.H != null) && (this.H.a != null))
      localSavedState.a = this.H.a.getItemId();
    localSavedState.b = b();
    return localSavedState;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionMasked(paramMotionEvent);
    if (i1 == 0)
      this.z = false;
    if (!this.z)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i1 == 0) && (!bool))
        this.z = true;
    }
    if ((i1 == 1) || (i1 == 3))
      this.z = false;
    return true;
  }

  public void setCollapsible(boolean paramBoolean)
  {
    this.K = paramBoolean;
    requestLayout();
  }

  public void setContentInsetsAbsolute(int paramInt1, int paramInt2)
  {
    this.t.b(paramInt1, paramInt2);
  }

  public void setContentInsetsRelative(int paramInt1, int paramInt2)
  {
    this.t.a(paramInt1, paramInt2);
  }

  public void setLogo(int paramInt)
  {
    setLogo(this.M.a(paramInt));
  }

  public void setLogo(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      p();
      if (this.f.getParent() == null)
      {
        a(this.f);
        e(this.f);
      }
    }
    while (true)
    {
      if (this.f != null)
        this.f.setImageDrawable(paramDrawable);
      return;
      if ((this.f == null) || (this.f.getParent() == null))
        continue;
      removeView(this.f);
    }
  }

  public void setLogoDescription(int paramInt)
  {
    setLogoDescription(getContext().getText(paramInt));
  }

  public void setLogoDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
      p();
    if (this.f != null)
      this.f.setContentDescription(paramCharSequence);
  }

  public void setMenu(MenuBuilder paramMenuBuilder, ActionMenuPresenter paramActionMenuPresenter)
  {
    if ((paramMenuBuilder == null) && (this.b == null));
    MenuBuilder localMenuBuilder;
    do
    {
      return;
      q();
      localMenuBuilder = this.b.d();
    }
    while (localMenuBuilder == paramMenuBuilder);
    if (localMenuBuilder != null)
    {
      localMenuBuilder.b(this.G);
      localMenuBuilder.b(this.H);
    }
    if (this.H == null)
      this.H = new aY(this, 0);
    paramActionMenuPresenter.c(true);
    if (paramMenuBuilder != null)
    {
      paramMenuBuilder.a(paramActionMenuPresenter, this.j);
      paramMenuBuilder.a(this.H, this.j);
    }
    while (true)
    {
      this.b.setPopupTheme(this.k);
      this.b.setPresenter(paramActionMenuPresenter);
      this.G = paramActionMenuPresenter;
      return;
      paramActionMenuPresenter.a(this.j, null);
      this.H.a(this.j, null);
      paramActionMenuPresenter.a(true);
      this.H.a(true);
    }
  }

  public void setMenuCallbacks(v paramv, h paramh)
  {
    this.I = paramv;
    this.J = paramh;
  }

  public void setNavigationContentDescription(int paramInt)
  {
    if (paramInt != 0);
    for (CharSequence localCharSequence = getContext().getText(paramInt); ; localCharSequence = null)
    {
      setNavigationContentDescription(localCharSequence);
      return;
    }
  }

  public void setNavigationContentDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
      r();
    if (this.e != null)
      this.e.setContentDescription(paramCharSequence);
  }

  public void setNavigationIcon(int paramInt)
  {
    setNavigationIcon(this.M.a(paramInt));
  }

  public void setNavigationIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      r();
      if (this.e.getParent() == null)
      {
        a(this.e);
        e(this.e);
      }
    }
    while (true)
    {
      if (this.e != null)
        this.e.setImageDrawable(paramDrawable);
      return;
      if ((this.e == null) || (this.e.getParent() == null))
        continue;
      removeView(this.e);
    }
  }

  public void setNavigationOnClickListener(View.OnClickListener paramOnClickListener)
  {
    r();
    this.e.setOnClickListener(paramOnClickListener);
  }

  public void setOnMenuItemClickListener$486aeec7(K paramK)
  {
    this.D = paramK;
  }

  public void setPopupTheme(int paramInt)
  {
    if (this.k != paramInt)
    {
      this.k = paramInt;
      if (paramInt == 0)
        this.j = getContext();
    }
    else
    {
      return;
    }
    this.j = new ContextThemeWrapper(getContext(), paramInt);
  }

  public void setSubtitle(int paramInt)
  {
    setSubtitle(getContext().getText(paramInt));
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.d == null)
      {
        Context localContext = getContext();
        this.d = new TextView(localContext);
        this.d.setSingleLine();
        this.d.setEllipsize(TextUtils.TruncateAt.END);
        if (this.m != 0)
          this.d.setTextAppearance(localContext, this.m);
        if (this.y != 0)
          this.d.setTextColor(this.y);
      }
      if (this.d.getParent() == null)
      {
        a(this.d);
        e(this.d);
      }
    }
    while (true)
    {
      if (this.d != null)
        this.d.setText(paramCharSequence);
      this.w = paramCharSequence;
      return;
      if ((this.d == null) || (this.d.getParent() == null))
        continue;
      removeView(this.d);
    }
  }

  public void setSubtitleTextAppearance(Context paramContext, int paramInt)
  {
    this.m = paramInt;
    if (this.d != null)
      this.d.setTextAppearance(paramContext, paramInt);
  }

  public void setSubtitleTextColor(int paramInt)
  {
    this.y = paramInt;
    if (this.d != null)
      this.d.setTextColor(paramInt);
  }

  public void setTitle(int paramInt)
  {
    setTitle(getContext().getText(paramInt));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.c == null)
      {
        Context localContext = getContext();
        this.c = new TextView(localContext);
        this.c.setSingleLine();
        this.c.setEllipsize(TextUtils.TruncateAt.END);
        if (this.l != 0)
          this.c.setTextAppearance(localContext, this.l);
        if (this.x != 0)
          this.c.setTextColor(this.x);
      }
      if (this.c.getParent() == null)
      {
        a(this.c);
        e(this.c);
      }
    }
    while (true)
    {
      if (this.c != null)
        this.c.setText(paramCharSequence);
      this.v = paramCharSequence;
      return;
      if ((this.c == null) || (this.c.getParent() == null))
        continue;
      removeView(this.c);
    }
  }

  public void setTitleTextAppearance(Context paramContext, int paramInt)
  {
    this.l = paramInt;
    if (this.c != null)
      this.c.setTextAppearance(paramContext, paramInt);
  }

  public void setTitleTextColor(int paramInt)
  {
    this.x = paramInt;
    if (this.c != null)
      this.c.setTextColor(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.Toolbar
 * JD-Core Version:    0.6.0
 */