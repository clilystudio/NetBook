package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.ui.MaskAbleImageView;

import butterknife.ButterKnife$Finder;

public class HomeFindItem$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, HomeFindItem HomeFindItem2, Object Object3) {
        HomeFindItem2.mIcon = (MaskAbleImageView) Finder1.findRequiredView(Object3, 2131493028, "field 'mIcon'");
        HomeFindItem2.mTitle = (TextView) Finder1.findRequiredView(Object3, 2131492936, "field 'mTitle'");
        HomeFindItem2.mSubFlag = (ImageView) Finder1.findRequiredView(Object3, 2131493681, "field 'mSubFlag'");
        HomeFindItem2.mSubText = (TextView) Finder1.findRequiredView(Object3, 2131493683, "field 'mSubText'");
    }

    public static void reset(HomeFindItem HomeFindItem1) {
        HomeFindItem1.mIcon = null;
        HomeFindItem1.mTitle = null;
        HomeFindItem1.mSubFlag = null;
        HomeFindItem1.mSubText = null;
    }
}
