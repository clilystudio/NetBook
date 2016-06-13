package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife$Finder;

public class NotificationAdapter$ViewHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, NotificationAdapter$ViewHolder notificationAdapter$ViewHolder, Object object) {
        notificationAdapter$ViewHolder.mAvatar = (CircularSmartImageView) butterKnife$Finder.findRequiredView(object, 2131492899, "field 'mAvatar'");
        notificationAdapter$ViewHolder.mMainText = (TextView) butterKnife$Finder.findRequiredView(object, 2131493712, "field 'mMainText'");
        notificationAdapter$ViewHolder.mSubText = (TextView) butterKnife$Finder.findRequiredView(object, 2131493713, "field 'mSubText'");
    }

    public static void reset(NotificationAdapter$ViewHolder notificationAdapter$ViewHolder) {
        notificationAdapter$ViewHolder.mAvatar = null;
        notificationAdapter$ViewHolder.mMainText = null;
        notificationAdapter$ViewHolder.mSubText = null;
    }
}
