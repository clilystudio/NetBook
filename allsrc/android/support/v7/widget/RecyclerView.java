package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.design.widget.K;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v7.internal.view.menu.c;
import android.support.v7.recyclerview.R.styleable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

public class RecyclerView extends ViewGroup
  implements NestedScrollingChild, ScrollingView
{
  private static final Interpolator aj;
  private static final boolean h;
  private static final Class<?>[] i;
  private boolean A;
  private final boolean B;
  private final AccessibilityManager C;
  private boolean D = false;
  private int E = 0;
  private EdgeEffectCompat F;
  private EdgeEffectCompat G;
  private EdgeEffectCompat H;
  private EdgeEffectCompat I;
  private int J = 0;
  private int K = -1;
  private VelocityTracker L;
  private int M;
  private int N;
  private int O;
  private int P;
  private int Q;
  private final int R;
  private final int S;
  private float T = 1.4E-45F;
  private final ax U = new ax(this);
  private Z V;
  private al W = new am(this, 0);
  final ar a = new ar(this);
  private boolean aa = false;
  private RecyclerViewAccessibilityDelegate ab;
  private K ac;
  private final int[] ad = new int[2];
  private final NestedScrollingChildHelper ae;
  private final int[] af = new int[2];
  private final int[] ag = new int[2];
  private final int[] ah = new int[2];
  private Runnable ai = new ad(this);
  n b;
  q c;
  ak d = new t();
  final aw e = new aw();
  boolean f = false;
  boolean g = false;
  private final as j = new as(this, 0);
  private RecyclerView.SavedState k;
  private boolean l;
  private final Runnable m = new ac(this);
  private final Rect n = new Rect();
  private ah o;
  private ao p;
  private K q;
  private final ArrayList<c> r = new ArrayList();
  private final ArrayList<K> s = new ArrayList();
  private K t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private boolean y;
  private int z;

  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20));
    for (boolean bool = true; ; bool = false)
    {
      h = bool;
      Class[] arrayOfClass = new Class[4];
      arrayOfClass[0] = Context.class;
      arrayOfClass[1] = AttributeSet.class;
      arrayOfClass[2] = Integer.TYPE;
      arrayOfClass[3] = Integer.TYPE;
      i = arrayOfClass;
      aj = new ae();
      return;
    }
  }

  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }

  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setFocusableInTouchMode(true);
    boolean bool1;
    if (Build.VERSION.SDK_INT >= 16)
      bool1 = true;
    label271: String str3;
    while (true)
    {
      this.B = bool1;
      ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramContext);
      this.Q = localViewConfiguration.getScaledTouchSlop();
      this.R = localViewConfiguration.getScaledMinimumFlingVelocity();
      this.S = localViewConfiguration.getScaledMaximumFlingVelocity();
      boolean bool2;
      String str2;
      if (ViewCompat.getOverScrollMode(this) == 2)
      {
        bool2 = true;
        setWillNotDraw(bool2);
        this.d.a(this.W);
        this.b = new n(new ag(this));
        this.c = new q(new af(this));
        if (ViewCompat.getImportantForAccessibility(this) == 0)
          ViewCompat.setImportantForAccessibility(this, 1);
        this.C = ((AccessibilityManager)getContext().getSystemService("accessibility"));
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        if (paramAttributeSet != null)
        {
          TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecyclerView, paramInt, 0);
          String str1 = localTypedArray.getString(R.styleable.RecyclerView_layoutManager);
          localTypedArray.recycle();
          if (str1 != null)
          {
            str2 = str1.trim();
            if (str2.length() != 0)
            {
              if (str2.charAt(0) != '.')
                break label580;
              str3 = paramContext.getPackageName() + str2;
            }
          }
        }
      }
      try
      {
        label453: Object localObject1;
        Class localClass;
        if (isInEditMode())
        {
          localObject1 = getClass().getClassLoader();
          localClass = ((ClassLoader)localObject1).loadClass(str3).asSubclass(ao.class);
        }
        try
        {
          Constructor localConstructor2 = localClass.getConstructor(i);
          arrayOfObject = new Object[4];
          arrayOfObject[0] = paramContext;
          arrayOfObject[1] = paramAttributeSet;
          arrayOfObject[2] = Integer.valueOf(paramInt);
          arrayOfObject[3] = Integer.valueOf(0);
          localObject2 = localConstructor2;
          ((Constructor)localObject2).setAccessible(true);
          setLayoutManager((ao)((Constructor)localObject2).newInstance(arrayOfObject));
          this.ae = new NestedScrollingChildHelper(this);
          setNestedScrollingEnabled(true);
          return;
          bool1 = false;
          continue;
          bool2 = false;
          break label271;
          label580: if (str2.contains("."))
          {
            str3 = str2;
            break label453;
          }
          str3 = RecyclerView.class.getPackage().getName() + '.' + str2;
          break label453;
          ClassLoader localClassLoader = paramContext.getClassLoader();
          localObject1 = localClassLoader;
        }
        catch (NoSuchMethodException localNoSuchMethodException1)
        {
          try
          {
            Constructor localConstructor1 = localClass.getConstructor(new Class[0]);
            Object localObject2 = localConstructor1;
            Object[] arrayOfObject = null;
          }
          catch (NoSuchMethodException localNoSuchMethodException2)
          {
            localNoSuchMethodException2.initCause(localNoSuchMethodException1);
            throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Error creating LayoutManager " + str3, localNoSuchMethodException2);
          }
        }
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str3, localClassNotFoundException);
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str3, localInvocationTargetException);
      }
      catch (InstantiationException localInstantiationException)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str3, localInstantiationException);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str3, localIllegalAccessException);
      }
      catch (ClassCastException localClassCastException)
      {
      }
    }
    throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str3, localClassCastException);
  }

  private void a(int paramInt)
  {
    if (paramInt == this.J);
    do
    {
      return;
      this.J = paramInt;
      if (paramInt == 2)
        continue;
      k();
    }
    while (this.p == null);
    this.p.e(paramInt);
  }

  private void a(ArrayMap<View, Rect> paramArrayMap)
  {
    List localList = this.e.d;
    int i1 = -1 + localList.size();
    if (i1 >= 0)
    {
      View localView = (View)localList.get(i1);
      ay localay = b(localView);
      an localan = (an)this.e.a.remove(localay);
      if (!this.e.a())
        this.e.b.remove(localay);
      if (paramArrayMap.remove(localView) != null)
        this.p.a(localView, this.a);
      while (true)
      {
        i1--;
        break;
        if (localan != null)
        {
          a(localan);
          continue;
        }
        a(new an(localay, localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
      }
    }
    localList.clear();
  }

  private void a(an paraman)
  {
    View localView = paraman.a.a;
    a(paraman.a);
    int i1 = paraman.b;
    int i2 = paraman.c;
    int i3 = localView.getLeft();
    int i4 = localView.getTop();
    if ((!paraman.a.m()) && ((i1 != i3) || (i2 != i4)))
    {
      paraman.a.a(false);
      localView.layout(i3, i4, i3 + localView.getWidth(), i4 + localView.getHeight());
      if (this.d.a(paraman.a, i1, i2, i3, i4))
        v();
      return;
    }
    paraman.a.a(false);
    this.d.a(paraman.a);
    v();
  }

  private void a(ay paramay)
  {
    View localView = paramay.a;
    if (localView.getParent() == this);
    for (int i1 = 1; ; i1 = 0)
    {
      this.a.b(a(localView));
      if (!paramay.n())
        break;
      this.c.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i1 == 0)
    {
      this.c.a(localView, true);
      return;
    }
    q localq = this.c;
    int i2 = localq.a.a(localView);
    if (i2 < 0)
      throw new IllegalArgumentException("view is not a child, cannot hide " + localView);
    localq.b.a(i2);
    localq.c.add(localView);
  }

  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i1) == this.K)
      if (i1 != 0)
        break label81;
    label81: for (int i2 = 1; ; i2 = 0)
    {
      this.K = MotionEventCompat.getPointerId(paramMotionEvent, i2);
      int i3 = (int)(0.5F + MotionEventCompat.getX(paramMotionEvent, i2));
      this.O = i3;
      this.M = i3;
      int i4 = (int)(0.5F + MotionEventCompat.getY(paramMotionEvent, i2));
      this.P = i4;
      this.N = i4;
      return;
    }
  }

  private boolean a(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    j();
    ah localah = this.o;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    if (localah != null)
    {
      c();
      s();
      TraceCompat.beginSection("RV Scroll");
      i3 = 0;
      i4 = 0;
      if (paramInt1 != 0)
      {
        i3 = this.p.a(paramInt1, this.a, this.e);
        i4 = paramInt1 - i3;
      }
      i1 = 0;
      i2 = 0;
      if (paramInt2 != 0)
      {
        i1 = this.p.b(paramInt2, this.a, this.e);
        i2 = paramInt2 - i1;
      }
      TraceCompat.endSection();
      if (u())
      {
        int i9 = this.c.a();
        int i10 = 0;
        if (i10 < i9)
        {
          View localView1 = this.c.b(i10);
          ay localay1 = a(localView1);
          ay localay2;
          if ((localay1 != null) && (localay1.h != null))
          {
            localay2 = localay1.h;
            if (localay2 == null)
              break label259;
          }
          label259: for (View localView2 = localay2.a; ; localView2 = null)
          {
            if (localView2 != null)
            {
              int i11 = localView1.getLeft();
              int i12 = localView1.getTop();
              if ((i11 != localView2.getLeft()) || (i12 != localView2.getTop()))
                localView2.layout(i11, i12, i11 + localView2.getWidth(), i12 + localView2.getHeight());
            }
            i10++;
            break;
          }
        }
      }
      t();
      a(false);
    }
    int i5 = i2;
    int i6 = i3;
    int i7 = i1;
    if (!this.r.isEmpty())
      invalidate();
    if (dispatchNestedScroll(i6, i7, i4, i5, this.af))
    {
      this.O -= this.af[0];
      this.P -= this.af[1];
      if (paramMotionEvent != null)
        paramMotionEvent.offsetLocation(this.af[0], this.af[1]);
      int[] arrayOfInt1 = this.ah;
      arrayOfInt1[0] += this.af[0];
      int[] arrayOfInt2 = this.ah;
      arrayOfInt2[1] += this.af[1];
    }
    while (true)
    {
      if ((i6 != 0) || (i7 != 0))
        c(i6, i7);
      if (!awakenScrollBars())
        invalidate();
      if ((i6 == 0) && (i7 == 0))
        break;
      return true;
      if (ViewCompat.getOverScrollMode(this) == 2)
        continue;
      float f1;
      float f2;
      float f3;
      float f4;
      int i8;
      if (paramMotionEvent != null)
      {
        f1 = paramMotionEvent.getX();
        f2 = i4;
        f3 = paramMotionEvent.getY();
        f4 = i5;
        if (f2 >= 0.0F)
          break label611;
        m();
        boolean bool3 = this.F.onPull(-f2 / getWidth(), 1.0F - f3 / getHeight());
        i8 = 0;
        if (bool3)
          i8 = 1;
        label538: if (f4 >= 0.0F)
          break label668;
        o();
        if (this.G.onPull(-f4 / getHeight(), f1 / getWidth()))
          i8 = 1;
      }
      while (true)
      {
        if ((i8 != 0) || (f2 != 0.0F) || (f4 != 0.0F))
          ViewCompat.postInvalidateOnAnimation(this);
        d(paramInt1, paramInt2);
        break;
        label611: boolean bool1 = f2 < 0.0F;
        i8 = 0;
        if (!bool1)
          break label538;
        n();
        boolean bool2 = this.H.onPull(f2 / getWidth(), f3 / getHeight());
        i8 = 0;
        if (!bool2)
          break label538;
        i8 = 1;
        break label538;
        label668: if (f4 <= 0.0F)
          continue;
        p();
        if (!this.I.onPull(f4 / getHeight(), 1.0F - f1 / getWidth()))
          continue;
        i8 = 1;
      }
    }
    return false;
  }

  private long b(ay paramay)
  {
    return paramay.b;
  }

  static ay b(View paramView)
  {
    if (paramView == null)
      return null;
    return ((ap)paramView.getLayoutParams()).a;
  }

  private void d(int paramInt1, int paramInt2)
  {
    EdgeEffectCompat localEdgeEffectCompat = this.F;
    boolean bool1 = false;
    if (localEdgeEffectCompat != null)
    {
      boolean bool2 = this.F.isFinished();
      bool1 = false;
      if (!bool2)
      {
        bool1 = false;
        if (paramInt1 > 0)
          bool1 = this.F.onRelease();
      }
    }
    if ((this.H != null) && (!this.H.isFinished()) && (paramInt1 < 0))
      bool1 |= this.H.onRelease();
    if ((this.G != null) && (!this.G.isFinished()) && (paramInt2 > 0))
      bool1 |= this.G.onRelease();
    if ((this.I != null) && (!this.I.isFinished()) && (paramInt2 < 0))
      bool1 |= this.I.onRelease();
    if (bool1)
      ViewCompat.postInvalidateOnAnimation(this);
  }

  private void e(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    switch (i1)
    {
    default:
      i3 = ViewCompat.getMinimumWidth(this);
    case 1073741824:
    case -2147483648:
    }
    switch (i2)
    {
    default:
      i4 = ViewCompat.getMinimumHeight(this);
    case 1073741824:
    case -2147483648:
    }
    setMeasuredDimension(i3, i4);
  }

  private boolean f(int paramInt1, int paramInt2)
  {
    int i1 = this.c.a();
    int i3;
    if (i1 == 0)
    {
      if (paramInt1 == 0)
      {
        i3 = 0;
        if (paramInt2 == 0);
      }
      else
      {
        i3 = 1;
      }
      return i3;
    }
    for (int i2 = 0; ; i2++)
    {
      i3 = 0;
      if (i2 >= i1)
        break;
      ay localay = b(this.c.b(i2));
      if (localay.b())
        continue;
      int i4 = localay.c();
      if ((i4 < paramInt1) || (i4 > paramInt2))
        return true;
    }
  }

  private void j()
  {
    this.m.run();
  }

  private void k()
  {
    this.U.b();
    if (this.p != null);
  }

  private void l()
  {
    EdgeEffectCompat localEdgeEffectCompat = this.F;
    boolean bool = false;
    if (localEdgeEffectCompat != null)
      bool = this.F.onRelease();
    if (this.G != null)
      bool |= this.G.onRelease();
    if (this.H != null)
      bool |= this.H.onRelease();
    if (this.I != null)
      bool |= this.I.onRelease();
    if (bool)
      ViewCompat.postInvalidateOnAnimation(this);
  }

  private void m()
  {
    if (this.F != null)
      return;
    this.F = new EdgeEffectCompat(getContext());
    if (this.l)
    {
      this.F.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.F.setSize(getMeasuredHeight(), getMeasuredWidth());
  }

  private void n()
  {
    if (this.H != null)
      return;
    this.H = new EdgeEffectCompat(getContext());
    if (this.l)
    {
      this.H.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.H.setSize(getMeasuredHeight(), getMeasuredWidth());
  }

  private void o()
  {
    if (this.G != null)
      return;
    this.G = new EdgeEffectCompat(getContext());
    if (this.l)
    {
      this.G.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.G.setSize(getMeasuredWidth(), getMeasuredHeight());
  }

  private void p()
  {
    if (this.I != null)
      return;
    this.I = new EdgeEffectCompat(getContext());
    if (this.l)
    {
      this.I.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.I.setSize(getMeasuredWidth(), getMeasuredHeight());
  }

  private void q()
  {
    this.I = null;
    this.G = null;
    this.H = null;
    this.F = null;
  }

  private void r()
  {
    if (this.L != null)
      this.L.clear();
    stopNestedScroll();
    l();
    a(0);
  }

  private void s()
  {
    this.E = (1 + this.E);
  }

  private void t()
  {
    this.E = (-1 + this.E);
    if (this.E <= 0)
    {
      this.E = 0;
      int i1 = this.z;
      this.z = 0;
      if ((i1 != 0) && (this.C != null) && (this.C.isEnabled()))
      {
        AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
        localAccessibilityEvent.setEventType(2048);
        AccessibilityEventCompat.setContentChangeTypes(localAccessibilityEvent, i1);
        sendAccessibilityEventUnchecked(localAccessibilityEvent);
      }
    }
  }

  private boolean u()
  {
    return (this.d != null) && (this.d.h());
  }

  private void v()
  {
    if ((!this.aa) && (this.u))
    {
      ViewCompat.postOnAnimation(this, this.ai);
      this.aa = true;
    }
  }

  private void w()
  {
    boolean bool1 = true;
    if (this.D)
    {
      this.b.a();
      y();
      this.p.p();
    }
    boolean bool2;
    label88: boolean bool3;
    label143: aw localaw2;
    boolean bool4;
    if ((this.d != null) && (this.p.f()))
    {
      this.b.b();
      if (((!this.f) || (this.g)) && (!this.f) && ((!this.g) || (!u())))
        break label220;
      bool2 = bool1;
      aw localaw1 = this.e;
      if ((this.w) && (this.d != null) && ((this.D) || (bool2) || (ao.a(this.p))) && (!this.D))
        break label225;
      bool3 = false;
      aw.c(localaw1, bool3);
      localaw2 = this.e;
      if ((!aw.b(this.e)) || (!bool2) || (this.D))
        break label237;
      if ((this.d == null) || (!this.p.f()))
        break label231;
      bool4 = bool1;
      label197: if (!bool4)
        break label237;
    }
    while (true)
    {
      aw.d(localaw2, bool1);
      return;
      this.b.e();
      break;
      label220: bool2 = false;
      break label88;
      label225: bool3 = bool1;
      break label143;
      label231: bool4 = false;
      break label197;
      label237: bool1 = false;
    }
  }

  private void x()
  {
    int i1 = this.c.b();
    for (int i2 = 0; i2 < i1; i2++)
    {
      ay localay = b(this.c.c(i2));
      if (localay.b())
        continue;
      localay.a();
    }
    this.a.e();
  }

  private void y()
  {
    int i1 = 0;
    int i2 = this.c.b();
    for (int i3 = 0; i3 < i2; i3++)
    {
      ay localay = b(this.c.c(i3));
      if ((localay == null) || (localay.b()))
        continue;
      localay.b(6);
    }
    int i4 = this.c.b();
    for (int i5 = 0; i5 < i4; i5++)
      ((ap)this.c.c(i5).getLayoutParams()).c = true;
    ar localar1 = this.a;
    int i6 = localar1.b.size();
    while (i1 < i6)
    {
      ap localap = (ap)((ay)localar1.b.get(i1)).a.getLayoutParams();
      if (localap != null)
        localap.c = true;
      i1++;
    }
    ar localar2 = this.a;
    if (localar2.c.o != null);
    localar2.c();
  }

  public final ah a()
  {
    return this.o;
  }

  public final ay a(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this))
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    return b(paramView);
  }

  final void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      m();
      this.F.onAbsorb(-paramInt1);
      if (paramInt2 >= 0)
        break label69;
      o();
      this.G.onAbsorb(-paramInt2);
    }
    while (true)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0))
        ViewCompat.postInvalidateOnAnimation(this);
      return;
      if (paramInt1 <= 0)
        break;
      n();
      this.H.onAbsorb(paramInt1);
      break;
      label69: if (paramInt2 <= 0)
        continue;
      p();
      this.I.onAbsorb(paramInt2);
    }
  }

  final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i1 = paramInt1 + paramInt2;
    int i2 = this.c.b();
    int i3 = 0;
    if (i3 < i2)
    {
      ay localay2 = b(this.c.c(i3));
      if ((localay2 != null) && (!localay2.b()))
      {
        if (localay2.b < i1)
          break label84;
        localay2.a(-paramInt2, paramBoolean);
        aw.a(this.e, true);
      }
      while (true)
      {
        i3++;
        break;
        label84: if (localay2.b < paramInt1)
          continue;
        int i6 = paramInt1 - 1;
        int i7 = -paramInt2;
        localay2.b(8);
        localay2.a(i7, paramBoolean);
        localay2.b = i6;
        aw.a(this.e, true);
      }
    }
    ar localar = this.a;
    int i4 = paramInt1 + paramInt2;
    int i5 = -1 + localar.b.size();
    if (i5 >= 0)
    {
      ay localay1 = (ay)localar.b.get(i5);
      if (localay1 != null)
      {
        if (localay1.c() < i4)
          break label208;
        localay1.a(-paramInt2, paramBoolean);
      }
      while (true)
      {
        i5--;
        break;
        label208: if (localay1.c() < paramInt1)
          continue;
        localay1.b(8);
        localar.c(i5);
      }
    }
    requestLayout();
  }

  final void a(String paramString)
  {
    if (d())
    {
      if (paramString == null)
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      throw new IllegalStateException(paramString);
    }
  }

  final void a(boolean paramBoolean)
  {
    if (this.x)
    {
      if ((paramBoolean) && (this.y) && (this.p != null) && (this.o != null))
        e();
      this.x = false;
      this.y = false;
    }
  }

  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    super.addFocusables(paramArrayList, paramInt1, paramInt2);
  }

  public final ao b()
  {
    return this.p;
  }

  final void b(int paramInt1, int paramInt2)
  {
    int i1 = this.c.b();
    int i2 = paramInt1 + paramInt2;
    for (int i3 = 0; i3 < i1; i3++)
    {
      View localView = this.c.c(i3);
      ay localay2 = b(localView);
      if ((localay2 == null) || (localay2.b()) || (localay2.b < paramInt1) || (localay2.b >= i2))
        continue;
      localay2.b(2);
      if (u())
        localay2.b(64);
      ((ap)localView.getLayoutParams()).c = true;
    }
    ar localar = this.a;
    int i4 = paramInt1 + paramInt2;
    for (int i5 = -1 + localar.b.size(); i5 >= 0; i5--)
    {
      ay localay1 = (ay)localar.b.get(i5);
      if (localay1 == null)
        continue;
      int i6 = localay1.c();
      if ((i6 < paramInt1) || (i6 >= i4))
        continue;
      localay1.b(2);
      localar.c(i5);
    }
  }

  final Rect c(View paramView)
  {
    ap localap = (ap)paramView.getLayoutParams();
    if (!localap.c)
      return localap.b;
    Rect localRect = localap.b;
    localRect.set(0, 0, 0, 0);
    int i1 = this.r.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      this.n.set(0, 0, 0, 0);
      ((c)this.r.get(i2)).a(this.n, paramView, this);
      localRect.left += this.n.left;
      localRect.top += this.n.top;
      localRect.right += this.n.right;
      localRect.bottom += this.n.bottom;
    }
    localap.c = false;
    return localRect;
  }

  final void c()
  {
    if (!this.x)
    {
      this.x = true;
      this.y = false;
    }
  }

  final void c(int paramInt1, int paramInt2)
  {
    int i1 = getScrollX();
    int i2 = getScrollY();
    onScrollChanged(i1, i2, i1, i2);
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ap)) && (this.p.a((ap)paramLayoutParams));
  }

  public int computeHorizontalScrollExtent()
  {
    if (this.p.c())
      return this.p.c(this.e);
    return 0;
  }

  public int computeHorizontalScrollOffset()
  {
    if (this.p.c())
      return this.p.a(this.e);
    return 0;
  }

  public int computeHorizontalScrollRange()
  {
    if (this.p.c())
      return this.p.e(this.e);
    return 0;
  }

  public int computeVerticalScrollExtent()
  {
    if (this.p.d())
      return this.p.d(this.e);
    return 0;
  }

  public int computeVerticalScrollOffset()
  {
    if (this.p.d())
      return this.p.b(this.e);
    return 0;
  }

  public int computeVerticalScrollRange()
  {
    if (this.p.d())
      return this.p.f(this.e);
    return 0;
  }

  public final boolean d()
  {
    return this.E > 0;
  }

  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return this.ae.dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }

  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return this.ae.dispatchNestedPreFling(paramFloat1, paramFloat2);
  }

  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return this.ae.dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }

  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return this.ae.dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }

  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }

  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }

  public void draw(Canvas paramCanvas)
  {
    int i1 = 1;
    super.draw(paramCanvas);
    int i2 = this.r.size();
    for (int i3 = 0; i3 < i2; i3++)
      this.r.get(i3);
    int i14;
    int i4;
    if ((this.F != null) && (!this.F.isFinished()))
    {
      int i13 = paramCanvas.save();
      if (this.l)
      {
        i14 = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i14 + -getHeight(), 0.0F);
        if ((this.F == null) || (!this.F.draw(paramCanvas)))
          break label455;
        i4 = i1;
        label118: paramCanvas.restoreToCount(i13);
      }
    }
    while (true)
    {
      int i12;
      label189: int i9;
      label244: int i10;
      if ((this.G != null) && (!this.G.isFinished()))
      {
        int i11 = paramCanvas.save();
        if (this.l)
          paramCanvas.translate(getPaddingLeft(), getPaddingTop());
        if ((this.G != null) && (this.G.draw(paramCanvas)))
        {
          i12 = i1;
          i4 |= i12;
          paramCanvas.restoreToCount(i11);
        }
      }
      else
      {
        if ((this.H != null) && (!this.H.isFinished()))
        {
          int i7 = paramCanvas.save();
          int i8 = getWidth();
          if (!this.l)
            break label467;
          i9 = getPaddingTop();
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-i9, -i8);
          if ((this.H == null) || (!this.H.draw(paramCanvas)))
            break label473;
          i10 = i1;
          label284: i4 |= i10;
          paramCanvas.restoreToCount(i7);
        }
        if ((this.I != null) && (!this.I.isFinished()))
        {
          int i5 = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!this.l)
            break label479;
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label360: EdgeEffectCompat localEdgeEffectCompat = this.I;
          int i6 = 0;
          if (localEdgeEffectCompat != null)
          {
            boolean bool = this.I.draw(paramCanvas);
            i6 = 0;
            if (bool)
              i6 = i1;
          }
          i4 |= i6;
          paramCanvas.restoreToCount(i5);
        }
        if ((i4 != 0) || (this.d == null) || (this.r.size() <= 0) || (!this.d.b()))
          break label498;
      }
      while (true)
      {
        if (i1 != 0)
          ViewCompat.postInvalidateOnAnimation(this);
        return;
        i14 = 0;
        break;
        label455: i4 = 0;
        break label118;
        i12 = 0;
        break label189;
        label467: i9 = 0;
        break label244;
        label473: i10 = 0;
        break label284;
        label479: paramCanvas.translate(-getWidth(), -getHeight());
        break label360;
        label498: i1 = i4;
      }
      i4 = 0;
    }
  }

  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }

  final void e()
  {
    if (this.o == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (this.p == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    this.e.d.clear();
    c();
    s();
    w();
    aw localaw1 = this.e;
    ArrayMap localArrayMap1;
    if ((aw.b(this.e)) && (this.g) && (u()))
      localArrayMap1 = new ArrayMap();
    int[] arrayOfInt;
    label171: ay localay10;
    label255: int i2;
    int i3;
    int i4;
    label279: int i31;
    while (true)
    {
      localaw1.c = localArrayMap1;
      this.g = false;
      this.f = false;
      aw.b(this.e, aw.a(this.e));
      this.e.e = this.o.a();
      arrayOfInt = this.ad;
      int i1 = this.c.a();
      if (i1 == 0)
      {
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        if (!aw.b(this.e))
          break label418;
        this.e.a.clear();
        this.e.b.clear();
        int i29 = this.c.a();
        for (int i30 = 0; ; i30++)
        {
          if (i30 >= i29)
            break label418;
          localay10 = b(this.c.b(i30));
          if ((!localay10.b()) && (!localay10.i()))
            break;
        }
        localArrayMap1 = null;
        continue;
      }
      i2 = 2147483647;
      i3 = -2147483648;
      i4 = 0;
      if (i4 >= i1)
        break;
      ay localay11 = b(this.c.b(i4));
      if (localay11.b())
        break label2104;
      i31 = localay11.c();
      if (i31 < i2)
        i2 = i31;
      if (i31 <= i3)
        break label2104;
    }
    label1157: label1163: label1935: for (int i32 = i2; ; i32 = i2)
    {
      i4++;
      i2 = i32;
      i3 = i31;
      break label279;
      arrayOfInt[0] = i2;
      arrayOfInt[1] = i3;
      break label171;
      View localView3 = localay10.a;
      this.e.a.put(localay10, new an(localay10, localView3.getLeft(), localView3.getTop(), localView3.getRight(), localView3.getBottom()));
      break label255;
      label418: ArrayMap localArrayMap4;
      int i24;
      label661: View localView2;
      int i25;
      if (aw.a(this.e))
      {
        int i22 = this.c.b();
        for (int i23 = 0; i23 < i22; i23++)
        {
          ay localay9 = b(this.c.c(i23));
          if ((localay9.b()) || (localay9.c != -1))
            continue;
          localay9.c = localay9.b;
        }
        if (this.e.c != null)
        {
          int i27 = this.c.a();
          for (int i28 = 0; i28 < i27; i28++)
          {
            ay localay8 = b(this.c.b(i28));
            if ((!localay8.k()) || (localay8.m()) || (localay8.b()))
              continue;
            long l4 = b(localay8);
            this.e.c.put(Long.valueOf(l4), localay8);
            this.e.a.remove(localay8);
          }
        }
        boolean bool2 = aw.c(this.e);
        aw.a(this.e, false);
        this.p.a(this.a, this.e);
        aw.a(this.e, bool2);
        localArrayMap4 = new ArrayMap();
        i24 = 0;
        if (i24 < this.c.a())
        {
          localView2 = this.c.b(i24);
          if (!b(localView2).b())
          {
            i25 = 0;
            label698: if (i25 >= this.e.a.size())
              break label2098;
            if (((ay)this.e.a.keyAt(i25)).a != localView2)
              break label785;
          }
        }
      }
      label785: label930: label942: label2098: for (int i26 = 1; ; i26 = 0)
      {
        if (i26 == 0)
          localArrayMap4.put(localView2, new Rect(localView2.getLeft(), localView2.getTop(), localView2.getRight(), localView2.getBottom()));
        i24++;
        break label661;
        i25++;
        break label698;
        x();
        this.b.c();
        for (ArrayMap localArrayMap2 = localArrayMap4; ; localArrayMap2 = null)
        {
          this.e.e = this.o.a();
          aw.b(this.e, 0);
          aw.b(this.e, false);
          this.p.a(this.a, this.e);
          aw.a(this.e, false);
          this.k = null;
          aw localaw2 = this.e;
          boolean bool1;
          ArrayMap localArrayMap3;
          int i6;
          ay localay6;
          View localView1;
          if ((aw.b(this.e)) && (this.d != null))
          {
            bool1 = true;
            aw.c(localaw2, bool1);
            if (!aw.b(this.e))
              break label1971;
            if (this.e.c == null)
              break label1157;
            localArrayMap3 = new ArrayMap();
            int i5 = this.c.a();
            i6 = 0;
            if (i6 >= i5)
              break label1208;
            localay6 = b(this.c.b(i6));
            if (!localay6.b())
            {
              localView1 = localay6.a;
              long l2 = b(localay6);
              if ((localArrayMap3 == null) || (this.e.c.get(Long.valueOf(l2)) == null))
                break label1163;
              localArrayMap3.put(Long.valueOf(l2), localay6);
            }
          }
          while (true)
          {
            i6++;
            break label942;
            x();
            this.b.e();
            if (this.e.c == null)
              break label2092;
            int i20 = this.c.a();
            for (int i21 = 0; i21 < i20; i21++)
            {
              ay localay7 = b(this.c.b(i21));
              if ((!localay7.k()) || (localay7.m()) || (localay7.b()))
                continue;
              long l3 = b(localay7);
              this.e.c.put(Long.valueOf(l3), localay7);
              this.e.a.remove(localay7);
            }
            bool1 = false;
            break;
            localArrayMap3 = null;
            break label930;
            this.e.b.put(localay6, new an(localay6, localView1.getLeft(), localView1.getTop(), localView1.getRight(), localView1.getBottom()));
          }
          label1208: a(localArrayMap2);
          for (int i7 = -1 + this.e.a.size(); i7 >= 0; i7--)
          {
            ay localay5 = (ay)this.e.a.keyAt(i7);
            if (this.e.b.containsKey(localay5))
              continue;
            an localan4 = (an)this.e.a.valueAt(i7);
            this.e.a.removeAt(i7);
            this.a.b(localan4.a);
            a(localan4);
          }
          int i8 = this.e.b.size();
          if (i8 > 0)
          {
            int i17 = i8 - 1;
            if (i17 >= 0)
            {
              ay localay4 = (ay)this.e.b.keyAt(i17);
              an localan3 = (an)this.e.b.valueAt(i17);
              Rect localRect;
              if ((this.e.a.isEmpty()) || (!this.e.a.containsKey(localay4)))
              {
                this.e.b.removeAt(i17);
                if (localArrayMap2 == null)
                  break label1523;
                localRect = (Rect)localArrayMap2.get(localay4.a);
                int i18 = localan3.b;
                int i19 = localan3.c;
                if ((localRect == null) || ((localRect.left == i18) && (localRect.top == i19)))
                  break label1529;
                localay4.a(false);
                if (this.d.a(localay4, localRect.left, localRect.top, i18, i19))
                  v();
              }
              while (true)
              {
                i17--;
                break;
                label1523: localRect = null;
                break label1442;
                label1529: localay4.a(false);
                this.d.b(localay4);
                v();
              }
            }
          }
          int i9 = this.e.b.size();
          for (int i10 = 0; i10 < i9; i10++)
          {
            ay localay3 = (ay)this.e.b.keyAt(i10);
            an localan1 = (an)this.e.b.valueAt(i10);
            an localan2 = (an)this.e.a.get(localay3);
            if ((localan2 == null) || (localan1 == null) || ((localan2.b == localan1.b) && (localan2.c == localan1.c)))
              continue;
            localay3.a(false);
            if (!this.d.a(localay3, localan2.b, localan2.c, localan1.b, localan1.c))
              continue;
            v();
          }
          int i11;
          int i12;
          label1737: ay localay1;
          ay localay2;
          int i13;
          int i14;
          int i15;
          int i16;
          if (this.e.c != null)
          {
            i11 = this.e.c.size();
            i12 = i11 - 1;
            if (i12 < 0)
              break label1971;
            long l1 = ((Long)this.e.c.keyAt(i12)).longValue();
            localay1 = (ay)this.e.c.get(Long.valueOf(l1));
            if ((!localay1.b()) && (ar.a(this.a) != null) && (ar.a(this.a).contains(localay1)))
            {
              localay2 = (ay)localArrayMap3.get(Long.valueOf(l1));
              localay1.a(false);
              a(localay1);
              localay1.g = localay2;
              this.a.b(localay1);
              i13 = localay1.a.getLeft();
              i14 = localay1.a.getTop();
              if ((localay2 != null) && (!localay2.b()))
                break label1935;
              i15 = i14;
              i16 = i13;
            }
          }
          while (true)
          {
            this.d.a(localay1, localay2, i13, i14, i16, i15);
            v();
            i12--;
            break label1737;
            i11 = 0;
            break;
            i16 = localay2.a.getLeft();
            i15 = localay2.a.getTop();
            localay2.a(false);
            localay2.h = localay1;
          }
          label1971: a(false);
          this.p.b(this.a);
          aw.c(this.e, this.e.e);
          this.D = false;
          aw.c(this.e, false);
          aw.d(this.e, false);
          t();
          ao.a(this.p, false);
          if (ar.a(this.a) != null)
            ar.a(this.a).clear();
          this.e.c = null;
          if (!f(this.ad[0], this.ad[1]))
            break;
          c(0, 0);
          return;
        }
      }
      label1442: label2092: label2104: i31 = i3;
    }
  }

  final void f()
  {
    int i1 = this.c.a();
    int i2 = 0;
    if (i2 < i1)
    {
      ay localay = b(this.c.b(i2));
      if ((localay != null) && (!localay.b()))
      {
        if ((!localay.m()) && (!localay.i()))
          break label62;
        requestLayout();
      }
      while (true)
      {
        i2++;
        break;
        label62: if (!localay.j())
          continue;
        int i3 = this.o.a(localay.b);
        if (localay.e != i3)
          break label127;
        if ((!localay.k()) || (!u()))
        {
          this.o.b(localay, localay.b);
          continue;
        }
        requestLayout();
      }
      label127: requestLayout();
    }
  }

  public View focusSearch(View paramView, int paramInt)
  {
    View localView = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
    if ((localView == null) && (this.o != null) && (this.p != null) && (!d()))
    {
      c();
      localView = this.p.c(paramInt, this.a, this.e);
      a(false);
    }
    if (localView != null)
      return localView;
    return super.focusSearch(paramView, paramInt);
  }

  public final boolean g()
  {
    return (!this.w) || (this.D) || (this.b.d());
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (this.p == null)
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    return this.p.a();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (this.p == null)
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    return this.p.a(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.p == null)
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    return this.p.a(paramLayoutParams);
  }

  public int getBaseline()
  {
    if (this.p != null)
      return -1;
    return super.getBaseline();
  }

  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.ac == null)
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    return this.ac.b();
  }

  public boolean hasNestedScrollingParent()
  {
    return this.ae.hasNestedScrollingParent();
  }

  public boolean isAttachedToWindow()
  {
    return this.u;
  }

  public boolean isNestedScrollingEnabled()
  {
    return this.ae.isNestedScrollingEnabled();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.E = 0;
    this.u = true;
    this.w = false;
    if (this.p != null)
      this.p.b(this);
    this.aa = false;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.d != null)
      this.d.c();
    this.w = false;
    a(0);
    k();
    this.u = false;
    if (this.p != null)
      this.p.b(this, this.a);
    removeCallbacks(this.ai);
  }

  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i1 = this.r.size();
    for (int i2 = 0; i2 < i1; i2++)
      this.r.get(i2);
  }

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (this.p == null);
    label167: label170: 
    while (true)
    {
      return false;
      if (((0x2 & MotionEventCompat.getSource(paramMotionEvent)) == 0) || (paramMotionEvent.getAction() != 8))
        continue;
      float f1;
      float f2;
      if (this.p.d())
      {
        f1 = -MotionEventCompat.getAxisValue(paramMotionEvent, 9);
        if (!this.p.c())
          break label167;
        f2 = MotionEventCompat.getAxisValue(paramMotionEvent, 10);
      }
      while (true)
      {
        if ((f1 == 0.0F) && (f2 == 0.0F))
          break label170;
        float f3;
        if (this.T == 1.4E-45F)
        {
          TypedValue localTypedValue = new TypedValue();
          boolean bool = getContext().getTheme().resolveAttribute(16842829, localTypedValue, true);
          f3 = 0.0F;
          if (bool)
            this.T = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
        }
        else
        {
          f3 = this.T;
        }
        a((int)(f2 * f3), (int)(f1 * f3), paramMotionEvent);
        return false;
        f1 = 0.0F;
        break;
        f2 = 0.0F;
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = -1;
    int i2 = paramMotionEvent.getAction();
    if ((i2 == 3) || (i2 == 0))
      this.t = null;
    int i3 = this.s.size();
    int i4 = 0;
    if (i4 < i3)
    {
      K localK = (K)this.s.get(i4);
      if ((localK.c()) && (i2 != 3))
        this.t = localK;
    }
    for (int i5 = 1; ; i5 = 0)
    {
      if (i5 == 0)
        break label101;
      r();
      return true;
      i4++;
      break;
    }
    label101: if (this.p == null)
      return false;
    boolean bool1 = this.p.c();
    boolean bool2 = this.p.d();
    if (this.L == null)
      this.L = VelocityTracker.obtain();
    this.L.addMovement(paramMotionEvent);
    int i6 = MotionEventCompat.getActionMasked(paramMotionEvent);
    int i7 = MotionEventCompat.getActionIndex(paramMotionEvent);
    switch (i6)
    {
    case 4:
    default:
      if (this.J == 1)
        break;
      return false;
    case 0:
      label208: this.K = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      int i21 = (int)(0.5F + paramMotionEvent.getX());
      this.O = i21;
      this.M = i21;
      int i22 = (int)(0.5F + paramMotionEvent.getY());
      this.P = i22;
      this.N = i22;
      if (this.J == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        a(1);
      }
      if (!bool1);
    case 5:
    case 2:
    case 6:
    case 1:
    case 3:
    }
    for (int i23 = 1; ; i23 = 0)
    {
      if (bool2)
        i23 |= 2;
      startNestedScroll(i23);
      break label208;
      this.K = MotionEventCompat.getPointerId(paramMotionEvent, i7);
      int i19 = (int)(0.5F + MotionEventCompat.getX(paramMotionEvent, i7));
      this.O = i19;
      this.M = i19;
      int i20 = (int)(0.5F + MotionEventCompat.getY(paramMotionEvent, i7));
      this.P = i20;
      this.N = i20;
      break label208;
      int i8 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.K);
      if (i8 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.K + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      int i9 = (int)(0.5F + MotionEventCompat.getX(paramMotionEvent, i8));
      int i10 = (int)(0.5F + MotionEventCompat.getY(paramMotionEvent, i8));
      if (this.J == 1)
        break label208;
      int i11 = i9 - this.M;
      int i12 = i10 - this.N;
      int i18;
      if ((bool1) && (Math.abs(i11) > this.Q))
      {
        int i16 = this.M;
        int i17 = this.Q;
        if (i11 < 0)
        {
          i18 = i1;
          label527: this.O = (i16 + i18 * i17);
        }
      }
      for (int i13 = 1; ; i13 = 0)
      {
        int i14;
        int i15;
        if ((bool2) && (Math.abs(i12) > this.Q))
        {
          i14 = this.N;
          i15 = this.Q;
          if (i12 >= 0)
            break label609;
        }
        while (true)
        {
          this.P = (i14 + i1 * i15);
          i13 = 1;
          if (i13 == 0)
            break;
          a(1);
          break;
          i18 = 1;
          break label527;
          label609: i1 = 1;
        }
        a(paramMotionEvent);
        break label208;
        this.L.clear();
        stopNestedScroll();
        break label208;
        r();
        break label208;
        break;
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c();
    TraceCompat.beginSection("RV OnLayout");
    e();
    TraceCompat.endSection();
    a(false);
    this.w = true;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.A)
    {
      c();
      w();
      if (aw.a(this.e))
      {
        aw.b(this.e, true);
        this.A = false;
        a(false);
      }
    }
    else
    {
      if (this.o == null)
        break label107;
      this.e.e = this.o.a();
      label65: if (this.p != null)
        break label118;
      e(paramInt1, paramInt2);
    }
    while (true)
    {
      aw.b(this.e, false);
      return;
      this.b.e();
      aw.b(this.e, false);
      break;
      label107: this.e.e = 0;
      break label65;
      label118: this.p.a(this.a, paramInt1, paramInt2);
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    this.k = ((RecyclerView.SavedState)paramParcelable);
    super.onRestoreInstanceState(this.k.getSuperState());
    if ((this.p != null) && (this.k.a != null))
      this.p.a(this.k.a);
  }

  protected Parcelable onSaveInstanceState()
  {
    RecyclerView.SavedState localSavedState = new RecyclerView.SavedState(super.onSaveInstanceState());
    if (this.k != null)
    {
      RecyclerView.SavedState.a(localSavedState, this.k);
      return localSavedState;
    }
    if (this.p != null)
    {
      localSavedState.a = this.p.b();
      return localSavedState;
    }
    localSavedState.a = null;
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4))
      q();
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    int i24;
    int i2;
    if (this.t != null)
    {
      if (i1 == 0)
        this.t = null;
    }
    else
    {
      if (i1 == 0)
        break label112;
      int i23 = this.s.size();
      i24 = 0;
      if (i24 >= i23)
        break label112;
      K localK = (K)this.s.get(i24);
      if (!localK.c())
        break label106;
      this.t = localK;
      i2 = 1;
    }
    while (true)
    {
      if (i2 == 0)
        break label117;
      r();
      return true;
      if ((i1 == 3) || (i1 == 1))
        this.t = null;
      i2 = 1;
      continue;
      label106: i24++;
      break;
      label112: i2 = 0;
    }
    label117: if (this.p == null)
      return false;
    boolean bool1 = this.p.c();
    boolean bool2 = this.p.d();
    if (this.L == null)
      this.L = VelocityTracker.obtain();
    this.L.addMovement(paramMotionEvent);
    MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
    int i3 = MotionEventCompat.getActionMasked(paramMotionEvent);
    int i4 = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (i3 == 0)
    {
      int[] arrayOfInt3 = this.ah;
      this.ah[1] = 0;
      arrayOfInt3[0] = 0;
    }
    localMotionEvent.offsetLocation(this.ah[0], this.ah[1]);
    switch (i3)
    {
    case 4:
    default:
      localMotionEvent.recycle();
      return true;
    case 0:
      this.K = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      int i20 = (int)(0.5F + paramMotionEvent.getX());
      this.O = i20;
      this.M = i20;
      int i21 = (int)(0.5F + paramMotionEvent.getY());
      this.P = i21;
      this.N = i21;
      if (!bool1)
        break;
    case 5:
    case 2:
    case 6:
    case 1:
    case 3:
    }
    label661: label695: label856: for (int i22 = 1; ; i22 = 0)
    {
      if (bool2)
        i22 |= 2;
      startNestedScroll(i22);
      break;
      this.K = MotionEventCompat.getPointerId(paramMotionEvent, i4);
      int i18 = (int)(0.5F + MotionEventCompat.getX(paramMotionEvent, i4));
      this.O = i18;
      this.M = i18;
      int i19 = (int)(0.5F + MotionEventCompat.getY(paramMotionEvent, i4));
      this.P = i19;
      this.N = i19;
      break;
      int i12 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.K);
      if (i12 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.K + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      int i13 = (int)(0.5F + MotionEventCompat.getX(paramMotionEvent, i12));
      int i14 = (int)(0.5F + MotionEventCompat.getY(paramMotionEvent, i12));
      int i15 = this.O - i13;
      int i16 = this.P - i14;
      if (dispatchNestedPreScroll(i15, i16, this.ag, this.af))
      {
        i15 -= this.ag[0];
        i16 -= this.ag[1];
        localMotionEvent.offsetLocation(this.af[0], this.af[1]);
        int[] arrayOfInt1 = this.ah;
        arrayOfInt1[0] += this.af[0];
        int[] arrayOfInt2 = this.ah;
        arrayOfInt2[1] += this.af[1];
      }
      if (this.J != 1)
      {
        if ((!bool1) || (Math.abs(i15) <= this.Q))
          break label1149;
        if (i15 <= 0)
          break label778;
        i15 -= this.Q;
      }
      label747: label1140: label1149: for (int i17 = 1; ; i17 = 0)
      {
        if ((bool2) && (Math.abs(i16) > this.Q))
        {
          if (i16 > 0)
          {
            i16 -= this.Q;
            i17 = 1;
          }
        }
        else
        {
          if (i17 != 0)
            a(1);
          if (this.J != 1)
            break;
          this.O = (i13 - this.af[0]);
          this.P = (i14 - this.af[1]);
          if (!bool1)
            break label802;
          if (!bool2)
            break label808;
        }
        while (a(i15, i16, localMotionEvent))
        {
          getParent().requestDisallowInterceptTouchEvent(true);
          break;
          i15 += this.Q;
          break label661;
          i16 += this.Q;
          break label695;
          i15 = 0;
          break label747;
          i16 = 0;
        }
        a(paramMotionEvent);
        break;
        this.L.computeCurrentVelocity(1000, this.S);
        float f1;
        float f2;
        if (bool1)
        {
          f1 = -VelocityTrackerCompat.getXVelocity(this.L, this.K);
          if (!bool2)
            break label949;
          f2 = -VelocityTrackerCompat.getYVelocity(this.L, this.K);
        }
        int i5;
        int i6;
        int i11;
        while (true)
        {
          if ((f1 != 0.0F) || (f2 != 0.0F))
          {
            i5 = (int)f1;
            i6 = (int)f2;
            if (this.p != null)
              break label955;
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            i11 = 0;
            if (i11 != 0);
          }
          else
          {
            a(0);
          }
          this.L.clear();
          l();
          break;
          f1 = 0.0F;
          break label856;
          f2 = 0.0F;
        }
        boolean bool3 = this.p.c();
        boolean bool4 = this.p.d();
        if ((!bool3) || (Math.abs(i5) < this.R));
        for (int i7 = 0; ; i7 = i5)
        {
          if ((!bool4) || (Math.abs(i6) < this.R));
          for (int i8 = 0; ; i8 = i6)
          {
            if (((i7 == 0) && (i8 == 0)) || (dispatchNestedPreFling(i7, i8)))
              break label1140;
            if ((bool3) || (bool4));
            for (boolean bool5 = true; ; bool5 = false)
            {
              dispatchNestedFling(i7, i8, bool5);
              if (!bool5)
                break;
              int i9 = Math.max(-this.S, Math.min(i7, this.S));
              int i10 = Math.max(-this.S, Math.min(i8, this.S));
              this.U.a(i9, i10);
              i11 = 1;
              break label919;
            }
            r();
            break;
          }
          break label916;
        }
      }
    }
  }

  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    ay localay = b(paramView);
    if (localay != null)
    {
      if (!localay.n())
        break label32;
      localay.h();
    }
    label32: 
    do
    {
      b(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    while (localay.b());
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localay);
  }

  public void requestChildFocus(View paramView1, View paramView2)
  {
    int i1;
    Rect localRect1;
    if (d())
    {
      i1 = 1;
      if ((i1 == 0) && (paramView2 != null))
      {
        this.n.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
        ViewGroup.LayoutParams localLayoutParams = paramView2.getLayoutParams();
        if ((localLayoutParams instanceof ap))
        {
          ap localap = (ap)localLayoutParams;
          if (!localap.c)
          {
            Rect localRect2 = localap.b;
            Rect localRect3 = this.n;
            localRect3.left -= localRect2.left;
            Rect localRect4 = this.n;
            localRect4.right += localRect2.right;
            Rect localRect5 = this.n;
            localRect5.top -= localRect2.top;
            Rect localRect6 = this.n;
            localRect6.bottom += localRect2.bottom;
          }
        }
        offsetDescendantRectToMyCoords(paramView2, this.n);
        offsetRectIntoDescendantCoords(paramView1, this.n);
        localRect1 = this.n;
        if (this.w)
          break label222;
      }
    }
    label222: for (boolean bool = true; ; bool = false)
    {
      requestChildRectangleOnScreen(paramView1, localRect1, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
      i1 = 0;
      break;
    }
  }

  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    ao localao = this.p;
    int i1 = localao.k();
    int i2 = localao.l();
    int i3 = localao.i() - localao.m();
    int i4 = localao.j() - localao.n();
    int i5 = paramView.getLeft() + paramRect.left;
    int i6 = paramView.getTop() + paramRect.top;
    int i7 = i5 + paramRect.width();
    int i8 = i6 + paramRect.height();
    int i9 = Math.min(0, i5 - i1);
    int i10 = Math.min(0, i6 - i2);
    int i11 = Math.max(0, i7 - i3);
    int i12 = Math.max(0, i8 - i4);
    int i13;
    if (ViewCompat.getLayoutDirection(localao.c) == 1)
      if (i11 != 0)
      {
        if (i10 == 0)
          break label222;
        i13 = i10;
        label156: if ((i11 == 0) && (i13 == 0))
          break label309;
        if (!paramBoolean)
          break label237;
        scrollBy(i11, i13);
      }
    while (true)
    {
      return true;
      i11 = Math.max(i9, i7 - i3);
      break;
      if (i9 != 0)
      {
        i11 = i9;
        break;
      }
      i11 = Math.min(i5 - i1, i11);
      break;
      label222: i13 = Math.min(i6 - i2, i12);
      break label156;
      label237: if (this.p == null)
      {
        Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        continue;
      }
      if (!this.p.c())
        i11 = 0;
      if (!this.p.d())
        i13 = 0;
      if ((i11 == 0) && (i13 == 0))
        continue;
      this.U.a(i11, i13, 0, 0);
    }
    label309: return false;
  }

  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int i1 = this.s.size();
    for (int i2 = 0; i2 < i1; i2++)
      this.s.get(i2);
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }

  public void requestLayout()
  {
    if (!this.x)
    {
      super.requestLayout();
      return;
    }
    this.y = true;
  }

  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (this.p == null)
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    boolean bool1;
    boolean bool2;
    do
    {
      return;
      bool1 = this.p.c();
      bool2 = this.p.d();
    }
    while ((!bool1) && (!bool2));
    if (bool1)
      if (!bool2)
        break label67;
    while (true)
    {
      a(paramInt1, paramInt2, null);
      return;
      paramInt1 = 0;
      break;
      label67: paramInt2 = 0;
    }
  }

  public void scrollTo(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
  }

  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool = d();
    int i1 = 0;
    if (bool)
      if (paramAccessibilityEvent == null)
        break label60;
    label60: for (int i2 = AccessibilityEventCompat.getContentChangeTypes(paramAccessibilityEvent); ; i2 = 0)
    {
      int i3 = 0;
      if (i2 == 0);
      while (true)
      {
        this.z = (i3 | this.z);
        i1 = 1;
        if (i1 != 0)
          return;
        super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
        return;
        i3 = i2;
      }
    }
  }

  public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate)
  {
    this.ab = paramRecyclerViewAccessibilityDelegate;
    ViewCompat.setAccessibilityDelegate(this, this.ab);
  }

  public void setAdapter(ah paramah)
  {
    if (this.o != null)
      this.o.b(this.j);
    if (this.d != null)
      this.d.c();
    if (this.p != null)
    {
      ao localao = this.p;
      ar localar2 = this.a;
      for (int i1 = -1 + localao.h(); i1 >= 0; i1--)
      {
        if (b(localao.b(i1)).b())
          continue;
        localao.a(i1, localar2);
      }
      this.p.b(this.a);
    }
    this.a.a();
    this.b.a();
    ah localah1 = this.o;
    this.o = paramah;
    if (paramah != null)
      paramah.a(this.j);
    ar localar1 = this.a;
    ah localah2 = this.o;
    localar1.a();
    localar1.d().a(localah1, localah2, false);
    aw.a(this.e, true);
    y();
    requestLayout();
  }

  public void setChildDrawingOrderCallback$65aef0ea(K paramK)
  {
    if (paramK == this.ac)
      return;
    this.ac = paramK;
    if (this.ac != null);
    for (boolean bool = true; ; bool = false)
    {
      setChildrenDrawingOrderEnabled(bool);
      return;
    }
  }

  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != this.l)
      q();
    this.l = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (this.w)
      requestLayout();
  }

  public void setHasFixedSize(boolean paramBoolean)
  {
    this.v = paramBoolean;
  }

  public void setItemAnimator(ak paramak)
  {
    if (this.d != null)
    {
      this.d.c();
      this.d.a(null);
    }
    this.d = paramak;
    if (this.d != null)
      this.d.a(this.W);
  }

  public void setItemViewCacheSize(int paramInt)
  {
    this.a.a(paramInt);
  }

  public void setLayoutManager(ao paramao)
  {
    if (paramao == this.p)
      return;
    if (this.p != null)
    {
      if (this.u)
        this.p.b(this, this.a);
      this.p.a(null);
    }
    this.a.a();
    q localq = this.c;
    localq.b.a();
    localq.c.clear();
    localq.a.b();
    this.p = paramao;
    if (paramao != null)
    {
      if (paramao.c != null)
        throw new IllegalArgumentException("LayoutManager " + paramao + " is already attached to a RecyclerView: " + paramao.c);
      this.p.a(this);
      if (this.u)
        this.p.b(this);
    }
    requestLayout();
  }

  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    this.ae.setNestedScrollingEnabled(paramBoolean);
  }

  @Deprecated
  public void setOnScrollListener$60a02a29(Z paramZ)
  {
    this.V = paramZ;
  }

  public void setRecycledViewPool(aq paramaq)
  {
    this.a.a(paramaq);
  }

  public void setRecyclerListener$cc56996(K paramK)
  {
    this.q = paramK;
  }

  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default:
      Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + paramInt + "; using default value");
    case 0:
      this.Q = localViewConfiguration.getScaledTouchSlop();
      return;
    case 1:
    }
    this.Q = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
  }

  public void setViewCacheExtension$7dcbd027(au paramau)
  {
    this.a.a(paramau);
  }

  public boolean startNestedScroll(int paramInt)
  {
    return this.ae.startNestedScroll(paramInt);
  }

  public void stopNestedScroll()
  {
    this.ae.stopNestedScroll();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * JD-Core Version:    0.6.0
 */