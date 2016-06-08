package com.clilystudio.netbook.ui.user;

import android.widget.Button;
import android.widget.EditText;

import butterknife.ButterKnife.Finder;

public class SmsSendActivity$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, SmsSendActivity paramSmsSendActivity, Object paramObject) {
        paramSmsSendActivity.mNumberText = ((EditText) paramFinder.findRequiredView(paramObject, 2131493210, "field 'mNumberText'"));
        paramSmsSendActivity.mNormalLine = paramFinder.findRequiredView(paramObject, 2131493211, "field 'mNormalLine'");
        paramSmsSendActivity.mErrorLine = paramFinder.findRequiredView(paramObject, 2131493212, "field 'mErrorLine'");
        paramSmsSendActivity.mWrongText = paramFinder.findRequiredView(paramObject, 2131493213, "field 'mWrongText'");
        paramSmsSendActivity.mNextBtn = ((Button) paramFinder.findRequiredView(paramObject, 2131493214, "field 'mNextBtn'"));
    }

    public static void reset(SmsSendActivity paramSmsSendActivity) {
        paramSmsSendActivity.mNumberText = null;
        paramSmsSendActivity.mNormalLine = null;
        paramSmsSendActivity.mErrorLine = null;
        paramSmsSendActivity.mWrongText = null;
        paramSmsSendActivity.mNextBtn = null;
    }
}

