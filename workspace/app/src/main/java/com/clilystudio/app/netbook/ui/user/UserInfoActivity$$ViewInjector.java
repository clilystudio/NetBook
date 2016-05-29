package com.clilystudio.app.netbook.ui.user;

import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.app.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife.Finder;

public class UserInfoActivity$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, UserInfoActivity paramUserInfoActivity, Object paramObject) {
        paramUserInfoActivity.mPortrait = ((CircularSmartImageView) paramFinder.findRequiredView(paramObject, 2131493146, "field 'mPortrait'"));
        paramUserInfoActivity.mName = ((TextView) paramFinder.findRequiredView(paramObject, 2131492928, "field 'mName'"));
        paramUserInfoActivity.mExp = ((TextView) paramFinder.findRequiredView(paramObject, 2131493234, "field 'mExp'"));
        paramUserInfoActivity.mLevel = ((TextView) paramFinder.findRequiredView(paramObject, 2131493233, "field 'mLevel'"));
        paramUserInfoActivity.mExpProgress = ((ProgressBar) paramFinder.findRequiredView(paramObject, 2131493235, "field 'mExpProgress'"));
        paramUserInfoActivity.mMessageCount = ((TextView) paramFinder.findRequiredView(paramObject, 2131493239, "field 'mMessageCount'"));
    }

    public static void reset(UserInfoActivity paramUserInfoActivity) {
        paramUserInfoActivity.mPortrait = null;
        paramUserInfoActivity.mName = null;
        paramUserInfoActivity.mExp = null;
        paramUserInfoActivity.mLevel = null;
        paramUserInfoActivity.mExpProgress = null;
        paramUserInfoActivity.mMessageCount = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.UserInfoActivity..ViewInjector
 * JD-Core Version:    0.6.2
 */