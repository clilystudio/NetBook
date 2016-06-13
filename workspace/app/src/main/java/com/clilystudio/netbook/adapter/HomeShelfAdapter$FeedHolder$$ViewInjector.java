package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;

import butterknife.ButterKnife$Finder;

public class HomeShelfAdapter$FeedHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, HomeShelfAdapter$FeedHolder homeShelfAdapter$FeedHolder, Object object) {
        homeShelfAdapter$FeedHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131493481, "field 'title'");
        homeShelfAdapter$FeedHolder.flag = (BookShelfFlagView) butterKnife$Finder.findRequiredView(object, 2131493754, "field 'flag'");
    }

    public static void reset(HomeShelfAdapter$FeedHolder homeShelfAdapter$FeedHolder) {
        homeShelfAdapter$FeedHolder.title = null;
        homeShelfAdapter$FeedHolder.flag = null;
    }
}
