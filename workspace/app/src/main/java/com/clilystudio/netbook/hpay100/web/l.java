package com.clilystudio.netbook.hpay100.web;

final class l implements Runnable {

    private HPayWebView a;
    private String b;     // final access specifier removed
    l(HPayWebView HPayWebView1, String String2) {
        a = HPayWebView1;
        b = String2;
    }

    public final void run() {
        Object Object1;

        a.loadUrl(new StringBuilder("javascript:").append(b).toString());
        Object1 = com.clilystudio.netbook.hpay100.config.l.e(a.getContext().getApplicationContext());
        if (!android.text.TextUtils.isEmpty((CharSequence) Object1)) {
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("loadjsurl mNumberJsonJs:").append(HPayWebView.a).toString());
            if (HPayWebView.a == 0) {
                HPayWebView.a = 1 + HPayWebView.a;
                a.loadUrl(new StringBuilder("javascript:hpay_func.inputPhoneAndGetVerifyCode('").append((String) Object1).append("')").toString());
            } else {
                a.loadUrl(new StringBuilder("javascript:hpay_func.inputPhone('").append((String) Object1).append("')").toString());
                return;
            }
        }
    }
}
