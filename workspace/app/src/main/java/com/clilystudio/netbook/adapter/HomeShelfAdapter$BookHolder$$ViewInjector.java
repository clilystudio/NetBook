package com.clilystudio.netbook.adapter;

import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife$Finder;

public class HomeShelfAdapter$BookHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, HomeShelfAdapter$BookHolder BookHolder2, Object Object3) {
        BookHolder2.title = (TextView) Finder1.findRequiredView(Object3, 2131492936, "field 'title'");
        BookHolder2.desc = (TextView) Finder1.findRequiredView(Object3, 2131493481, "field 'desc'");
        BookHolder2.flag = (BookShelfFlagView) Finder1.findRequiredView(Object3, 2131493754, "field 'flag'");
        BookHolder2.top = Finder1.findRequiredView(Object3, 2131492978, "field 'top'");
        BookHolder2.cover = (CoverView) Finder1.findRequiredView(Object3, 2131493604, "field 'cover'");
        BookHolder2.coverLoadingLayer = (CoverLoadingLayer) Finder1.findRequiredView(Object3, 2131492906, "field 'coverLoadingLayer'");
        BookHolder2.check = (CheckBox) Finder1.findRequiredView(Object3, 2131492900, "field 'check'");
    }

    public static void reset(HomeShelfAdapter$BookHolder BookHolder1) {
        BookHolder1.title = null;
        BookHolder1.desc = null;
        BookHolder1.flag = null;
        BookHolder1.top = null;
        BookHolder1.cover = null;
        BookHolder1.coverLoadingLayer = null;
        BookHolder1.check = null;
    }
}
