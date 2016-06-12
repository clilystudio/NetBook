package com.clilystudio.netbook.ui;

import android.widget.LinearLayout;

import butterknife.ButterKnife$Finder;

public class RelateUgcFragment$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, RelateUgcFragment RelateUgcFragment2, Object Object3) {
        RelateUgcFragment2.mUgcContainer = (LinearLayout) Finder1.findRequiredView(Object3, 2131493465, "field 'mUgcContainer'");
        RelateUgcFragment2.mRelateUgcRoot = (LinearLayout) Finder1.findRequiredView(Object3, 2131493464, "field 'mRelateUgcRoot'");
    }

    public static void reset(RelateUgcFragment RelateUgcFragment1) {
        RelateUgcFragment1.mUgcContainer = null;
        RelateUgcFragment1.mRelateUgcRoot = null;
    }
}
