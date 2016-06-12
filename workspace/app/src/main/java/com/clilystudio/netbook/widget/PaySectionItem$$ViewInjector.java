package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class PaySectionItem$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, PaySectionItem PaySectionItem2, Object Object3) {
        PaySectionItem2.mIcon = (ImageView) Finder1.findRequiredView(Object3, 2131493028, "field 'mIcon'");
        PaySectionItem2.mLabel = (TextView) Finder1.findRequiredView(Object3, 2131493515, "field 'mLabel'");
        PaySectionItem2.mBalance = (TextView) Finder1.findRequiredView(Object3, 2131493823, "field 'mBalance'");
        PaySectionItem2.mArrow = (ImageView) Finder1.findRequiredView(Object3, 2131493199, "field 'mArrow'");
    }

    public static void reset(PaySectionItem PaySectionItem1) {
        PaySectionItem1.mIcon = null;
        PaySectionItem1.mLabel = null;
        PaySectionItem1.mBalance = null;
        PaySectionItem1.mArrow = null;
    }
}
