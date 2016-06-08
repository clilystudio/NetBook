package com.clilystudio.netbook.widget;

import android.widget.EditText;
import android.widget.ImageView;

import butterknife.ButterKnife.Finder;

public class SendView$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, SendView paramSendView, Object paramObject) {
        paramSendView.mSendContent = ((EditText) paramFinder.findRequiredView(paramObject, 2131494004, "field 'mSendContent'"));
        paramSendView.mSendView = ((ImageView) paramFinder.findRequiredView(paramObject, 2131494005, "field 'mSendView'"));
    }

    public static void reset(SendView paramSendView) {
        paramSendView.mSendContent = null;
        paramSendView.mSendView = null;
    }
}

