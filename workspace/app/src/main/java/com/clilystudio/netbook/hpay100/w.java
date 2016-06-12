package com.clilystudio.netbook.hpay100;

import android.text.TextUtils;

import com.clilystudio.netbook.hpay100.config.i;

import org.json.JSONException;
import org.json.JSONObject;

final class w implements com.clilystudio.netbook.hpay100.config.k {

    private int a;
    private HPaySdkActivity b;
    public w(HPaySdkActivity HPaySdkActivity1, int int2) {
        b = HPaySdkActivity1;
        a = 0;
        a = 4;
    }

    public final void a(String String1) {
        if (TextUtils.isEmpty((CharSequence) String1)) {
            HPaySdkActivity.b(b);
            HPaySdkActivity.k(b).setText((CharSequence) "\u9A8C\u8BC1\u7801\u63D0\u4EA4\u5931\u8D25,\u8BF7\u91CD\u65B0\u8F93\u5165\u9A8C\u8BC1\u7801");
            HPaySdkActivity.a(b, HPaySdkActivity.l(b), false);
            if (HPaySdkActivity.h(b) != null)
                com.clilystudio.netbook.hpay100.config.a.b(b.getApplicationContext(), HPaySdkActivity.h(b).mOrderidAPP, HPaySdkActivity.h(b).mOrderidHR, HPaySdkActivity.h(b).mScheme, HPaySdkActivity.h(b).mPayId, HPaySdkActivity.h(b).mChType, HPaySdkActivity.h(b).mChID, HPaySdkActivity.h(b).mAmount, "2", "5001", a);
        } else {
            i i2 = com.clilystudio.netbook.hpay100.config.a.b(String1);

            if (i2 == null) {
                HPaySdkActivity.b(b);
                HPaySdkActivity.k(b).setText((CharSequence) "\u9A8C\u8BC1\u7801\u63D0\u4EA4\u5931\u8D25\uFF0C\u8BF7\u91CD\u65B0\u8F93\u5165\u9A8C\u8BC1\u7801");
                HPaySdkActivity.a(b, HPaySdkActivity.l(b), false);
                if (HPaySdkActivity.h(b) != null) {
                    com.clilystudio.netbook.hpay100.config.a.b(b.getApplicationContext(), HPaySdkActivity.h(b).mOrderidAPP, HPaySdkActivity.h(b).mOrderidHR, HPaySdkActivity.h(b).mScheme, HPaySdkActivity.h(b).mPayId, HPaySdkActivity.h(b).mChType, HPaySdkActivity.h(b).mChID, HPaySdkActivity.h(b).mAmount, "2", "5002", a);
                    return;
                }
            } else if (i2.a != 0) {
                Object Object12;

                HPaySdkActivity.b(b);
                Object12 = i2.b;
                if (!android.text.TextUtils.isEmpty((CharSequence) Object12))
                    HPaySdkActivity.k(b).setText((CharSequence) Object12);
                else
                    HPaySdkActivity.k(b).setText((CharSequence) "\u83B7\u53D6\u9A8C\u8BC1\u7801\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5");
                HPaySdkActivity.a(b, HPaySdkActivity.l(b), false);
                if (HPaySdkActivity.h(b) != null) {
                    com.clilystudio.netbook.hpay100.config.a.b(b.getApplicationContext(), HPaySdkActivity.h(b).mOrderidAPP, HPaySdkActivity.h(b).mOrderidHR, HPaySdkActivity.h(b).mScheme, HPaySdkActivity.h(b).mPayId, HPaySdkActivity.h(b).mChType, HPaySdkActivity.h(b).mChID, HPaySdkActivity.h(b).mAmount, "2", new StringBuilder(String.valueOf(i2.a)).toString(), a);
                    return;
                }
            } else if (TextUtils.isEmpty((CharSequence) i2.c)) {
                HPaySdkActivity.b(b);
                HPaySdkActivity.k(b).setText((CharSequence) "\u9A8C\u8BC1\u7801\u63D0\u4EA4\u5931\u8D25,\u8BF7\u91CD\u65B0\u8F93\u5165\u9A8C\u8BC1\u7801");
                HPaySdkActivity.a(b, HPaySdkActivity.l(b), false);
                if (HPaySdkActivity.h(b) != null) {
                    com.clilystudio.netbook.hpay100.config.a.b(b.getApplicationContext(), HPaySdkActivity.h(b).mOrderidAPP, HPaySdkActivity.h(b).mOrderidHR, HPaySdkActivity.h(b).mScheme, HPaySdkActivity.h(b).mPayId, HPaySdkActivity.h(b).mChType, HPaySdkActivity.h(b).mChID, HPaySdkActivity.h(b).mAmount, "2", "5004", a);
                    return;
                }
            } else {
                Object Object4;

                try {
                    Object Object11 = f.b(i2.c, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a");
                } catch (Exception Exception3) {
                    Exception3.printStackTrace();
                    Object4 = "";
                }
                com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("resdes:").append((String) Object4).toString());
                if (TextUtils.isEmpty((CharSequence) Object4)) {
                    HPaySdkActivity.b(b);
                    HPaySdkActivity.k(b).setText((CharSequence) "\u9A8C\u8BC1\u7801\u63D0\u4EA4\u5931\u8D25,\u8BF7\u91CD\u65B0\u8F93\u5165\u9A8C\u8BC1\u7801");
                    HPaySdkActivity.a(b, HPaySdkActivity.l(b), false);
                    if (HPaySdkActivity.h(b) != null) {
                        com.clilystudio.netbook.hpay100.config.a.b(b.getApplicationContext(), HPaySdkActivity.h(b).mOrderidAPP, HPaySdkActivity.h(b).mOrderidHR, HPaySdkActivity.h(b).mScheme, HPaySdkActivity.h(b).mPayId, HPaySdkActivity.h(b).mChType, HPaySdkActivity.h(b).mChID, HPaySdkActivity.h(b).mAmount, "2", "5005", a);
                        return;
                    }
                } else {
                    JSONObject JSONObject6;

                    try {
                        JSONObject JSONObject5 = new JSONObject((String) Object4);
                    } catch (JSONException JSONException10) {
                        JSONException10.printStackTrace();
                        JSONObject6 = null;
                    }
                    if (JSONObject6 == null) {
                        HPaySdkActivity.b(b);
                        HPaySdkActivity.k(b).setText((CharSequence) "\u9A8C\u8BC1\u7801\u63D0\u4EA4\u5931\u8D25\uFF0C\u8BF7\u91CD\u65B0\u8F93\u5165\u9A8C\u8BC1\u7801");
                        HPaySdkActivity.a(b, HPaySdkActivity.l(b), false);
                        if (HPaySdkActivity.h(b) != null) {
                            com.clilystudio.netbook.hpay100.config.a.b(b.getApplicationContext(), HPaySdkActivity.h(b).mOrderidAPP, HPaySdkActivity.h(b).mOrderidHR, HPaySdkActivity.h(b).mScheme, HPaySdkActivity.h(b).mPayId, HPaySdkActivity.h(b).mChType, HPaySdkActivity.h(b).mChID, HPaySdkActivity.h(b).mAmount, "2", "5006", a);
                            return;
                        }
                    } else {
                        int int7 = JSONObject6.optInt("code", -1);
                        Object Object8 = JSONObject6.optString("msg", "");

                        if (int7 == 0 || int7 == 200) {
                            z z9;

                            HPaySdkActivity.b(b);
                            z9 = com.clilystudio.netbook.hpay100.config.a.a(HPaySdkActivity.h(b));
                            if (HPaySdkActivity.a != null)
                                HPaySdkActivity.a.a(z9);
                            b.finish();
                            if (HPaySdkActivity.h(b) != null) {
                                com.clilystudio.netbook.hpay100.config.a.b(b.getApplicationContext(), HPaySdkActivity.h(b).mOrderidAPP, HPaySdkActivity.h(b).mOrderidHR, HPaySdkActivity.h(b).mScheme, HPaySdkActivity.h(b).mPayId, HPaySdkActivity.h(b).mChType, HPaySdkActivity.h(b).mChID, HPaySdkActivity.h(b).mAmount, "1", "", a);
                                return;
                            }
                        } else {
                            HPaySdkActivity.b(b);
                            HPaySdkActivity.k(b).setText((CharSequence) Object8);
                            HPaySdkActivity.a(b, HPaySdkActivity.l(b), false);
                            if (HPaySdkActivity.h(b) != null) {
                                com.clilystudio.netbook.hpay100.config.a.b(b.getApplicationContext(), HPaySdkActivity.h(b).mOrderidAPP, HPaySdkActivity.h(b).mOrderidHR, HPaySdkActivity.h(b).mScheme, HPaySdkActivity.h(b).mPayId, HPaySdkActivity.h(b).mChType, HPaySdkActivity.h(b).mChID, HPaySdkActivity.h(b).mAmount, "2", new StringBuilder(String.valueOf(int7)).toString(), a);
                                return;
                            }
                        }
                    }
                }
            }
        }
    }
}
