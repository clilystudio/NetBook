
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;

public class SmsVerifyActivity$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, SmsVerifyActivity SmsVerifyActivity2, Object Object3)
    {
        SmsVerifyActivity2.mCodeText = (EditText) Finder1.findRequiredView( Object3, 2131493220, "field 'mCodeText'" );
        SmsVerifyActivity2.mAppNameText = (TextView) Finder1.findRequiredView( Object3, 2131493215, "field 'mAppNameText'" );
        SmsVerifyActivity2.mGoodsText = (TextView) Finder1.findRequiredView( Object3, 2131493216, "field 'mGoodsText'" );
        SmsVerifyActivity2.mPriceText = (TextView) Finder1.findRequiredView( Object3, 2131493217, "field 'mPriceText'" );
        SmsVerifyActivity2.mPhoneText = (TextView) Finder1.findRequiredView( Object3, 2131493218, "field 'mPhoneText'" );
        SmsVerifyActivity2.mSendCodeBtn = (Button) Finder1.findRequiredView( Object3, 2131493219, "field 'mSendCodeBtn'" );
        SmsVerifyActivity2.mCommitBtn = (Button) Finder1.findRequiredView( Object3, 2131493221, "field 'mCommitBtn'" );
    }

    public static void reset(SmsVerifyActivity SmsVerifyActivity1)
    {
        SmsVerifyActivity1.mCodeText = null;
        SmsVerifyActivity1.mAppNameText = null;
        SmsVerifyActivity1.mGoodsText = null;
        SmsVerifyActivity1.mPriceText = null;
        SmsVerifyActivity1.mPhoneText = null;
        SmsVerifyActivity1.mSendCodeBtn = null;
        SmsVerifyActivity1.mCommitBtn = null;
    }
}
