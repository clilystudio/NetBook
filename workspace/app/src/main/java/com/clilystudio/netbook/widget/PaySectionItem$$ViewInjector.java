package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class PaySectionItem$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, PaySectionItem paramPaySectionItem, Object paramObject) {
        paramPaySectionItem.mIcon = ((ImageView) paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
        paramPaySectionItem.mLabel = ((TextView) paramFinder.findRequiredView(paramObject, 2131493515, "field 'mLabel'"));
        paramPaySectionItem.mBalance = ((TextView) paramFinder.findRequiredView(paramObject, 2131493823, "field 'mBalance'"));
        paramPaySectionItem.mArrow = ((ImageView) paramFinder.findRequiredView(paramObject, 2131493199, "field 'mArrow'"));
    }

    public static void reset(PaySectionItem paramPaySectionItem) {
        paramPaySectionItem.mIcon = null;
        paramPaySectionItem.mLabel = null;
        paramPaySectionItem.mBalance = null;
        paramPaySectionItem.mArrow = null;
    }
}

