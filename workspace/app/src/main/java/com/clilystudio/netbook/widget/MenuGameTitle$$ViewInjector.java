package com.clilystudio.netbook.widget;

import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class MenuGameTitle$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, MenuGameTitle MenuGameTitle2, Object Object3) {
        MenuGameTitle2.mSlmReaderAppName = (TextView) Finder1.findRequiredView(Object3, 2131493870, "field 'mSlmReaderAppName'");
        MenuGameTitle2.mSlmReaderAppSize = (TextView) Finder1.findRequiredView(Object3, 2131493871, "field 'mSlmReaderAppSize'");
    }

    public static void reset(MenuGameTitle MenuGameTitle1) {
        MenuGameTitle1.mSlmReaderAppName = null;
        MenuGameTitle1.mSlmReaderAppSize = null;
    }
}
