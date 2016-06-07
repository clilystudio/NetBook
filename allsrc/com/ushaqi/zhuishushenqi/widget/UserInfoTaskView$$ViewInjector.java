package com.ushaqi.zhuishushenqi.widget;

import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;

public class UserInfoTaskView$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, UserInfoTaskView paramUserInfoTaskView, Object paramObject)
  {
    paramUserInfoTaskView.mIcon = ((ImageView)paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
    paramUserInfoTaskView.mTitle = ((TextView)paramFinder.findRequiredView(paramObject, 2131492936, "field 'mTitle'"));
    paramUserInfoTaskView.mExp = ((ExpView)paramFinder.findRequiredView(paramObject, 2131493234, "field 'mExp'"));
  }

  public static void reset(UserInfoTaskView paramUserInfoTaskView)
  {
    paramUserInfoTaskView.mIcon = null;
    paramUserInfoTaskView.mTitle = null;
    paramUserInfoTaskView.mExp = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.UserInfoTaskView..ViewInjector
 * JD-Core Version:    0.6.0
 */