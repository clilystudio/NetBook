package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class PaySectionItem$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, PaySectionItem paySectionItem, Object object) {
        paySectionItem.mIcon = (ImageView) butterKnife$Finder.findRequiredView(object, 2131493028, "field 'mIcon'");
        paySectionItem.mLabel = (TextView) butterKnife$Finder.findRequiredView(object, 2131493515, "field 'mLabel'");
        paySectionItem.mBalance = (TextView) butterKnife$Finder.findRequiredView(object, 2131493823, "field 'mBalance'");
        paySectionItem.mArrow = (ImageView) butterKnife$Finder.findRequiredView(object, 2131493199, "field 'mArrow'");
    }

    public static void reset(PaySectionItem paySectionItem) {
        paySectionItem.mIcon = null;
        paySectionItem.mLabel = null;
        paySectionItem.mBalance = null;
        paySectionItem.mArrow = null;
    }
}
