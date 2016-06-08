package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class NotificationAdapter$HeaderHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, NotificationAdapter.HeaderHolder paramHeaderHolder, Object paramObject) {
        paramHeaderHolder.mLabelText = ((TextView) paramFinder.findRequiredView(paramObject, 2131493711, "field 'mLabelText'"));
    }

    public static void reset(NotificationAdapter.HeaderHolder paramHeaderHolder) {
        paramHeaderHolder.mLabelText = null;
    }
}

