package com.clilystudio.netbook.widget;

import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class ShareWarningView$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, ShareWarningView shareWarningView, Object object) {
        shareWarningView.mClose = (ImageView) butterKnife$Finder.findRequiredView(object, 2131493987, "field 'mClose'");
        shareWarningView.mNegative = (Button) butterKnife$Finder.findRequiredView(object, 2131493988, "field 'mNegative'");
        shareWarningView.mPositive = (Button) butterKnife$Finder.findRequiredView(object, 2131493989, "field 'mPositive'");
        shareWarningView.mContent = (TextView) butterKnife$Finder.findRequiredView(object, 2131492905, "field 'mContent'");
    }

    public static void reset(ShareWarningView shareWarningView) {
        shareWarningView.mClose = null;
        shareWarningView.mNegative = null;
        shareWarningView.mPositive = null;
        shareWarningView.mContent = null;
    }
}
