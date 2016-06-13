package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife$Finder;

public class HomeTopicAdapter$ViewHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, HomeTopicAdapter$ViewHolder homeTopicAdapter$ViewHolder, Object object) {
        homeTopicAdapter$ViewHolder.mCover = (SmartImageView) butterKnife$Finder.findRequiredView(object, 2131493604, "field 'mCover'");
        homeTopicAdapter$ViewHolder.mTitle = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'mTitle'");
        homeTopicAdapter$ViewHolder.mCount = (TextView) butterKnife$Finder.findRequiredView(object, 2131493239, "field 'mCount'");
    }

    public static void reset(HomeTopicAdapter$ViewHolder homeTopicAdapter$ViewHolder) {
        homeTopicAdapter$ViewHolder.mCover = null;
        homeTopicAdapter$ViewHolder.mTitle = null;
        homeTopicAdapter$ViewHolder.mCount = null;
    }
}
