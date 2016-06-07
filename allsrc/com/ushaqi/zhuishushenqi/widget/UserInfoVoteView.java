package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

public class UserInfoVoteView extends UserInfoExTaskView
{
  public UserInfoVoteView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    findViewById(2131494047).setPadding(0, 0, 0, 0);
    setExp("经验+15");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.UserInfoVoteView
 * JD-Core Version:    0.6.0
 */