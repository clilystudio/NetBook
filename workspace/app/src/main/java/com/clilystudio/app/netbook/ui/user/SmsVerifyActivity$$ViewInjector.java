package com.clilystudio.app.netbook.ui.user;

import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class SmsVerifyActivity$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, SmsVerifyActivity paramSmsVerifyActivity, Object paramObject) {
        paramSmsVerifyActivity.mCodeText = ((EditText) paramFinder.findRequiredView(paramObject, 2131493220, "field 'mCodeText'"));
        paramSmsVerifyActivity.mAppNameText = ((TextView) paramFinder.findRequiredView(paramObject, 2131493215, "field 'mAppNameText'"));
        paramSmsVerifyActivity.mGoodsText = ((TextView) paramFinder.findRequiredView(paramObject, 2131493216, "field 'mGoodsText'"));
        paramSmsVerifyActivity.mPriceText = ((TextView) paramFinder.findRequiredView(paramObject, 2131493217, "field 'mPriceText'"));
        paramSmsVerifyActivity.mPhoneText = ((TextView) paramFinder.findRequiredView(paramObject, 2131493218, "field 'mPhoneText'"));
        paramSmsVerifyActivity.mSendCodeBtn = ((Button) paramFinder.findRequiredView(paramObject, 2131493219, "field 'mSendCodeBtn'"));
        paramSmsVerifyActivity.mCommitBtn = ((Button) paramFinder.findRequiredView(paramObject, 2131493221, "field 'mCommitBtn'"));
    }

    public static void reset(SmsVerifyActivity paramSmsVerifyActivity) {
        paramSmsVerifyActivity.mCodeText = null;
        paramSmsVerifyActivity.mAppNameText = null;
        paramSmsVerifyActivity.mGoodsText = null;
        paramSmsVerifyActivity.mPriceText = null;
        paramSmsVerifyActivity.mPhoneText = null;
        paramSmsVerifyActivity.mSendCodeBtn = null;
        paramSmsVerifyActivity.mCommitBtn = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.SmsVerifyActivity..ViewInjector
 * JD-Core Version:    0.6.2
 */