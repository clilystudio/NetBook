package com.clilystudio.netbook.adapter;

import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife$Finder;

public class HomeShelfAdapter$BookHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, HomeShelfAdapter$BookHolder homeShelfAdapter$BookHolder, Object object) {
        homeShelfAdapter$BookHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'title'");
        homeShelfAdapter$BookHolder.desc = (TextView) butterKnife$Finder.findRequiredView(object, 2131493481, "field 'desc'");
        homeShelfAdapter$BookHolder.flag = (BookShelfFlagView) butterKnife$Finder.findRequiredView(object, 2131493754, "field 'flag'");
        homeShelfAdapter$BookHolder.top = butterKnife$Finder.findRequiredView(object, 2131492978, "field 'top'");
        homeShelfAdapter$BookHolder.cover = (CoverView) butterKnife$Finder.findRequiredView(object, 2131493604, "field 'cover'");
        homeShelfAdapter$BookHolder.coverLoadingLayer = (CoverLoadingLayer) butterKnife$Finder.findRequiredView(object, 2131492906, "field 'coverLoadingLayer'");
        homeShelfAdapter$BookHolder.check = (CheckBox) butterKnife$Finder.findRequiredView(object, 2131492900, "field 'check'");
    }

    public static void reset(HomeShelfAdapter$BookHolder homeShelfAdapter$BookHolder) {
        homeShelfAdapter$BookHolder.title = null;
        homeShelfAdapter$BookHolder.desc = null;
        homeShelfAdapter$BookHolder.flag = null;
        homeShelfAdapter$BookHolder.top = null;
        homeShelfAdapter$BookHolder.cover = null;
        homeShelfAdapter$BookHolder.coverLoadingLayer = null;
        homeShelfAdapter$BookHolder.check = null;
    }
}
