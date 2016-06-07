package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;

public class TagsLayout extends ViewGroup
{
  private int a;

  public TagsLayout(Context paramContext)
  {
    super(paramContext);
  }

  public TagsLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof ViewGroup.LayoutParams;
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.LayoutParams(1, 1);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = paramInt3 - paramInt1;
    int k = getPaddingLeft();
    int m = getPaddingTop();
    int n = k;
    for (int i1 = 0; i1 < i; i1++)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 8)
        continue;
      int i2 = localView.getMeasuredWidth();
      int i3 = localView.getMeasuredHeight();
      ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
      if (n + i2 > j)
      {
        n = getPaddingLeft();
        m += this.a;
      }
      localView.layout(n, m, n + i2, i3 + m);
      n += i2 + localLayoutParams.width;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2) - getPaddingTop() - getPaddingBottom();
    int k = getChildCount();
    int m = getPaddingLeft();
    int n = getPaddingTop();
    int i1 = 0;
    int i2 = 0;
    while (i1 < k)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() != 8)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i, -2147483648), View.MeasureSpec.makeMeasureSpec(j, 0));
        int i4 = localView.getMeasuredWidth();
        ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
        i2 = Math.max(i2, localView.getMeasuredHeight() + localLayoutParams.height);
        if (m + i4 > i)
        {
          m = getPaddingLeft();
          n += i2;
        }
        m += i4 + localLayoutParams.width;
      }
      i1++;
    }
    this.a = i2;
    int i3;
    if (View.MeasureSpec.getMode(paramInt2) == 0)
      i3 = n + i2;
    while (true)
    {
      setMeasuredDimension(i, i3);
      return;
      if ((View.MeasureSpec.getMode(paramInt2) == -2147483648) && (n + i2 < j))
      {
        i3 = n + i2;
        continue;
      }
      i3 = j;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.TagsLayout
 * JD-Core Version:    0.6.0
 */