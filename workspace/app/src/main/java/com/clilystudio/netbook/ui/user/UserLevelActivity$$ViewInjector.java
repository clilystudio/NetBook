package com.clilystudio.netbook.ui.user;

import android.widget.Button;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class UserLevelActivity$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, UserLevelActivity userLevelActivity, Object object) {
        userLevelActivity.mCurrentLevel = (TextView) butterKnife$Finder.findRequiredView(object, 2131493248, "field 'mCurrentLevel'");
        userLevelActivity.mLevelProgress = (TextView) butterKnife$Finder.findRequiredView(object, 2131493249, "field 'mLevelProgress'");
        userLevelActivity.mLevelRank = (TextView) butterKnife$Finder.findRequiredView(object, 2131493250, "field 'mLevelRank'");
        userLevelActivity.mDoTask = (Button) butterKnife$Finder.findRequiredView(object, 2131493253, "field 'mDoTask'");
    }

    public static void reset(UserLevelActivity userLevelActivity) {
        userLevelActivity.mCurrentLevel = null;
        userLevelActivity.mLevelProgress = null;
        userLevelActivity.mLevelRank = null;
        userLevelActivity.mDoTask = null;
    }
}
