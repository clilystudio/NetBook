package com.clilystudio.netbook.ui.user;

import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class SmsVerifyActivity$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, SmsVerifyActivity smsVerifyActivity, Object object) {
        smsVerifyActivity.mCodeText = (EditText) butterKnife$Finder.findRequiredView(object, 2131493220, "field 'mCodeText'");
        smsVerifyActivity.mAppNameText = (TextView) butterKnife$Finder.findRequiredView(object, 2131493215, "field 'mAppNameText'");
        smsVerifyActivity.mGoodsText = (TextView) butterKnife$Finder.findRequiredView(object, 2131493216, "field 'mGoodsText'");
        smsVerifyActivity.mPriceText = (TextView) butterKnife$Finder.findRequiredView(object, 2131493217, "field 'mPriceText'");
        smsVerifyActivity.mPhoneText = (TextView) butterKnife$Finder.findRequiredView(object, 2131493218, "field 'mPhoneText'");
        smsVerifyActivity.mSendCodeBtn = (Button) butterKnife$Finder.findRequiredView(object, 2131493219, "field 'mSendCodeBtn'");
        smsVerifyActivity.mCommitBtn = (Button) butterKnife$Finder.findRequiredView(object, 2131493221, "field 'mCommitBtn'");
    }

    public static void reset(SmsVerifyActivity smsVerifyActivity) {
        smsVerifyActivity.mCodeText = null;
        smsVerifyActivity.mAppNameText = null;
        smsVerifyActivity.mGoodsText = null;
        smsVerifyActivity.mPriceText = null;
        smsVerifyActivity.mPhoneText = null;
        smsVerifyActivity.mSendCodeBtn = null;
        smsVerifyActivity.mCommitBtn = null;
    }
}
