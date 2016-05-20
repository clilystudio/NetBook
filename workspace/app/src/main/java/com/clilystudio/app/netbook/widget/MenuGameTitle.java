package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;

public class MenuGameTitle extends LinearLayout
{

  @InjectView(2131493870)
  TextView mSlmReaderAppName;

  @InjectView(2131493871)
  TextView mSlmReaderAppSize;

  public MenuGameTitle(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public MenuGameTitle(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    if (isInEditMode())
    {
      setTitle("wefijwefijweifjwiefjwefiwjefi", "12312");
      setOrientation(1);
    }
  }

  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2130903361, this);
    ButterKnife.inject(this);
  }

  public void setTitle(String paramString1, String paramString2)
  {
    String str = "(" + paramString2 + ")";
    getViewTreeObserver().addOnGlobalLayoutListener(new ai(this, paramString1, str));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.MenuGameTitle
 * JD-Core Version:    0.6.2
 */