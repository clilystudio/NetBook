package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class UserInfoExTaskView extends UserInfoTaskView
{
  public UserInfoExTaskView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setExp("经验+5");
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.UserInfoExTaskView
 * JD-Core Version:    0.6.2
 */