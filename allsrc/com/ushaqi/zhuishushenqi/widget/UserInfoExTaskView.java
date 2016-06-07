package com.ushaqi.zhuishushenqi.widget;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.UserInfoExTaskView
 * JD-Core Version:    0.6.0
 */