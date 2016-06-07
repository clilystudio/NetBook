package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.text.TextUtilsCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.widget.A;
import android.support.v7.internal.widget.ListViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import java.lang.reflect.Method;

public class L
{
  private static Method a;
  int b = 2147483647;
  private Context c;
  private PopupWindow d;
  private ListAdapter e;
  private O f;
  private int g = -2;
  private int h = -2;
  private int i;
  private int j;
  private boolean k;
  private int l = 0;
  private boolean m = false;
  private boolean n = false;
  private int o = 0;
  private DataSetObserver p;
  private View q;
  private AdapterView.OnItemClickListener r;
  private final W s = new W(this, 0);
  private final V t = new V(this, 0);
  private final U u = new U(this, 0);
  private final S v = new S(this, 0);
  private Handler w = new Handler();
  private Rect x = new Rect();
  private boolean y;

  static
  {
    try
    {
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", arrayOfClass);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
    }
  }

  public L(Context paramContext)
  {
    this(paramContext, null, R.attr.listPopupWindowStyle);
  }

  public L(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }

  public L(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this.c = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ListPopupWindow, paramInt1, paramInt2);
    this.i = localTypedArray.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
    this.j = localTypedArray.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
    if (this.j != 0)
      this.k = true;
    localTypedArray.recycle();
    this.d = new A(paramContext, paramAttributeSet, paramInt1);
    this.d.setInputMethodMode(1);
    TextUtilsCompat.getLayoutDirectionFromLocale(this.c.getResources().getConfiguration().locale);
  }

  public final void a()
  {
    this.d.dismiss();
    this.d.setContentView(null);
    this.f = null;
    this.w.removeCallbacks(this.s);
  }

  public final void a(int paramInt)
  {
    this.o = 0;
  }

  public final void a(Drawable paramDrawable)
  {
    this.d.setBackgroundDrawable(paramDrawable);
  }

  public final void a(View paramView)
  {
    this.q = paramView;
  }

  public final void a(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.r = paramOnItemClickListener;
  }

  public void a(ListAdapter paramListAdapter)
  {
    if (this.p == null)
      this.p = new T(this, 0);
    while (true)
    {
      this.e = paramListAdapter;
      if (this.e != null)
        paramListAdapter.registerDataSetObserver(this.p);
      if (this.f != null)
        this.f.setAdapter(this.e);
      return;
      if (this.e == null)
        continue;
      this.e.unregisterDataSetObserver(this.p);
    }
  }

  public final void a(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.d.setOnDismissListener(paramOnDismissListener);
  }

  public final void a(boolean paramBoolean)
  {
    this.y = true;
    this.d.setFocusable(true);
  }

  public final void b(int paramInt)
  {
    this.l = paramInt;
  }

  public final boolean b()
  {
    return this.d.isShowing();
  }

  public final void c()
  {
    boolean bool2;
    label126: int i1;
    if (this.f == null)
    {
      Context localContext = this.c;
      new M(this);
      if (!this.y)
      {
        bool2 = true;
        this.f = new O(localContext, bool2);
        this.f.setAdapter(this.e);
        this.f.setOnItemClickListener(this.r);
        this.f.setFocusable(true);
        this.f.setFocusableInTouchMode(true);
        this.f.setOnItemSelectedListener(new N(this));
        this.f.setOnScrollListener(this.u);
        O localO2 = this.f;
        this.d.setContentView(localO2);
        Drawable localDrawable1 = this.d.getBackground();
        if (localDrawable1 == null)
          break label344;
        localDrawable1.getPadding(this.x);
        i1 = this.x.top + this.x.bottom;
        if (!this.k)
          this.j = (-this.x.top);
      }
    }
    int i2;
    int i15;
    int i18;
    int i19;
    label265: int i21;
    while (true)
    {
      this.d.getInputMethodMode();
      i2 = this.d.getMaxAvailableHeight(this.q, this.j);
      if (this.g != -1)
        break label356;
      i15 = i1 + i2;
      boolean bool1 = f();
      if (!this.d.isShowing())
        break label844;
      if (this.h != -1)
        break label743;
      i18 = -1;
      if (this.g != -1)
        break label819;
      if (!bool1)
        break label773;
      i19 = i15;
      if (!bool1)
        break label785;
      PopupWindow localPopupWindow3 = this.d;
      if (this.h != -1)
        break label779;
      i21 = -1;
      label287: localPopupWindow3.setWindowLayoutMode(i21, 0);
      label295: this.d.setOutsideTouchable(true);
      this.d.update(this.q, this.i, this.j, i18, i19);
      label326: return;
      bool2 = false;
      break;
      this.d.getContentView();
      break label126;
      label344: this.x.setEmpty();
      i1 = 0;
    }
    label356: int i3;
    switch (this.h)
    {
    default:
      i3 = View.MeasureSpec.makeMeasureSpec(this.h, 1073741824);
    case -2:
    case -1:
    }
    O localO1;
    int i4;
    int i5;
    int i6;
    Drawable localDrawable2;
    ListAdapter localListAdapter;
    label461: int i14;
    while (true)
    {
      localO1 = this.f;
      i4 = localO1.getListPaddingTop();
      i5 = localO1.getListPaddingBottom();
      localO1.getListPaddingLeft();
      localO1.getListPaddingRight();
      i6 = localO1.getDividerHeight();
      localDrawable2 = localO1.getDivider();
      localListAdapter = localO1.getAdapter();
      if (localListAdapter != null)
        break label561;
      i7 = i5 + i4;
      if (i7 <= 0)
        break label1110;
      i14 = i1 + 0;
      label471: i15 = i14 + i7;
      break;
      i3 = View.MeasureSpec.makeMeasureSpec(this.c.getResources().getDisplayMetrics().widthPixels - (this.x.left + this.x.right), -2147483648);
      continue;
      i3 = View.MeasureSpec.makeMeasureSpec(this.c.getResources().getDisplayMetrics().widthPixels - (this.x.left + this.x.right), 1073741824);
    }
    label561: int i7 = i5 + i4;
    label578: View localView1;
    int i10;
    label596: View localView2;
    label628: int i12;
    if ((i6 > 0) && (localDrawable2 != null))
    {
      localView1 = null;
      int i8 = 0;
      int i9 = localListAdapter.getCount();
      i10 = 0;
      if (i10 >= i9)
        break label741;
      int i11 = localListAdapter.getItemViewType(i10);
      if (i11 == i8)
        break label1116;
      localView2 = null;
      i8 = i11;
      localView1 = localListAdapter.getView(i10, localView2, localO1);
      ViewGroup.LayoutParams localLayoutParams = localView1.getLayoutParams();
      if ((localLayoutParams == null) || (localLayoutParams.height <= 0))
        break label727;
      i12 = View.MeasureSpec.makeMeasureSpec(localLayoutParams.height, 1073741824);
      label676: localView1.measure(i3, i12);
      if (i10 <= 0)
        break label1123;
    }
    label727: label855: label866: label1123: for (int i13 = i7 + i6; ; i13 = i7)
    {
      while (true)
      {
        i7 = i13 + localView1.getMeasuredHeight();
        if (i7 >= i2)
        {
          i7 = i2;
          break label461;
          i6 = 0;
          break label578;
          i12 = View.MeasureSpec.makeMeasureSpec(0, 0);
          break label676;
        }
        i10++;
        break label596;
        label741: break label461;
        label743: if (this.h == -2)
        {
          i18 = this.q.getWidth();
          break;
        }
        i18 = this.h;
        break;
        i19 = -1;
        break label265;
        i21 = 0;
        break label287;
        PopupWindow localPopupWindow2 = this.d;
        if (this.h == -1);
        for (int i20 = -1; ; i20 = 0)
        {
          localPopupWindow2.setWindowLayoutMode(i20, -1);
          break;
        }
        if (this.g == -2)
        {
          i19 = i15;
          break label295;
        }
        i19 = this.g;
        break label295;
        int i16;
        int i17;
        if (this.h == -1)
        {
          i16 = -1;
          if (this.g != -1)
            break label1055;
          i17 = -1;
          this.d.setWindowLayoutMode(i16, i17);
          if (a == null);
        }
        try
        {
          Method localMethod = a;
          PopupWindow localPopupWindow1 = this.d;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Boolean.valueOf(true);
          localMethod.invoke(localPopupWindow1, arrayOfObject);
          this.d.setOutsideTouchable(true);
          this.d.setTouchInterceptor(this.t);
          PopupWindowCompat.showAsDropDown(this.d, this.q, this.i, this.j, this.l);
          this.f.setSelection(-1);
          if ((!this.y) || (this.f.isInTouchMode()))
            e();
          if (this.y)
            break label326;
          this.w.post(this.v);
          return;
          if (this.h == -2)
          {
            this.d.setWidth(this.q.getWidth());
            i16 = 0;
            break label855;
          }
          this.d.setWidth(this.h);
          i16 = 0;
          break label855;
          if (this.g == -2)
          {
            this.d.setHeight(i15);
            i17 = 0;
            break label866;
          }
          this.d.setHeight(this.g);
          i17 = 0;
        }
        catch (Exception localException)
        {
          while (true)
            Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
      }
      i14 = 0;
      break label471;
      localView2 = localView1;
      break label628;
    }
  }

  public final void c(int paramInt)
  {
    Drawable localDrawable = this.d.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(this.x);
      this.h = (paramInt + (this.x.left + this.x.right));
      return;
    }
    this.h = paramInt;
  }

  public final View d()
  {
    return this.q;
  }

  public final void d(int paramInt)
  {
    this.d.setInputMethodMode(2);
  }

  public final void e()
  {
    O localO = this.f;
    if (localO != null)
    {
      O.a(localO, true);
      localO.requestLayout();
    }
  }

  public final boolean f()
  {
    return this.d.getInputMethodMode() == 2;
  }

  public final ListView g()
  {
    return this.f;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.L
 * JD-Core Version:    0.6.0
 */