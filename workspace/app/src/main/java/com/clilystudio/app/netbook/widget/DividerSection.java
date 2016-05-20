package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.R.styleable;

public class DividerSection extends RelativeLayout
{
  private final FrameLayout a;
  private final View b;
  private final Drawable c;

  public DividerSection(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.b = new View(paramContext);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.DividerSection);
    this.c = localTypedArray.getDrawable(0);
    if (this.c != null)
      this.b.setBackgroundDrawable(this.c);
    while (true)
    {
      localTypedArray.recycle();
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, 1);
      localLayoutParams.addRule(12);
      this.b.setLayoutParams(localLayoutParams);
      addView(this.b);
      this.a = new FrameLayout(paramContext);
      this.a.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
      addView(this.a);
      this.a.setVisibility(8);
      return;
      if (a.a(getContext(), "customer_night_theme", false))
        this.b.setBackgroundResource(2130838147);
      else
        this.b.setBackgroundResource(2130838151);
    }
  }

  public final FrameLayout a()
  {
    this.a.setVisibility(0);
    return this.a;
  }

  public void setDividerMatchParent()
  {
    this.b.setBackgroundColor(getResources().getColor(2131427454));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.DividerSection
 * JD-Core Version:    0.6.2
 */