package com.clilystudio.netbook.ui.user;

import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.ui.CircularSmartImageView;

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

