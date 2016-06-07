package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.util.AttributeSet;
import com.clilystudio.netbook.widget.UserInfoExTaskView;

public class UserInfoTaskLaunchView extends UserInfoExTaskView
{
  public UserInfoTaskLaunchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setExp("经验+10");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.UserInfoTaskLaunchView
 * JD-Core Version:    0.6.0
 */