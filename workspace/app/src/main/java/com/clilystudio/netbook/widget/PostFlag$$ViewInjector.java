package com.clilystudio.netbook.widget;

import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class PostFlag$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, PostFlag postFlag, Object object) {
        postFlag.mHotFlag = (TextView) butterKnife$Finder.findRequiredView(object, 2131493180, "field 'mHotFlag'");
        postFlag.mDistillateFlag = (TextView) butterKnife$Finder.findRequiredView(object, 2131493423, "field 'mDistillateFlag'");
    }

    public static void reset(PostFlag postFlag) {
        postFlag.mHotFlag = null;
        postFlag.mDistillateFlag = null;
    }
}
