package com.clilystudio.netbook.widget;

import android.widget.ImageView;

import butterknife.ButterKnife.Finder;

public class CommunitySection$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, CommunitySection paramCommunitySection, Object paramObject) {
        paramCommunitySection.mDot = ((ImageView) paramFinder.findRequiredView(paramObject, 2131493375, "field 'mDot'"));
    }

    public static void reset(CommunitySection paramCommunitySection) {
        paramCommunitySection.mDot = null;
    }
}

