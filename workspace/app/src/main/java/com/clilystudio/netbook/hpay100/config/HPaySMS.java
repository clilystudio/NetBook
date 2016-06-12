package com.clilystudio.netbook.hpay100.config;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;

import com.clilystudio.netbook.hpay100.y;

import java.io.Serializable;
import java.util.HashMap;

public class HPaySMS implements Serializable {

    private static final long serialVersionUID = -2531892219507044232L;
    public String[] mSMSAddress;
    public String[] mSMSContent;
    public String mOrderidHR = "";
    public String mOrderidAPP = "";
    public String mChID = "";
    public String mChType = "";
    public int mAmount = 0;
    public int mRealAmount = 0;
    public int mCorp = 1;
    public int mScheme = 3;
    public int mCodeType = 0;
    public String mPayId = "";
    public String mPayName = "";
    public String mReplyAdderss = "";
    public String mReplyContent = "";
    public String[] mReplyKeyword = null;
    public int mIntervalTimes = 3;
    public int mSdkFeeType = 0;
    public String mPhone = "";
    public String mDetail = "";
    public String mCorpFeeCode = "";
    public String mFeeUrl = "";
    public HashMap mJsUrlHashMap = null;
    public String mYzmRegx = "";
    public int mIsFullScreen = 0;
    public String mOpenUrl = "";
    private int mSendIndex = 0;

    static int access$0(HPaySMS HPaySMS1) {
        return HPaySMS1.mSendIndex;
    }

    public void requestPay$1361a8a9(Context Context1, int int2, y y3) {
        Handler Handler4;

        b.a = "";
        b.b = "";
        b.d = 0;
        Handler4 = new Handler(Context1.getMainLooper());
        if (mSMSAddress == null || mSMSContent == null) {
            if (y3 != null)
                y3.a(a.a(this, 6102, "\u77ED\u4FE1\u5730\u5740\u6216\u5185\u5BB9\u4E3A\u7A7A"));
            a.c(Context1, mOrderidAPP, mOrderidHR, mScheme, mPayId, mChType, mChID, mAmount, "2", "6102", int2);
        } else if (mSMSAddress.length == 0 || mSMSContent.length == 0) {
            if (y3 != null)
                y3.a(a.a(this, 6102, "\u77ED\u4FE1\u5730\u5740\u6216\u5185\u5BB9\u4E3A\u7A7A"));
            a.c(Context1, mOrderidAPP, mOrderidHR, mScheme, mPayId, mChType, mChID, mAmount, "2", "6102", int2);
        } else if (TextUtils.isEmpty((CharSequence) mSMSAddress[0]) || TextUtils.isEmpty((CharSequence) mSMSContent[0])) {
            if (y3 != null)
                y3.a(a.a(this, 6102, "\u77ED\u4FE1\u5730\u5740\u6216\u5185\u5BB9\u4E3A\u7A7A"));
            a.c(Context1, mOrderidAPP, mOrderidHR, mScheme, mPayId, mChType, mChID, mAmount, "2", "6102", int2);
        } else if (!com.clilystudio.netbook.hpay100.c.b.c(Context1)) {
            if (y3 != null)
                y3.a(a.a(this, 6103, "\u77ED\u4FE1\u53D1\u9001\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5SIM\u5361"));
            a.c(Context1, mOrderidAPP, mOrderidHR, mScheme, mPayId, mChType, mChID, mAmount, "2", "6103", int2);
        } else {
            if (!android.text.TextUtils.isEmpty((CharSequence) mReplyAdderss) && !android.text.TextUtils.isEmpty((CharSequence) mReplyContent) && mReplyKeyword != null && mReplyKeyword.length > 0) {
                b.a = mReplyAdderss;
                b.b = mReplyContent;
                b.c = mReplyKeyword;
                b.d = mSMSAddress.length;
            }
            c.a(Context1, mSMSAddress[0], mSMSContent[0], (f) new z(this, y3, Context1, int2, Handler4));
            mSendIndex = 1 + mSendIndex;
        }
    }
}
