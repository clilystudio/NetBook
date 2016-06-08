package com.clilystudio.netbook.adapter;

import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife.Finder;

public class HomeShelfAdapter$BookHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, HomeShelfAdapter.BookHolder paramBookHolder, Object paramObject) {
        paramBookHolder.title = ((TextView) paramFinder.findRequiredView(paramObject, 2131492936, "field 'title'"));
        paramBookHolder.desc = ((TextView) paramFinder.findRequiredView(paramObject, 2131493481, "field 'desc'"));
        paramBookHolder.flag = ((BookShelfFlagView) paramFinder.findRequiredView(paramObject, 2131493754, "field 'flag'"));
        paramBookHolder.top = paramFinder.findRequiredView(paramObject, 2131492978, "field 'top'");
        paramBookHolder.cover = ((CoverView) paramFinder.findRequiredView(paramObject, 2131493604, "field 'cover'"));
        paramBookHolder.coverLoadingLayer = ((CoverLoadingLayer) paramFinder.findRequiredView(paramObject, 2131492906, "field 'coverLoadingLayer'"));
        paramBookHolder.check = ((CheckBox) paramFinder.findRequiredView(paramObject, 2131492900, "field 'check'"));
    }

    public static void reset(HomeShelfAdapter.BookHolder paramBookHolder) {
        paramBookHolder.title = null;
        paramBookHolder.desc = null;
        paramBookHolder.flag = null;
        paramBookHolder.top = null;
        paramBookHolder.cover = null;
        paramBookHolder.coverLoadingLayer = null;
        paramBookHolder.check = null;
    }
}

