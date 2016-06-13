package com.clilystudio.netbook.ui.user;

import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife$Finder;

public class UserInfoActivity$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, UserInfoActivity userInfoActivity, Object object) {
        userInfoActivity.mPortrait = (CircularSmartImageView) butterKnife$Finder.findRequiredView(object, 2131493146, "field 'mPortrait'");
        userInfoActivity.mName = (TextView) butterKnife$Finder.findRequiredView(object, 2131492928, "field 'mName'");
        userInfoActivity.mExp = (TextView) butterKnife$Finder.findRequiredView(object, 2131493234, "field 'mExp'");
        userInfoActivity.mLevel = (TextView) butterKnife$Finder.findRequiredView(object, 2131493233, "field 'mLevel'");
        userInfoActivity.mExpProgress = (ProgressBar) butterKnife$Finder.findRequiredView(object, 2131493235, "field 'mExpProgress'");
        userInfoActivity.mMessageCount = (TextView) butterKnife$Finder.findRequiredView(object, 2131493239, "field 'mMessageCount'");
    }

    public static void reset(UserInfoActivity userInfoActivity) {
        userInfoActivity.mPortrait = null;
        userInfoActivity.mName = null;
        userInfoActivity.mExp = null;
        userInfoActivity.mLevel = null;
        userInfoActivity.mExpProgress = null;
        userInfoActivity.mMessageCount = null;
    }
}
