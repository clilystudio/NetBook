package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;

public class PostFlag extends FrameLayout
{

  @InjectView(2131493423)
  TextView mDistillateFlag;

  @InjectView(2131493180)
  TextView mHotFlag;

  public PostFlag(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(2130903351, this);
    ButterKnife.inject(this);
  }

  public static boolean b(String paramString)
  {
    String[] arrayOfString = { "distillate", "focus", "hot" };
    for (int i = 0; i < 3; i++)
      if (arrayOfString[i].equals(paramString))
        return true;
    return false;
  }

  public final boolean a(String paramString)
  {
    if (("hot".equals(paramString)) || ("focus".equals(paramString)))
    {
      this.mHotFlag.setVisibility(0);
      this.mDistillateFlag.setVisibility(8);
      return true;
    }
    if ("distillate".equals(paramString))
    {
      this.mDistillateFlag.setVisibility(0);
      this.mHotFlag.setVisibility(8);
      return true;
    }
    return false;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.PostFlag
 * JD-Core Version:    0.6.2
 */