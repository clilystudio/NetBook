package com.clilystudio.netbook.adapter;

import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife$Finder;

public class HomeShelfAdapter$AlbumHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, HomeShelfAdapter$AlbumHolder homeShelfAdapter$AlbumHolder, Object object) {
        homeShelfAdapter$AlbumHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'title'");
        homeShelfAdapter$AlbumHolder.desc = (TextView) butterKnife$Finder.findRequiredView(object, 2131493481, "field 'desc'");
        homeShelfAdapter$AlbumHolder.flag = (BookShelfFlagView) butterKnife$Finder.findRequiredView(object, 2131493754, "field 'flag'");
        homeShelfAdapter$AlbumHolder.top = butterKnife$Finder.findRequiredView(object, 2131492978, "field 'top'");
        homeShelfAdapter$AlbumHolder.cover = (CoverView) butterKnife$Finder.findRequiredView(object, 2131493604, "field 'cover'");
        homeShelfAdapter$AlbumHolder.coverLoadingLayer = (CoverLoadingLayer) butterKnife$Finder.findRequiredView(object, 2131492906, "field 'coverLoadingLayer'");
        homeShelfAdapter$AlbumHolder.check = (CheckBox) butterKnife$Finder.findRequiredView(object, 2131492900, "field 'check'");
    }

    public static void reset(HomeShelfAdapter$AlbumHolder homeShelfAdapter$AlbumHolder) {
        homeShelfAdapter$AlbumHolder.title = null;
        homeShelfAdapter$AlbumHolder.desc = null;
        homeShelfAdapter$AlbumHolder.flag = null;
        homeShelfAdapter$AlbumHolder.top = null;
        homeShelfAdapter$AlbumHolder.cover = null;
        homeShelfAdapter$AlbumHolder.coverLoadingLayer = null;
        homeShelfAdapter$AlbumHolder.check = null;
    }
}
