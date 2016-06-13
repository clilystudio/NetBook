package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class UserInfoTaskView$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, UserInfoTaskView userInfoTaskView, Object object) {
        userInfoTaskView.mIcon = (ImageView) butterKnife$Finder.findRequiredView(object, 2131493028, "field 'mIcon'");
        userInfoTaskView.mTitle = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'mTitle'");
        userInfoTaskView.mExp = (ExpView) butterKnife$Finder.findRequiredView(object, 2131493234, "field 'mExp'");
    }

    public static void reset(UserInfoTaskView userInfoTaskView) {
        userInfoTaskView.mIcon = null;
        userInfoTaskView.mTitle = null;
        userInfoTaskView.mExp = null;
    }
}
