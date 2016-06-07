package com.ushaqi.zhuishushenqi.ui.user;

import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.ushaqi.zhuishushenqi.ui.CircularSmartImageView;

public class UserInfoActivity$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, UserInfoActivity paramUserInfoActivity, Object paramObject)
  {
    paramUserInfoActivity.mPortrait = ((CircularSmartImageView)paramFinder.findRequiredView(paramObject, 2131493146, "field 'mPortrait'"));
    paramUserInfoActivity.mName = ((TextView)paramFinder.findRequiredView(paramObject, 2131492928, "field 'mName'"));
    paramUserInfoActivity.mExp = ((TextView)paramFinder.findRequiredView(paramObject, 2131493234, "field 'mExp'"));
    paramUserInfoActivity.mLevel = ((TextView)paramFinder.findRequiredView(paramObject, 2131493233, "field 'mLevel'"));
    paramUserInfoActivity.mExpProgress = ((ProgressBar)paramFinder.findRequiredView(paramObject, 2131493235, "field 'mExpProgress'"));
    paramUserInfoActivity.mMessageCount = ((TextView)paramFinder.findRequiredView(paramObject, 2131493239, "field 'mMessageCount'"));
  }

  public static void reset(UserInfoActivity paramUserInfoActivity)
  {
    paramUserInfoActivity.mPortrait = null;
    paramUserInfoActivity.mName = null;
    paramUserInfoActivity.mExp = null;
    paramUserInfoActivity.mLevel = null;
    paramUserInfoActivity.mExpProgress = null;
    paramUserInfoActivity.mMessageCount = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.UserInfoActivity..ViewInjector
 * JD-Core Version:    0.6.0
 */