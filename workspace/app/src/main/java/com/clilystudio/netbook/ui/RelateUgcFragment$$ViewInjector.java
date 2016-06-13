package com.clilystudio.netbook.ui;

import android.widget.LinearLayout;

import butterknife.ButterKnife$Finder;

public class RelateUgcFragment$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, RelateUgcFragment relateUgcFragment, Object object) {
        relateUgcFragment.mUgcContainer = (LinearLayout) butterKnife$Finder.findRequiredView(object, 2131493465, "field 'mUgcContainer'");
        relateUgcFragment.mRelateUgcRoot = (LinearLayout) butterKnife$Finder.findRequiredView(object, 2131493464, "field 'mRelateUgcRoot'");
    }

    public static void reset(RelateUgcFragment relateUgcFragment) {
        relateUgcFragment.mUgcContainer = null;
        relateUgcFragment.mRelateUgcRoot = null;
    }
}
