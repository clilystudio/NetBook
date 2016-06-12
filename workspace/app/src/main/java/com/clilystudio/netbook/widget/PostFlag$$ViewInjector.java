package com.clilystudio.netbook.widget;

import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class PostFlag$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, PostFlag PostFlag2, Object Object3) {
        PostFlag2.mHotFlag = (TextView) Finder1.findRequiredView(Object3, 2131493180, "field 'mHotFlag'");
        PostFlag2.mDistillateFlag = (TextView) Finder1.findRequiredView(Object3, 2131493423, "field 'mDistillateFlag'");
    }

    public static void reset(PostFlag PostFlag1) {
        PostFlag1.mHotFlag = null;
        PostFlag1.mDistillateFlag = null;
    }
}
