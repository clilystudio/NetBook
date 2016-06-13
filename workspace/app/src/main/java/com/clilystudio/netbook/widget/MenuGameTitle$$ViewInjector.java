package com.clilystudio.netbook.widget;

import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class MenuGameTitle$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, MenuGameTitle menuGameTitle, Object object) {
        menuGameTitle.mSlmReaderAppName = (TextView) butterKnife$Finder.findRequiredView(object, 2131493870, "field 'mSlmReaderAppName'");
        menuGameTitle.mSlmReaderAppSize = (TextView) butterKnife$Finder.findRequiredView(object, 2131493871, "field 'mSlmReaderAppSize'");
    }

    public static void reset(MenuGameTitle menuGameTitle) {
        menuGameTitle.mSlmReaderAppName = null;
        menuGameTitle.mSlmReaderAppSize = null;
    }
}
