package com.clilystudio.app.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.app.netbook.widget.BookShelfFlagView;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.HomeShelfAdapter.FeedHolder..ViewInjector
 * JD-Core Version:    0.6.2
 */