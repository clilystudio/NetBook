package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.TextView;

public class ExpView extends TextView
{
  public ExpView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setTextSize(9.0F);
    setGravity(17);
    a();
  }

  public final void a()
  {
    setBackgroundResource(2130837784);
    setTextColor(getResources().getColor(2131427547));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.ExpView
 * JD-Core Version:    0.6.0
 */