package com.clilystudio.netbook.widget;

import android.widget.LinearLayout;

import butterknife.ButterKnife.Finder;

public class PayRecordCollapseItem$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, PayRecordCollapseItem paramPayRecordCollapseItem, Object paramObject) {
        paramPayRecordCollapseItem.mItemContainer = ((LinearLayout) paramFinder.findRequiredView(paramObject, 2131493578, "field 'mItemContainer'"));
    }

    public static void reset(PayRecordCollapseItem paramPayRecordCollapseItem) {
        paramPayRecordCollapseItem.mItemContainer = null;
    }
}

