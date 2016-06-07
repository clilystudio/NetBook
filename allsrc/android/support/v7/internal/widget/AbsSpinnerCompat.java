package android.support.v7.internal.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.SpinnerAdapter;

abstract class AbsSpinnerCompat extends AdapterViewCompat<SpinnerAdapter>
{
  private DataSetObserver A;
  SpinnerAdapter a;
  int b;
  int c;
  final Rect d = new Rect();
  final a e = new a(this);
  private int w = 0;
  private int x = 0;
  private int y = 0;
  private int z = 0;

  AbsSpinnerCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setFocusable(true);
    setWillNotDraw(false);
  }

  final void a()
  {
    this.m = false;
    this.i = false;
    removeAllViewsInLayout();
    this.t = -1;
    this.u = -9223372036854775808L;
    a(-1);
    b(-1);
    invalidate();
  }

  public void a(SpinnerAdapter paramSpinnerAdapter)
  {
    int i = -1;
    if (this.a != null)
    {
      this.a.unregisterDataSetObserver(this.A);
      a();
    }
    this.a = paramSpinnerAdapter;
    this.t = i;
    this.u = -9223372036854775808L;
    if (this.a != null)
    {
      this.s = this.r;
      this.r = this.a.getCount();
      d();
      this.A = new x(this);
      this.a.registerDataSetObserver(this.A);
      if (this.r > 0)
        i = 0;
      a(i);
      b(i);
      if (this.r == 0)
        f();
    }
    while (true)
    {
      requestLayout();
      return;
      d();
      a();
      f();
    }
  }

  public final View b()
  {
    if ((this.r > 0) && (this.p >= 0))
      return getChildAt(this.p - this.f);
    return null;
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.LayoutParams(-1, -2);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = getPaddingLeft();
    int k = getPaddingTop();
    int m = getPaddingRight();
    int n = getPaddingBottom();
    Rect localRect1 = this.d;
    int i1;
    label62: int i2;
    label84: int i3;
    label106: int i7;
    int i6;
    int i5;
    if (j > 0)
    {
      localRect1.left = j;
      Rect localRect2 = this.d;
      if (k <= 0)
        break label391;
      i1 = k;
      localRect2.top = i1;
      Rect localRect3 = this.d;
      if (m <= 0)
        break label397;
      i2 = m;
      localRect3.right = i2;
      Rect localRect4 = this.d;
      if (n <= 0)
        break label403;
      i3 = n;
      localRect4.bottom = i3;
      if (this.m)
        e();
      int i4 = this.n;
      if ((i4 < 0) || (this.a == null) || (i4 >= this.a.getCount()))
        break label409;
      View localView = this.e.a(i4);
      if (localView == null)
        localView = this.a.getView(i4, null, this);
      if (localView == null)
        break label409;
      this.e.a(i4, localView);
      if (localView.getLayoutParams() == null)
      {
        this.v = true;
        localView.setLayoutParams(generateDefaultLayoutParams());
        this.v = false;
      }
      measureChild(localView, paramInt1, paramInt2);
      i7 = localView.getMeasuredHeight() + this.d.top + this.d.bottom;
      i6 = localView.getMeasuredWidth() + this.d.left + this.d.right;
      i5 = 0;
    }
    while (true)
    {
      if (i5 != 0)
      {
        i7 = this.d.top + this.d.bottom;
        if (i == 0)
          i6 = this.d.left + this.d.right;
      }
      int i8 = Math.max(i7, getSuggestedMinimumHeight());
      int i9 = Math.max(i6, getSuggestedMinimumWidth());
      int i10 = ViewCompat.resolveSizeAndState(i8, paramInt2, 0);
      setMeasuredDimension(ViewCompat.resolveSizeAndState(i9, paramInt1, 0), i10);
      this.b = paramInt2;
      this.c = paramInt1;
      return;
      j = 0;
      break;
      label391: i1 = 0;
      break label62;
      label397: i2 = 0;
      break label84;
      label403: i3 = 0;
      break label106;
      label409: i5 = 1;
      i6 = 0;
      i7 = 0;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    AbsSpinnerCompat.SavedState localSavedState = (AbsSpinnerCompat.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (localSavedState.a >= 0L)
    {
      this.m = true;
      this.i = true;
      this.h = localSavedState.a;
      this.g = localSavedState.b;
      this.j = 0;
      requestLayout();
    }
  }

  public Parcelable onSaveInstanceState()
  {
    AbsSpinnerCompat.SavedState localSavedState = new AbsSpinnerCompat.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.o;
    if (localSavedState.a >= 0L)
    {
      localSavedState.b = this.n;
      return localSavedState;
    }
    localSavedState.b = -1;
    return localSavedState;
  }

  public void requestLayout()
  {
    if (!this.v)
      super.requestLayout();
  }

  public void setSelection(int paramInt)
  {
    b(paramInt);
    requestLayout();
    invalidate();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.AbsSpinnerCompat
 * JD-Core Version:    0.6.0
 */