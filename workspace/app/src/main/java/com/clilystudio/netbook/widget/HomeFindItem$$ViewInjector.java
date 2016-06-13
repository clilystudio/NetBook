package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.ui.MaskAbleImageView;

import butterknife.ButterKnife$Finder;

public class HomeFindItem$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, HomeFindItem homeFindItem, Object object) {
        homeFindItem.mIcon = (MaskAbleImageView) butterKnife$Finder.findRequiredView(object, 2131493028, "field 'mIcon'");
        homeFindItem.mTitle = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'mTitle'");
        homeFindItem.mSubFlag = (ImageView) butterKnife$Finder.findRequiredView(object, 2131493681, "field 'mSubFlag'");
        homeFindItem.mSubText = (TextView) butterKnife$Finder.findRequiredView(object, 2131493683, "field 'mSubText'");
    }

    public static void reset(HomeFindItem homeFindItem) {
        homeFindItem.mIcon = null;
        homeFindItem.mTitle = null;
        homeFindItem.mSubFlag = null;
        homeFindItem.mSubText = null;
    }
}
