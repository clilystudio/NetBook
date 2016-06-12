package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife$Finder;

public class HomeTopicAdapter$ViewHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, HomeTopicAdapter$ViewHolder ViewHolder2, Object Object3) {
        ViewHolder2.mCover = (SmartImageView) Finder1.findRequiredView(Object3, 2131493604, "field 'mCover'");
        ViewHolder2.mTitle = (TextView) Finder1.findRequiredView(Object3, 2131492936, "field 'mTitle'");
        ViewHolder2.mCount = (TextView) Finder1.findRequiredView(Object3, 2131493239, "field 'mCount'");
    }

    public static void reset(HomeTopicAdapter$ViewHolder ViewHolder1) {
        ViewHolder1.mCover = null;
        ViewHolder1.mTitle = null;
        ViewHolder1.mCount = null;
    }
}
