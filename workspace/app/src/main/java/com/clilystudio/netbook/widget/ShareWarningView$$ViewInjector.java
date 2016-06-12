package com.clilystudio.netbook.widget;

import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class ShareWarningView$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, ShareWarningView ShareWarningView2, Object Object3) {
        ShareWarningView2.mClose = (ImageView) Finder1.findRequiredView(Object3, 2131493987, "field 'mClose'");
        ShareWarningView2.mNegative = (Button) Finder1.findRequiredView(Object3, 2131493988, "field 'mNegative'");
        ShareWarningView2.mPositive = (Button) Finder1.findRequiredView(Object3, 2131493989, "field 'mPositive'");
        ShareWarningView2.mContent = (TextView) Finder1.findRequiredView(Object3, 2131492905, "field 'mContent'");
    }

    public static void reset(ShareWarningView ShareWarningView1) {
        ShareWarningView1.mClose = null;
        ShareWarningView1.mNegative = null;
        ShareWarningView1.mPositive = null;
        ShareWarningView1.mContent = null;
    }
}
