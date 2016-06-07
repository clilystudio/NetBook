package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.ViewTreeObserver;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout extends ViewGroup
  implements NestedScrollingParent
{
  private static String a = CoordinatorLayout.class.getPackage().getName();
  private static Class<?>[] b;
  private static ThreadLocal<Map<String, Constructor<com.xiaomi.mistatistic.sdk.a.r>>> c;
  private static Comparator<View> e;
  private static x f;
  private Comparator<View> d = new p(this);
  private final List<View> g = new ArrayList();
  private final List<View> h = new ArrayList();
  private final List<View> i = new ArrayList();
  private final Rect j = new Rect();
  private final Rect k = new Rect();
  private final Rect l = new Rect();
  private final int[] m = new int[2];
  private boolean n;
  private int[] o;
  private View p;
  private View q;
  private u r;
  private boolean s;
  private WindowInsetsCompat t;
  private boolean u;
  private Drawable v;
  private ViewGroup.OnHierarchyChangeListener w;
  private final NestedScrollingParentHelper x = new NestedScrollingParentHelper(this);

  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      e = new w();
      f = new x();
    }
    while (true)
    {
      b = new Class[] { Context.class, AttributeSet.class };
      c = new ThreadLocal();
      return;
      e = null;
      f = null;
    }
  }

  public CoordinatorLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoordinatorLayout, paramInt, R.style.Widget_Design_CoordinatorLayout);
    int i2 = localTypedArray.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
    if (i2 != 0)
    {
      Resources localResources = paramContext.getResources();
      this.o = localResources.getIntArray(i2);
      float f1 = localResources.getDisplayMetrics().density;
      int i3 = this.o.length;
      while (i1 < i3)
      {
        int[] arrayOfInt = this.o;
        arrayOfInt[i1] = (int)(f1 * arrayOfInt[i1]);
        i1++;
      }
    }
    this.v = localTypedArray.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
    localTypedArray.recycle();
    if (f != null)
      f.a(this, new q(this));
    super.setOnHierarchyChangeListener(new s(this));
  }

  private int a(int paramInt)
  {
    if (this.o == null)
    {
      Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + paramInt);
      return 0;
    }
    if ((paramInt < 0) || (paramInt >= this.o.length))
    {
      Log.e("CoordinatorLayout", "Keyline index " + paramInt + " out of range for " + this);
      return 0;
    }
    return this.o[paramInt];
  }

  static com.xiaomi.mistatistic.sdk.a.r a(Context paramContext, AttributeSet paramAttributeSet, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    if (paramString.startsWith("."))
      paramString = paramContext.getPackageName() + paramString;
    while (true)
    {
      Map localMap;
      try
      {
        localMap = (Map)c.get();
        if (localMap == null)
        {
          HashMap localHashMap = new HashMap();
          c.set(localHashMap);
          localObject = localHashMap;
          Constructor localConstructor = (Constructor)((Map)localObject).get(paramString);
          if (localConstructor != null)
            continue;
          localConstructor = Class.forName(paramString, true, paramContext.getClassLoader()).getConstructor(b);
          ((Map)localObject).put(paramString, localConstructor);
          com.xiaomi.mistatistic.sdk.a.r localr = (com.xiaomi.mistatistic.sdk.a.r)localConstructor.newInstance(new Object[] { paramContext, paramAttributeSet });
          return localr;
          if (paramString.indexOf('.') >= 0)
            continue;
          paramString = a + '.' + paramString;
          continue;
        }
      }
      catch (Exception localException)
      {
        throw new RuntimeException("Could not inflate Behavior subclass " + paramString, localException);
      }
      Object localObject = localMap;
    }
  }

  private void a()
  {
    int i1 = 0;
    if (this.p != null)
    {
      com.xiaomi.mistatistic.sdk.a.r localr = ((t)this.p.getLayoutParams()).a;
      if (localr != null)
      {
        long l1 = SystemClock.uptimeMillis();
        MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        localr.a(localMotionEvent);
        localMotionEvent.recycle();
      }
      this.p = null;
    }
    int i2 = getChildCount();
    while (i1 < i2)
    {
      ((t)getChildAt(i1).getLayoutParams()).b();
      i1++;
    }
  }

  private void a(View paramView, int paramInt, Rect paramRect1, Rect paramRect2)
  {
    t localt = (t)paramView.getLayoutParams();
    int i1 = localt.c;
    if (i1 == 0)
      i1 = 17;
    int i2 = GravityCompat.getAbsoluteGravity(i1, paramInt);
    int i3 = GravityCompat.getAbsoluteGravity(b(localt.d), paramInt);
    int i4 = i2 & 0x7;
    int i5 = i2 & 0x70;
    int i6 = i3 & 0x7;
    int i7 = i3 & 0x70;
    int i8 = paramView.getMeasuredWidth();
    int i9 = paramView.getMeasuredHeight();
    int i10;
    int i11;
    switch (i6)
    {
    default:
      i10 = paramRect1.left;
      switch (i7)
      {
      default:
        i11 = paramRect1.top;
        switch (i4)
        {
        default:
          i10 -= i8;
        case 5:
          label158: switch (i5)
          {
          default:
            label195: i11 -= i9;
          case 80:
          case 16:
          }
        case 1:
        }
      case 80:
      case 16:
      }
    case 5:
    case 1:
    }
    while (true)
    {
      int i12 = getWidth();
      int i13 = getHeight();
      int i14 = Math.max(getPaddingLeft() + localt.leftMargin, Math.min(i10, i12 - getPaddingRight() - i8 - localt.rightMargin));
      int i15 = Math.max(getPaddingTop() + localt.topMargin, Math.min(i11, i13 - getPaddingBottom() - i9 - localt.bottomMargin));
      paramRect2.set(i14, i15, i14 + i8, i15 + i9);
      return;
      i10 = paramRect1.right;
      break;
      i10 = paramRect1.left + paramRect1.width() / 2;
      break;
      i11 = paramRect1.bottom;
      break label158;
      i11 = paramRect1.top + paramRect1.height() / 2;
      break label158;
      i10 -= i8 / 2;
      break label195;
      i11 -= i9 / 2;
    }
  }

  private void a(View paramView, boolean paramBoolean, Rect paramRect)
  {
    if ((paramView.isLayoutRequested()) || (paramView.getVisibility() == 8))
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    if (paramBoolean)
    {
      aI.a(this, paramView, paramRect);
      return;
    }
    paramRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }

  private boolean a(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionMasked(paramMotionEvent);
    List localList = this.h;
    localList.clear();
    boolean bool1 = isChildrenDrawingOrderEnabled();
    int i2 = getChildCount();
    int i3 = i2 - 1;
    if (i3 >= 0)
    {
      if (bool1);
      for (int i8 = getChildDrawingOrder(i2, i3); ; i8 = i3)
      {
        localList.add(getChildAt(i8));
        i3--;
        break;
      }
    }
    if (e != null)
      Collections.sort(localList, e);
    int i4 = localList.size();
    int i5 = 0;
    int i6 = 0;
    boolean bool2 = false;
    View localView;
    t localt;
    com.xiaomi.mistatistic.sdk.a.r localr;
    int i7;
    if (i5 < i4)
    {
      localView = (View)localList.get(i5);
      localt = (t)localView.getLayoutParams();
      localr = localt.a;
      if (((bool2) || (i6 != 0)) && (i1 != 0))
      {
        if (localr == null)
          break label277;
        localr.a(this, localView, null);
        i7 = i6;
      }
    }
    while (true)
    {
      i5++;
      i6 = i7;
      break;
      if ((!bool2) && (localr != null))
      {
        bool2 = localr.a(this, localView, paramMotionEvent);
        if (bool2)
          this.p = localView;
      }
      boolean bool3 = localt.a();
      boolean bool4 = localt.a(this, localView);
      if ((bool4) && (!bool3));
      for (i7 = 1; (bool4) && (i7 == 0); i7 = 0)
      {
        localList.clear();
        return bool2;
      }
      continue;
      label277: i7 = i6;
    }
  }

  private static int b(int paramInt)
  {
    if (paramInt == 0)
      paramInt = 8388659;
    return paramInt;
  }

  private static int c(int paramInt)
  {
    if (paramInt == 0)
      paramInt = 8388661;
    return paramInt;
  }

  private static t c(View paramView)
  {
    t localt = (t)paramView.getLayoutParams();
    r localr2;
    if (!localt.b)
    {
      Class localClass = paramView.getClass();
      r localr1 = null;
      while (localClass != null)
      {
        localr1 = (r)localClass.getAnnotation(r.class);
        if (localr1 != null)
          break;
        localClass = localClass.getSuperclass();
      }
      localr2 = localr1;
      if (localr2 == null);
    }
    try
    {
      localt.a((com.xiaomi.mistatistic.sdk.a.r)localr2.a().newInstance());
      localt.b = true;
      return localt;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("CoordinatorLayout", "Default behavior class " + localr2.a().getName() + " could not be instantiated. Did you forget a default constructor?", localException);
    }
  }

  public final void a(View paramView)
  {
    int i1 = this.g.size();
    int i2 = 0;
    int i3 = 0;
    if (i2 < i1)
    {
      View localView = (View)this.g.get(i2);
      if (localView == paramView);
      for (int i4 = 1; ; i4 = i3)
      {
        i2++;
        i3 = i4;
        break;
        if (i3 == 0)
          continue;
        t localt = (t)localView.getLayoutParams();
        com.xiaomi.mistatistic.sdk.a.r localr = localt.a;
        if ((localr == null) || (!localt.a(this, localView, paramView)))
          continue;
        localr.c(this, localView, paramView);
      }
    }
  }

  public final void a(View paramView, int paramInt)
  {
    t localt1 = (t)paramView.getLayoutParams();
    if ((localt1.g == null) && (localt1.f != -1));
    for (int i1 = 1; i1 != 0; i1 = 0)
      throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    if (localt1.g != null)
    {
      View localView = localt1.g;
      paramView.getLayoutParams();
      Rect localRect3 = this.j;
      Rect localRect4 = this.k;
      aI.a(this, localView, localRect3);
      a(paramView, paramInt, localRect3, localRect4);
      paramView.layout(localRect4.left, localRect4.top, localRect4.right, localRect4.bottom);
      return;
    }
    if (localt1.e >= 0)
    {
      int i2 = localt1.e;
      t localt3 = (t)paramView.getLayoutParams();
      int i3 = GravityCompat.getAbsoluteGravity(c(localt3.c), paramInt);
      int i4 = i3 & 0x7;
      int i5 = i3 & 0x70;
      int i6 = getWidth();
      int i7 = getHeight();
      int i8 = paramView.getMeasuredWidth();
      int i9 = paramView.getMeasuredHeight();
      if (paramInt == 1)
        i2 = i6 - i2;
      int i10 = a(i2) - i8;
      int i11;
      int i12;
      switch (i4)
      {
      default:
        i11 = i10;
        switch (i5)
        {
        default:
          i12 = 0;
        case 80:
        case 16:
        }
      case 5:
      case 1:
      }
      while (true)
      {
        int i13 = Math.max(getPaddingLeft() + localt3.leftMargin, Math.min(i11, i6 - getPaddingRight() - i8 - localt3.rightMargin));
        int i14 = Math.max(getPaddingTop() + localt3.topMargin, Math.min(i12, i7 - getPaddingBottom() - i9 - localt3.bottomMargin));
        paramView.layout(i13, i14, i13 + i8, i14 + i9);
        return;
        i11 = i10 + i8;
        break;
        i11 = i10 + i8 / 2;
        break;
        i12 = i9 + 0;
        continue;
        i12 = 0 + i9 / 2;
      }
    }
    t localt2 = (t)paramView.getLayoutParams();
    Rect localRect1 = this.j;
    localRect1.set(getPaddingLeft() + localt2.leftMargin, getPaddingTop() + localt2.topMargin, getWidth() - getPaddingRight() - localt2.rightMargin, getHeight() - getPaddingBottom() - localt2.bottomMargin);
    if ((this.t != null) && (ViewCompat.getFitsSystemWindows(this)) && (!ViewCompat.getFitsSystemWindows(paramView)))
    {
      localRect1.left += this.t.getSystemWindowInsetLeft();
      localRect1.top += this.t.getSystemWindowInsetTop();
      localRect1.right -= this.t.getSystemWindowInsetRight();
      localRect1.bottom -= this.t.getSystemWindowInsetBottom();
    }
    Rect localRect2 = this.k;
    GravityCompat.apply(b(localt2.c), paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), localRect1, localRect2, paramInt);
    paramView.layout(localRect2.left, localRect2.top, localRect2.right, localRect2.bottom);
  }

  final void a(boolean paramBoolean)
  {
    int i1 = ViewCompat.getLayoutDirection(this);
    int i2 = this.g.size();
    for (int i3 = 0; i3 < i2; i3++)
    {
      View localView1 = (View)this.g.get(i3);
      t localt1 = (t)localView1.getLayoutParams();
      for (int i4 = 0; i4 < i3; i4++)
      {
        View localView3 = (View)this.g.get(i4);
        if (localt1.h != localView3)
          continue;
        t localt3 = (t)localView1.getLayoutParams();
        if (localt3.g == null)
          continue;
        Rect localRect3 = this.j;
        Rect localRect4 = this.k;
        Rect localRect5 = this.l;
        aI.a(this, localt3.g, localRect3);
        a(localView1, false, localRect4);
        a(localView1, i1, localRect3, localRect5);
        int i6 = localRect5.left - localRect4.left;
        int i7 = localRect5.top - localRect4.top;
        if (i6 != 0)
          localView1.offsetLeftAndRight(i6);
        if (i7 != 0)
          localView1.offsetTopAndBottom(i7);
        if ((i6 == 0) && (i7 == 0))
          continue;
        com.xiaomi.mistatistic.sdk.a.r localr2 = localt3.a;
        if (localr2 == null)
          continue;
        localr2.c(this, localView1, localt3.g);
      }
      Rect localRect1 = this.j;
      Rect localRect2 = this.k;
      localRect1.set(((t)localView1.getLayoutParams()).i);
      a(localView1, true, localRect2);
      if (localRect1.equals(localRect2))
        continue;
      ((t)localView1.getLayoutParams()).i.set(localRect2);
      int i5 = i3 + 1;
      if (i5 >= i2)
        continue;
      View localView2 = (View)this.g.get(i5);
      t localt2 = (t)localView2.getLayoutParams();
      com.xiaomi.mistatistic.sdk.a.r localr1 = localt2.a;
      if ((localr1 != null) && (localr1.d(this, localView2, localView1)))
      {
        if ((paramBoolean) || (!localt2.e()))
          break label394;
        localt2.f();
      }
      while (true)
      {
        i5++;
        break;
        label394: boolean bool = localr1.c(this, localView2, localView1);
        if (!paramBoolean)
          continue;
        localt2.b(bool);
      }
    }
  }

  public final boolean a(View paramView, int paramInt1, int paramInt2)
  {
    Rect localRect = this.j;
    aI.a(this, paramView, localRect);
    return localRect.contains(paramInt1, paramInt2);
  }

  public final boolean a(View paramView1, View paramView2)
  {
    int i1 = paramView1.getVisibility();
    int i2 = 0;
    Rect localRect1;
    boolean bool1;
    Rect localRect2;
    if (i1 == 0)
    {
      int i3 = paramView2.getVisibility();
      i2 = 0;
      if (i3 == 0)
      {
        localRect1 = this.j;
        if (paramView1.getParent() == this)
          break label180;
        bool1 = true;
        a(paramView1, bool1, localRect1);
        localRect2 = this.k;
        if (paramView2.getParent() == this)
          break label186;
      }
    }
    label180: label186: for (boolean bool2 = true; ; bool2 = false)
    {
      a(paramView2, bool2, localRect2);
      int i4 = localRect1.left;
      int i5 = localRect2.right;
      i2 = 0;
      if (i4 <= i5)
      {
        int i6 = localRect1.top;
        int i7 = localRect2.bottom;
        i2 = 0;
        if (i6 <= i7)
        {
          int i8 = localRect1.right;
          int i9 = localRect2.left;
          i2 = 0;
          if (i8 >= i9)
          {
            int i10 = localRect1.bottom;
            int i11 = localRect2.top;
            i2 = 0;
            if (i10 >= i11)
              i2 = 1;
          }
        }
      }
      return i2;
      bool1 = false;
      break;
    }
  }

  public final List<View> b(View paramView)
  {
    t localt = (t)paramView.getLayoutParams();
    List localList = this.i;
    localList.clear();
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      View localView = getChildAt(i2);
      if ((localView == paramView) || (!localt.a(this, paramView, localView)))
        continue;
      localList.add(localView);
    }
    return localList;
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof t)) && (super.checkLayoutParams(paramLayoutParams));
  }

  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    paramView.getLayoutParams();
    return super.drawChild(paramCanvas, paramView, paramLong);
  }

  public int getNestedScrollAxes()
  {
    return this.x.getNestedScrollAxes();
  }

  protected int getSuggestedMinimumHeight()
  {
    return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
  }

  protected int getSuggestedMinimumWidth()
  {
    return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
  }

  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a();
    if (this.s)
    {
      if (this.r == null)
        this.r = new u(this);
      getViewTreeObserver().addOnPreDrawListener(this.r);
    }
    this.n = true;
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a();
    if ((this.s) && (this.r != null))
      getViewTreeObserver().removeOnPreDrawListener(this.r);
    if (this.q != null)
      onStopNestedScroll(this.q);
    this.n = false;
  }

  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.u) && (this.v != null))
      if (this.t == null)
        break label61;
    label61: for (int i1 = this.t.getSystemWindowInsetTop(); ; i1 = 0)
    {
      if (i1 > 0)
      {
        this.v.setBounds(0, 0, getWidth(), i1);
        this.v.draw(paramCanvas);
      }
      return;
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionMasked(paramMotionEvent);
    if (i1 == 0)
      a();
    boolean bool = a(paramMotionEvent);
    if ((i1 == 1) || (i1 == 3))
      a();
    return bool;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = ViewCompat.getLayoutDirection(this);
    int i2 = this.g.size();
    for (int i3 = 0; i3 < i2; i3++)
    {
      View localView = (View)this.g.get(i3);
      com.xiaomi.mistatistic.sdk.a.r localr = ((t)localView.getLayoutParams()).a;
      if ((localr != null) && (localr.a(this, localView, i1)))
        continue;
      a(localView, i1);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = getChildCount();
    if (this.g.size() != i1);
    for (int i2 = 1; ; i2 = 0)
      for (int i3 = 0; i3 < i1; i3++)
      {
        View localView4 = getChildAt(i3);
        t localt3 = c(localView4);
        if (i2 == 0);
        localt3.b(this, localView4);
      }
    if (i2 != 0)
    {
      this.g.clear();
      for (int i41 = 0; i41 < i1; i41++)
        this.g.add(getChildAt(i41));
      Collections.sort(this.g, this.d);
    }
    int i4 = getChildCount();
    int i5 = 0;
    View localView2;
    t localt2;
    int i40;
    if (i5 < i4)
    {
      localView2 = getChildAt(i5);
      localt2 = (t)localView2.getLayoutParams();
      if (localt2.g != null)
      {
        i40 = 1;
        label172: if (i40 == 0)
          break label718;
      }
    }
    for (int i6 = 1; ; i6 = 0)
    {
      label236: int i7;
      int i12;
      label275: int i17;
      int i18;
      int i21;
      label342: int i23;
      int i24;
      int i25;
      int i26;
      label367: View localView1;
      t localt1;
      int i28;
      int i36;
      int i37;
      label488: int i30;
      int i29;
      if (i6 != this.s)
      {
        if (i6 != 0)
        {
          if (this.n)
          {
            if (this.r == null)
              this.r = new u(this);
            getViewTreeObserver().addOnPreDrawListener(this.r);
          }
          this.s = true;
        }
      }
      else
      {
        i7 = getPaddingLeft();
        int i8 = getPaddingTop();
        int i9 = getPaddingRight();
        int i10 = getPaddingBottom();
        int i11 = ViewCompat.getLayoutDirection(this);
        if (i11 != 1)
          break label757;
        i12 = 1;
        int i13 = View.MeasureSpec.getMode(paramInt1);
        int i14 = View.MeasureSpec.getSize(paramInt1);
        int i15 = View.MeasureSpec.getMode(paramInt2);
        int i16 = View.MeasureSpec.getSize(paramInt2);
        i17 = i7 + i9;
        i18 = i8 + i10;
        int i19 = getSuggestedMinimumWidth();
        int i20 = getSuggestedMinimumHeight();
        if ((this.t == null) || (!ViewCompat.getFitsSystemWindows(this)))
          break label763;
        i21 = 1;
        int i22 = this.g.size();
        i23 = 0;
        i24 = 0;
        i25 = i20;
        i26 = i19;
        if (i23 >= i22)
          break label811;
        localView1 = (View)this.g.get(i23);
        localt1 = (t)localView1.getLayoutParams();
        int i27 = localt1.e;
        i28 = 0;
        if (i27 >= 0)
        {
          i28 = 0;
          if (i13 != 0)
          {
            i36 = a(localt1.e);
            i37 = 0x7 & GravityCompat.getAbsoluteGravity(c(localt1.c), i11);
            if (((i37 != 3) || (i12 != 0)) && ((i37 != 5) || (i12 == 0)))
              break label769;
            i28 = Math.max(0, i14 - i9 - i36);
          }
        }
        if ((i21 == 0) || (ViewCompat.getFitsSystemWindows(localView1)))
          break label839;
        int i34 = this.t.getSystemWindowInsetLeft() + this.t.getSystemWindowInsetRight();
        int i35 = this.t.getSystemWindowInsetTop() + this.t.getSystemWindowInsetBottom();
        i30 = View.MeasureSpec.makeMeasureSpec(i14 - i34, i13);
        i29 = View.MeasureSpec.makeMeasureSpec(i16 - i35, i15);
      }
      while (true)
      {
        measureChildWithMargins(localView1, i30, i28, i29, 0);
        int i31 = Math.max(i26, i17 + localView1.getMeasuredWidth() + localt1.leftMargin + localt1.rightMargin);
        int i32 = Math.max(i25, i18 + localView1.getMeasuredHeight() + localt1.topMargin + localt1.bottomMargin);
        int i33 = ViewCompat.combineMeasuredStates(i24, ViewCompat.getMeasuredState(localView1));
        i23++;
        i24 = i33;
        i25 = i32;
        i26 = i31;
        break label367;
        int i38 = getChildCount();
        for (int i39 = 0; ; i39++)
        {
          if (i39 >= i38)
            break label712;
          View localView3 = getChildAt(i39);
          if ((localView3 == localView2) || (!localt2.a(this, localView2, localView3)))
            continue;
          i40 = 1;
          break;
        }
        label712: i40 = 0;
        break label172;
        label718: i5++;
        break;
        if ((this.n) && (this.r != null))
          getViewTreeObserver().removeOnPreDrawListener(this.r);
        this.s = false;
        break label236;
        label757: i12 = 0;
        break label275;
        label763: i21 = 0;
        break label342;
        label769: if ((i37 != 5) || (i12 != 0))
        {
          i28 = 0;
          if (i37 != 3)
            break label488;
          i28 = 0;
          if (i12 == 0)
            break label488;
        }
        i28 = Math.max(0, i36 - i7);
        break label488;
        label811: setMeasuredDimension(ViewCompat.resolveSizeAndState(i26, paramInt1, 0xFF000000 & i24), ViewCompat.resolveSizeAndState(i25, paramInt2, i24 << 16));
        return;
        label839: i29 = paramInt2;
        i30 = paramInt1;
      }
    }
  }

  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int i1 = getChildCount();
    int i2 = 0;
    boolean bool1 = false;
    View localView;
    com.xiaomi.mistatistic.sdk.a.r localr;
    if (i2 < i1)
    {
      localView = getChildAt(i2);
      t localt = (t)localView.getLayoutParams();
      if (!localt.d())
        break label98;
      localr = localt.a;
      if (localr == null)
        break label98;
    }
    label98: for (boolean bool2 = bool1 | localr.a(this, localView, paramView, paramFloat1, paramFloat2, paramBoolean); ; bool2 = bool1)
    {
      i2++;
      bool1 = bool2;
      break;
      if (bool1)
        a(true);
      return bool1;
    }
  }

  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
      getChildAt(i2).getLayoutParams();
    return false;
  }

  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i4 = getChildCount();
    int i5 = 0;
    int i7;
    label113: int i9;
    label130: int i8;
    int i6;
    if (i5 < i4)
    {
      View localView = getChildAt(i5);
      t localt = (t)localView.getLayoutParams();
      if (!localt.d())
        break label210;
      com.xiaomi.mistatistic.sdk.a.r localr = localt.a;
      if (localr == null)
        break label210;
      int[] arrayOfInt = this.m;
      this.m[1] = 0;
      arrayOfInt[0] = 0;
      localr.a(this, localView, paramView, paramInt1, paramInt2, this.m);
      if (paramInt1 > 0)
      {
        i7 = Math.max(i1, this.m[0]);
        if (paramInt2 <= 0)
          break label171;
        i9 = Math.max(i2, this.m[1]);
        i8 = i9;
        i6 = 1;
      }
    }
    while (true)
    {
      i5++;
      i2 = i8;
      i1 = i7;
      i3 = i6;
      break;
      i7 = Math.min(i1, this.m[0]);
      break label113;
      label171: i9 = Math.min(i2, this.m[1]);
      break label130;
      paramArrayOfInt[0] = i1;
      paramArrayOfInt[1] = i2;
      if (i3 != 0)
        a(true);
      return;
      label210: i6 = i3;
      i7 = i1;
      i8 = i2;
    }
  }

  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getChildCount();
    int i2 = 0;
    int i3 = 0;
    if (i3 < i1)
    {
      View localView = getChildAt(i3);
      t localt = (t)localView.getLayoutParams();
      if (!localt.d())
        break label96;
      com.xiaomi.mistatistic.sdk.a.r localr = localt.a;
      if (localr == null)
        break label96;
      localr.a(this, localView, paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    label96: for (int i4 = 1; ; i4 = i2)
    {
      i3++;
      i2 = i4;
      break;
      if (i2 != 0)
        a(true);
      return;
    }
  }

  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    this.x.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    this.q = paramView2;
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
      getChildAt(i2).getLayoutParams();
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    CoordinatorLayout.SavedState localSavedState = (CoordinatorLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    SparseArray localSparseArray = localSavedState.a;
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      View localView = getChildAt(i2);
      int i3 = localView.getId();
      com.xiaomi.mistatistic.sdk.a.r localr = c(localView).a;
      if ((i3 == -1) || (localr == null))
        continue;
      Parcelable localParcelable = (Parcelable)localSparseArray.get(i3);
      if (localParcelable == null)
        continue;
      localr.a(this, localView, localParcelable);
    }
  }

  protected Parcelable onSaveInstanceState()
  {
    CoordinatorLayout.SavedState localSavedState = new CoordinatorLayout.SavedState(super.onSaveInstanceState());
    SparseArray localSparseArray = new SparseArray();
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      View localView = getChildAt(i2);
      int i3 = localView.getId();
      com.xiaomi.mistatistic.sdk.a.r localr = ((t)localView.getLayoutParams()).a;
      if ((i3 == -1) || (localr == null))
        continue;
      Parcelable localParcelable = localr.a(this, localView);
      if (localParcelable == null)
        continue;
      localSparseArray.append(i3, localParcelable);
    }
    localSavedState.a = localSparseArray;
    return localSavedState;
  }

  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    int i1 = getChildCount();
    int i2 = 0;
    boolean bool1 = false;
    if (i2 < i1)
    {
      View localView = getChildAt(i2);
      t localt = (t)localView.getLayoutParams();
      com.xiaomi.mistatistic.sdk.a.r localr = localt.a;
      boolean bool2;
      if (localr != null)
      {
        boolean bool3 = localr.a(this, localView, paramView1, paramView2, paramInt);
        bool2 = bool1 | bool3;
        localt.a(bool3);
      }
      while (true)
      {
        i2++;
        bool1 = bool2;
        break;
        localt.a(false);
        bool2 = bool1;
      }
    }
    return bool1;
  }

  public void onStopNestedScroll(View paramView)
  {
    this.x.onStopNestedScroll(paramView);
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      View localView = getChildAt(i2);
      t localt = (t)localView.getLayoutParams();
      if (!localt.d())
        continue;
      com.xiaomi.mistatistic.sdk.a.r localr = localt.a;
      if (localr != null)
        localr.a(this, localView, paramView);
      localt.c();
      localt.f();
    }
    this.q = null;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionMasked(paramMotionEvent);
    boolean bool3;
    if (this.p == null)
    {
      bool3 = a(paramMotionEvent);
      if (!bool3);
    }
    for (boolean bool1 = bool3; ; bool1 = false)
    {
      com.xiaomi.mistatistic.sdk.a.r localr = ((t)this.p.getLayoutParams()).a;
      if (localr != null)
        localr.a(paramMotionEvent);
      while (true)
      {
        boolean bool2;
        if (this.p == null)
          bool2 = false | super.onTouchEvent(paramMotionEvent);
        while (true)
        {
          if ((i1 == 1) || (i1 == 3))
            a();
          return bool2;
          bool2 = false;
          if (!bool1)
            continue;
          super.onTouchEvent(null);
          bool2 = false;
        }
        bool1 = bool3;
      }
    }
  }

  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    if (paramBoolean)
      a();
  }

  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    this.w = paramOnHierarchyChangeListener;
  }

  public void setStatusBarBackground(Drawable paramDrawable)
  {
    this.v = paramDrawable;
    invalidate();
  }

  public void setStatusBarBackgroundColor(int paramInt)
  {
    setStatusBarBackground(new ColorDrawable(paramInt));
  }

  public void setStatusBarBackgroundResource(int paramInt)
  {
    if (paramInt != 0);
    for (Drawable localDrawable = ContextCompat.getDrawable(getContext(), paramInt); ; localDrawable = null)
    {
      setStatusBarBackground(localDrawable);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.CoordinatorLayout
 * JD-Core Version:    0.6.0
 */