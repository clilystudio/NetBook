package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.ui.MaskAbleImageView;

import butterknife.ButterKnife.Finder;

public class HomeFindItem$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, HomeFindItem paramHomeFindItem, Object paramObject) {
        paramHomeFindItem.mIcon = ((MaskAbleImageView) paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
        paramHomeFindItem.mTitle = ((TextView) paramFinder.findRequiredView(paramObject, 2131492936, "field 'mTitle'"));
        paramHomeFindItem.mSubFlag = ((ImageView) paramFinder.findRequiredView(paramObject, 2131493681, "field 'mSubFlag'"));
        paramHomeFindItem.mSubText = ((TextView) paramFinder.findRequiredView(paramObject, 2131493683, "field 'mSubText'"));
    }

    public static void reset(HomeFindItem paramHomeFindItem) {
        paramHomeFindItem.mIcon = null;
        paramHomeFindItem.mTitle = null;
        paramHomeFindItem.mSubFlag = null;
        paramHomeFindItem.mSubText = null;
    }
}

