package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.ushaqi.zhuishushenqi.R.styleable;

public class LoadingContainer extends FrameLayout
{
  private View a;
  private final View b;
  private final View c;

  public LoadingContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.LoadingContainer);
    int i = localTypedArray.getResourceId(0, 2130903324);
    int j = localTypedArray.getResourceId(1, 2130903324);
    localTypedArray.recycle();
    this.b = LayoutInflater.from(paramContext).inflate(i, this, false);
    this.c = LayoutInflater.from(paramContext).inflate(j, this, false);
  }

  public final void a()
  {
    this.b.setVisibility(8);
    this.c.setVisibility(8);
    this.a.setVisibility(0);
  }

  public final void b()
  {
    this.b.setVisibility(0);
    this.c.setVisibility(8);
    this.a.setVisibility(8);
  }

  public final void c()
  {
    this.b.setVisibility(8);
    this.c.setVisibility(0);
    this.a.setVisibility(8);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (getChildCount() != 1)
      throw new RuntimeException("You must set one content child!");
    this.a = getChildAt(0);
    addView(this.b);
    addView(this.c);
    a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.LoadingContainer
 * JD-Core Version:    0.6.0
 */