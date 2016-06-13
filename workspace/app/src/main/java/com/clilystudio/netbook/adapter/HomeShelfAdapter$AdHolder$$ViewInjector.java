package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.BookShelfFlagView;

import butterknife.ButterKnife$Finder;

public class HomeShelfAdapter$AdHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, HomeShelfAdapter$AdHolder homeShelfAdapter$AdHolder, Object object) {
        homeShelfAdapter$AdHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'title'");
        homeShelfAdapter$AdHolder.desc = (TextView) butterKnife$Finder.findRequiredView(object, 2131493481, "field 'desc'");
        homeShelfAdapter$AdHolder.flag = (BookShelfFlagView) butterKnife$Finder.findRequiredView(object, 2131493754, "field 'flag'");
        homeShelfAdapter$AdHolder.cover = (SmartImageView) butterKnife$Finder.findRequiredView(object, 2131493604, "field 'cover'");
    }

    public static void reset(HomeShelfAdapter$AdHolder homeShelfAdapter$AdHolder) {
        homeShelfAdapter$AdHolder.title = null;
        homeShelfAdapter$AdHolder.desc = null;
        homeShelfAdapter$AdHolder.flag = null;
        homeShelfAdapter$AdHolder.cover = null;
    }
}
