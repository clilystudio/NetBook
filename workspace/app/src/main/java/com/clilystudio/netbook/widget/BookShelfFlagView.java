package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;

public class BookShelfFlagView extends TextView
{
  private int a;
  private final Drawable b;

  public BookShelfFlagView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setVisibility(8);
    setTextColor(-1);
    setGravity(17);
    setTextSize(getResources().getDimensionPixelSize(2131099774));
    this.b = getResources().getDrawable(2130838154);
  }

  private void a()
  {
    Resources localResources = getResources();
    int i = localResources.getDimensionPixelSize(2131099697);
    int j = localResources.getDimensionPixelSize(2131099696);
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    localLayoutParams.width = i;
    localLayoutParams.height = j;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.a != 3)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    setMeasuredDimension(this.b.getIntrinsicWidth(), this.b.getIntrinsicHeight());
  }

  public void setType(int paramInt)
  {
    this.a = paramInt;
    switch (this.a)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (this.a == 0)
    {
      setVisibility(4);
      return;
      a();
      setBackgroundResource(2130838153);
      setText("推广");
      continue;
      a();
      setBackgroundResource(2130838142);
      setText("公告");
      continue;
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      localLayoutParams.width = -2;
      localLayoutParams.height = -2;
      setText("");
      setBackgroundResource(2130838154);
      continue;
      a();
      setBackgroundResource(2130838152);
      setText("待杀");
    }
    setVisibility(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.BookShelfFlagView
 * JD-Core Version:    0.6.0
 */