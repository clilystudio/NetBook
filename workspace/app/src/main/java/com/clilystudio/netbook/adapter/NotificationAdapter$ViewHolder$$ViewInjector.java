package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife$Finder;

public class NotificationAdapter$ViewHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, NotificationAdapter$ViewHolder ViewHolder2, Object Object3) {
        ViewHolder2.mAvatar = (CircularSmartImageView) Finder1.findRequiredView(Object3, 2131492899, "field 'mAvatar'");
        ViewHolder2.mMainText = (TextView) Finder1.findRequiredView(Object3, 2131493712, "field 'mMainText'");
        ViewHolder2.mSubText = (TextView) Finder1.findRequiredView(Object3, 2131493713, "field 'mSubText'");
    }

    public static void reset(NotificationAdapter$ViewHolder ViewHolder1) {
        ViewHolder1.mAvatar = null;
        ViewHolder1.mMainText = null;
        ViewHolder1.mSubText = null;
    }
}
