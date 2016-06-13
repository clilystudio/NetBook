package com.clilystudio.netbook.ui.user;

import android.widget.Button;
import android.widget.EditText;

import butterknife.ButterKnife$Finder;

public class SmsSendActivity$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, SmsSendActivity smsSendActivity, Object object) {
        smsSendActivity.mNumberText = (EditText) butterKnife$Finder.findRequiredView(object, 2131493210, "field 'mNumberText'");
        smsSendActivity.mNormalLine = butterKnife$Finder.findRequiredView(object, 2131493211, "field 'mNormalLine'");
        smsSendActivity.mErrorLine = butterKnife$Finder.findRequiredView(object, 2131493212, "field 'mErrorLine'");
        smsSendActivity.mWrongText = butterKnife$Finder.findRequiredView(object, 2131493213, "field 'mWrongText'");
        smsSendActivity.mNextBtn = (Button) butterKnife$Finder.findRequiredView(object, 2131493214, "field 'mNextBtn'");
    }

    public static void reset(SmsSendActivity smsSendActivity) {
        smsSendActivity.mNumberText = null;
        smsSendActivity.mNormalLine = null;
        smsSendActivity.mErrorLine = null;
        smsSendActivity.mWrongText = null;
        smsSendActivity.mNextBtn = null;
    }
}
