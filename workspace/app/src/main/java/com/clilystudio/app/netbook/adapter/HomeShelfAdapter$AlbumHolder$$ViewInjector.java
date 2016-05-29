package com.clilystudio.app.netbook.adapter;

import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.app.netbook.widget.BookShelfFlagView;
import com.clilystudio.app.netbook.widget.CoverLoadingLayer;
import com.clilystudio.app.netbook.widget.CoverView;

import butterknife.ButterKnife.Finder;

public class HomeShelfAdapter$AlbumHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, HomeShelfAdapter.AlbumHolder paramAlbumHolder, Object paramObject) {
        paramAlbumHolder.title = ((TextView) paramFinder.findRequiredView(paramObject, 2131492936, "field 'title'"));
        paramAlbumHolder.desc = ((TextView) paramFinder.findRequiredView(paramObject, 2131493481, "field 'desc'"));
        paramAlbumHolder.flag = ((BookShelfFlagView) paramFinder.findRequiredView(paramObject, 2131493754, "field 'flag'"));
        paramAlbumHolder.top = paramFinder.findRequiredView(paramObject, 2131492978, "field 'top'");
        paramAlbumHolder.cover = ((CoverView) paramFinder.findRequiredView(paramObject, 2131493604, "field 'cover'"));
        paramAlbumHolder.coverLoadingLayer = ((CoverLoadingLayer) paramFinder.findRequiredView(paramObject, 2131492906, "field 'coverLoadingLayer'"));
        paramAlbumHolder.check = ((CheckBox) paramFinder.findRequiredView(paramObject, 2131492900, "field 'check'"));
    }

    public static void reset(HomeShelfAdapter.AlbumHolder paramAlbumHolder) {
        paramAlbumHolder.title = null;
        paramAlbumHolder.desc = null;
        paramAlbumHolder.flag = null;
        paramAlbumHolder.top = null;
        paramAlbumHolder.cover = null;
        paramAlbumHolder.coverLoadingLayer = null;
        paramAlbumHolder.check = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.HomeShelfAdapter.AlbumHolder..ViewInjector
 * JD-Core Version:    0.6.2
 */