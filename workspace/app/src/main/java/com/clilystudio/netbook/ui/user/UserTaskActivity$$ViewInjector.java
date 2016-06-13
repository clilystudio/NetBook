package com.clilystudio.netbook.ui.user;

import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class UserTaskActivity$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, UserTaskActivity userTaskActivity, Object object) {
        userTaskActivity.mExpInfo = (TextView) butterKnife$Finder.findRequiredView(object, 2131493254, "field 'mExpInfo'");
        userTaskActivity.mExpLaunch = (TextView) butterKnife$Finder.findRequiredView(object, 2131493255, "field 'mExpLaunch'");
        userTaskActivity.mExpShareTopic = (TextView) butterKnife$Finder.findRequiredView(object, 2131493256, "field 'mExpShareTopic'");
        userTaskActivity.mExpShareBook = (TextView) butterKnife$Finder.findRequiredView(object, 2131493257, "field 'mExpShareBook'");
        userTaskActivity.mExpVote = (TextView) butterKnife$Finder.findRequiredView(object, 2131493259, "field 'mExpVote'");
        userTaskActivity.mVoteView = butterKnife$Finder.findRequiredView(object, 2131493258, "field 'mVoteView'");
    }

    public static void reset(UserTaskActivity userTaskActivity) {
        userTaskActivity.mExpInfo = null;
        userTaskActivity.mExpLaunch = null;
        userTaskActivity.mExpShareTopic = null;
        userTaskActivity.mExpShareBook = null;
        userTaskActivity.mExpVote = null;
        userTaskActivity.mVoteView = null;
    }
}
