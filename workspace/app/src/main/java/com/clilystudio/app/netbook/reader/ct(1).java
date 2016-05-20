package com.clilystudio.app.netbook.reader;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public final class ct extends ViewGroup.LayoutParams
{
  public boolean a;
  public int b;
  float c = 0.0F;
  boolean d;
  int e;
  int f;

  public ct()
  {
    super(-1, -1);
  }

  public ct(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ReaderViewPager.c());
    this.b = localTypedArray.getInteger(0, 48);
    localTypedArray.recycle();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ct
 * JD-Core Version:    0.6.2
 */