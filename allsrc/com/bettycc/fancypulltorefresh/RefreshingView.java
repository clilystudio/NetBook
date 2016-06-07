package com.bettycc.fancypulltorefresh;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ProgressBar;

public class RefreshingView extends ProgressBar
{
  public RefreshingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setIndeterminate(true);
    setIndeterminateDrawable(getContext().getResources().getDrawable(R.drawable.fancy_spinner));
    setIndeterminate(true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.bettycc.fancypulltorefresh.RefreshingView
 * JD-Core Version:    0.6.0
 */