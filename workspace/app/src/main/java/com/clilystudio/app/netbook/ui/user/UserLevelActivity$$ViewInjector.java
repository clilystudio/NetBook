package com.clilystudio.app.netbook.ui.user;

import android.widget.Button;
import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class UserLevelActivity$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, UserLevelActivity paramUserLevelActivity, Object paramObject) {
        paramUserLevelActivity.mCurrentLevel = ((TextView) paramFinder.findRequiredView(paramObject, 2131493248, "field 'mCurrentLevel'"));
        paramUserLevelActivity.mLevelProgress = ((TextView) paramFinder.findRequiredView(paramObject, 2131493249, "field 'mLevelProgress'"));
        paramUserLevelActivity.mLevelRank = ((TextView) paramFinder.findRequiredView(paramObject, 2131493250, "field 'mLevelRank'"));
        paramUserLevelActivity.mDoTask = ((Button) paramFinder.findRequiredView(paramObject, 2131493253, "field 'mDoTask'"));
    }

    public static void reset(UserLevelActivity paramUserLevelActivity) {
        paramUserLevelActivity.mCurrentLevel = null;
        paramUserLevelActivity.mLevelProgress = null;
        paramUserLevelActivity.mLevelRank = null;
        paramUserLevelActivity.mDoTask = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.UserLevelActivity..ViewInjector
 * JD-Core Version:    0.6.2
 */