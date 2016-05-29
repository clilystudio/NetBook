package com.clilystudio.app.netbook.widget;

import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class ShareWarningView$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, ShareWarningView paramShareWarningView, Object paramObject) {
        paramShareWarningView.mClose = ((ImageView) paramFinder.findRequiredView(paramObject, 2131493987, "field 'mClose'"));
        paramShareWarningView.mNegative = ((Button) paramFinder.findRequiredView(paramObject, 2131493988, "field 'mNegative'"));
        paramShareWarningView.mPositive = ((Button) paramFinder.findRequiredView(paramObject, 2131493989, "field 'mPositive'"));
        paramShareWarningView.mContent = ((TextView) paramFinder.findRequiredView(paramObject, 2131492905, "field 'mContent'"));
    }

    public static void reset(ShareWarningView paramShareWarningView) {
        paramShareWarningView.mClose = null;
        paramShareWarningView.mNegative = null;
        paramShareWarningView.mPositive = null;
        paramShareWarningView.mContent = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.ShareWarningView..ViewInjector
 * JD-Core Version:    0.6.2
 */