package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;

import butterknife.ButterKnife.Finder;

public class HomeShelfAdapter$FeedHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, HomeShelfAdapter.FeedHolder paramFeedHolder, Object paramObject) {
        paramFeedHolder.title = ((TextView) paramFinder.findRequiredView(paramObject, 2131493481, "field 'title'"));
        paramFeedHolder.flag = ((BookShelfFlagView) paramFinder.findRequiredView(paramObject, 2131493754, "field 'flag'"));
    }

    public static void reset(HomeShelfAdapter.FeedHolder paramFeedHolder) {
        paramFeedHolder.title = null;
        paramFeedHolder.flag = null;
    }
}

