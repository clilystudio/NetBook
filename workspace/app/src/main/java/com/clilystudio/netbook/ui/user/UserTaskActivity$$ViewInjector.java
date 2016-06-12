package com.clilystudio.netbook.ui.user;

import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class UserTaskActivity$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, UserTaskActivity UserTaskActivity2, Object Object3) {
        UserTaskActivity2.mExpInfo = (TextView) Finder1.findRequiredView(Object3, 2131493254, "field 'mExpInfo'");
        UserTaskActivity2.mExpLaunch = (TextView) Finder1.findRequiredView(Object3, 2131493255, "field 'mExpLaunch'");
        UserTaskActivity2.mExpShareTopic = (TextView) Finder1.findRequiredView(Object3, 2131493256, "field 'mExpShareTopic'");
        UserTaskActivity2.mExpShareBook = (TextView) Finder1.findRequiredView(Object3, 2131493257, "field 'mExpShareBook'");
        UserTaskActivity2.mExpVote = (TextView) Finder1.findRequiredView(Object3, 2131493259, "field 'mExpVote'");
        UserTaskActivity2.mVoteView = Finder1.findRequiredView(Object3, 2131493258, "field 'mVoteView'");
    }

    public static void reset(UserTaskActivity UserTaskActivity1) {
        UserTaskActivity1.mExpInfo = null;
        UserTaskActivity1.mExpLaunch = null;
        UserTaskActivity1.mExpShareTopic = null;
        UserTaskActivity1.mExpShareBook = null;
        UserTaskActivity1.mExpVote = null;
        UserTaskActivity1.mVoteView = null;
    }
}
