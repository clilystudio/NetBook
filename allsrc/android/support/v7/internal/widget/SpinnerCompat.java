package android.support.v7.internal.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.ApplicationInfo;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.SpinnerAdapter;
import com.handmark.pulltorefresh.library.internal.e;

final class SpinnerCompat extends AbsSpinnerCompat
  implements DialogInterface.OnClickListener
{
  private boolean A;
  private Rect B = new Rect();
  private android.support.v7.widget.P w;
  private U x;
  private Q y;
  private int z;

  SpinnerCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, null, paramInt, -1);
  }

  private SpinnerCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1);
    e locale = e.a(paramContext, paramAttributeSet, R.styleable.Spinner, paramInt1, 0);
    if (locale.e(R.styleable.Spinner_android_background))
      setBackgroundDrawable(locale.a(R.styleable.Spinner_android_background));
    switch (locale.a(R.styleable.Spinner_spinnerMode, 0))
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      this.z = locale.a(R.styleable.Spinner_android_gravity, 17);
      this.x.a(locale.d(R.styleable.Spinner_prompt));
      this.A = locale.a(R.styleable.Spinner_disableChildrenWhenDisabled, false);
      locale.b();
      if (this.y != null)
      {
        this.x.a(this.y);
        this.y = null;
      }
      locale.c();
      return;
      this.x = new P(this, 0);
      continue;
      R localR = new R(this, paramContext, paramAttributeSet, paramInt1);
      locale.e(R.styleable.Spinner_android_dropDownWidth, -2);
      localR.a(locale.a(R.styleable.Spinner_android_popupBackground));
      this.x = localR;
      this.w = new N(this, this, localR);
    }
  }

  private View a(int paramInt, boolean paramBoolean)
  {
    if (!this.m)
    {
      View localView2 = this.e.a(paramInt);
      if (localView2 != null)
      {
        a(localView2, paramBoolean);
        return localView2;
      }
    }
    View localView1 = this.a.getView(paramInt, null, this);
    a(localView1, paramBoolean);
    return localView1;
  }

  private void a(View paramView, boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams == null)
      localLayoutParams = generateDefaultLayoutParams();
    if (paramBoolean)
      addViewInLayout(paramView, 0, localLayoutParams);
    paramView.setSelected(hasFocus());
    if (this.A)
      paramView.setEnabled(isEnabled());
    int i = ViewGroup.getChildMeasureSpec(this.b, this.d.top + this.d.bottom, localLayoutParams.height);
    paramView.measure(ViewGroup.getChildMeasureSpec(this.c, this.d.left + this.d.right, localLayoutParams.width), i);
    int j = this.d.top + (getMeasuredHeight() - this.d.bottom - this.d.top - paramView.getMeasuredHeight()) / 2;
    int k = j + paramView.getMeasuredHeight();
    paramView.layout(0, j, 0 + paramView.getMeasuredWidth(), k);
  }

  final void a(y paramy)
  {
    super.setOnItemClickListener(paramy);
  }

  public final void a(SpinnerAdapter paramSpinnerAdapter)
  {
    super.a(paramSpinnerAdapter);
    this.e.a();
    if ((getContext().getApplicationInfo().targetSdkVersion >= 21) && (paramSpinnerAdapter != null) && (paramSpinnerAdapter.getViewTypeCount() != 1))
      throw new IllegalArgumentException("Spinner adapter view type count must be 1");
    if (this.x != null)
    {
      this.x.a(new Q(paramSpinnerAdapter));
      return;
    }
    this.y = new Q(paramSpinnerAdapter);
  }

  public final int getBaseline()
  {
    int i = -1;
    View localView;
    if (getChildCount() > 0)
      localView = getChildAt(0);
    while (true)
    {
      if (localView != null)
      {
        int k = localView.getBaseline();
        if (k >= 0)
          i = k + localView.getTop();
      }
      return i;
      SpinnerAdapter localSpinnerAdapter = this.a;
      localView = null;
      if (localSpinnerAdapter == null)
        continue;
      int j = this.a.getCount();
      localView = null;
      if (j <= 0)
        continue;
      localView = a(0, false);
      this.e.a(0, localView);
    }
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    setSelection(paramInt);
    paramDialogInterface.dismiss();
  }

  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((this.x != null) && (this.x.b()))
      this.x.a();
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.k = true;
    int i = this.d.left;
    int j = getRight() - getLeft() - this.d.left - this.d.right;
    if (this.m)
      e();
    if (this.r == 0)
    {
      a();
      this.k = false;
      return;
    }
    if (this.n >= 0)
      a(this.n);
    int k = getChildCount();
    a locala = this.e;
    int m = this.f;
    for (int n = 0; n < k; n++)
    {
      View localView2 = getChildAt(n);
      locala.a(m + n, localView2);
    }
    removeAllViewsInLayout();
    this.f = this.p;
    View localView1;
    int i1;
    if (this.a != null)
    {
      localView1 = a(this.p, true);
      i1 = localView1.getMeasuredWidth();
      int i2 = ViewCompat.getLayoutDirection(this);
      switch (0x7 & GravityCompat.getAbsoluteGravity(this.z, i2))
      {
      default:
      case 1:
      case 5:
      }
    }
    while (true)
    {
      localView1.offsetLeftAndRight(i);
      this.e.a();
      invalidate();
      f();
      this.m = false;
      this.i = false;
      b(this.p);
      break;
      i = i + j / 2 - i1 / 2;
      continue;
      i = i + j - i1;
    }
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    SpinnerAdapter localSpinnerAdapter;
    Drawable localDrawable;
    int j;
    if ((this.x != null) && (View.MeasureSpec.getMode(paramInt1) == -2147483648))
    {
      int i = getMeasuredWidth();
      localSpinnerAdapter = this.a;
      localDrawable = getBackground();
      j = 0;
      if (localSpinnerAdapter == null)
        setMeasuredDimension(Math.min(Math.max(i, j), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
    else
    {
      return;
    }
    int k = View.MeasureSpec.makeMeasureSpec(0, 0);
    int m = View.MeasureSpec.makeMeasureSpec(0, 0);
    int n = Math.max(0, this.n);
    int i1 = Math.min(localSpinnerAdapter.getCount(), n + 15);
    int i2 = Math.max(0, n - (15 - (i1 - n)));
    View localView1 = null;
    int i3 = 0;
    int i4 = 0;
    label137: int i5;
    if (i2 < i1)
    {
      i5 = localSpinnerAdapter.getItemViewType(i2);
      if (i5 == i4)
        break label279;
    }
    for (View localView2 = null; ; localView2 = localView1)
    {
      localView1 = localSpinnerAdapter.getView(i2, localView2, this);
      if (localView1.getLayoutParams() == null)
        localView1.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      localView1.measure(k, m);
      i3 = Math.max(i3, localView1.getMeasuredWidth());
      i2++;
      i4 = i5;
      break label137;
      if (localDrawable != null)
      {
        localDrawable.getPadding(this.B);
        j = i3 + (this.B.left + this.B.right);
        break;
      }
      j = i3;
      break;
      label279: i5 = i4;
    }
  }

  public final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    SpinnerCompat.SavedState localSavedState = (SpinnerCompat.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (localSavedState.c)
    {
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver != null)
        localViewTreeObserver.addOnGlobalLayoutListener(new O(this));
    }
  }

  public final Parcelable onSaveInstanceState()
  {
    SpinnerCompat.SavedState localSavedState = new SpinnerCompat.SavedState(super.onSaveInstanceState());
    if ((this.x != null) && (this.x.b()));
    for (boolean bool = true; ; bool = false)
    {
      localSavedState.c = bool;
      return localSavedState;
    }
  }

  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.w != null) && (this.w.onTouch(this, paramMotionEvent)))
      return true;
    return super.onTouchEvent(paramMotionEvent);
  }

  public final boolean performClick()
  {
    boolean bool = super.performClick();
    if (!bool)
    {
      bool = true;
      if (!this.x.b())
        this.x.c();
    }
    return bool;
  }

  public final void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (this.A)
    {
      int i = getChildCount();
      for (int j = 0; j < i; j++)
        getChildAt(j).setEnabled(paramBoolean);
    }
  }

  public final void setOnItemClickListener(y paramy)
  {
    throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.SpinnerCompat
 * JD-Core Version:    0.6.0
 */