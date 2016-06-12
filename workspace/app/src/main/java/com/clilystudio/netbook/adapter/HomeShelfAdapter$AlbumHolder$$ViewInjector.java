package com.clilystudio.netbook.adapter;

import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife$Finder;

public class HomeShelfAdapter$AlbumHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, HomeShelfAdapter$AlbumHolder AlbumHolder2, Object Object3) {
        AlbumHolder2.title = (TextView) Finder1.findRequiredView(Object3, 2131492936, "field 'title'");
        AlbumHolder2.desc = (TextView) Finder1.findRequiredView(Object3, 2131493481, "field 'desc'");
        AlbumHolder2.flag = (BookShelfFlagView) Finder1.findRequiredView(Object3, 2131493754, "field 'flag'");
        AlbumHolder2.top = Finder1.findRequiredView(Object3, 2131492978, "field 'top'");
        AlbumHolder2.cover = (CoverView) Finder1.findRequiredView(Object3, 2131493604, "field 'cover'");
        AlbumHolder2.coverLoadingLayer = (CoverLoadingLayer) Finder1.findRequiredView(Object3, 2131492906, "field 'coverLoadingLayer'");
        AlbumHolder2.check = (CheckBox) Finder1.findRequiredView(Object3, 2131492900, "field 'check'");
    }

    public static void reset(HomeShelfAdapter$AlbumHolder AlbumHolder1) {
        AlbumHolder1.title = null;
        AlbumHolder1.desc = null;
        AlbumHolder1.flag = null;
        AlbumHolder1.top = null;
        AlbumHolder1.cover = null;
        AlbumHolder1.coverLoadingLayer = null;
        AlbumHolder1.check = null;
    }
}
