package com.clilystudio.netbook.widget;

import android.widget.EditText;
import android.widget.ImageView;

import butterknife.ButterKnife$Finder;

public class SendView$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, SendView sendView, Object object) {
        sendView.mSendContent = (EditText) butterKnife$Finder.findRequiredView(object, 2131494004, "field 'mSendContent'");
        sendView.mSendView = (ImageView) butterKnife$Finder.findRequiredView(object, 2131494005, "field 'mSendView'");
    }

    public static void reset(SendView sendView) {
        sendView.mSendContent = null;
        sendView.mSendView = null;
    }
}
