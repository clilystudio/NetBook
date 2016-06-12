package com.clilystudio.netbook.pay.a;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;

import com.clilystudio.netbook.event.y;

import org.json.JSONException;

final class b extends Handler {

    private a a;

    b(a a1) {
        a = a1;
    }

    public final void handleMessage(Message Message1) {
        label_65:
        switch (Message1.what) {
            default:
                return;
            case 1:
                e e2 = new e((String) Message1.obj);
                Object Object3 = e2.a();

                com.clilystudio.netbook.event.i.a().c(new y(TextUtils.equals((CharSequence) Object3, (CharSequence) "9000")));
                if (TextUtils.equals((CharSequence) Object3, (CharSequence) "9000")) {
                    try {
                        String String5 = e2.b();

                        if (com.clilystudio.netbook.hpay100.a.a.a(String5.substring(0, String5.indexOf("&sign_type=")), com.clilystudio.netbook.hpay100.a.a.i(String5, "&").getString("sign").replace((CharSequence) "\"", (CharSequence) ""), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB"))
                            break label_65;
                        Toast.makeText(a.a(a), (CharSequence) "\u60A8\u7684\u8BA2\u5355\u4FE1\u606F\u5DF2\u88AB\u975E\u6CD5\u7BE1\u6539", 0).show();
                    } catch (JSONException JSONException4) {
                        JSONException4.printStackTrace();
                        Toast.makeText(a.a(a), (CharSequence) "\u60A8\u7684\u8BA2\u5355\u4FE1\u606F\u5DF2\u88AB\u975E\u6CD5\u7BE1\u6539", 0).show();
                        return;
                    }
                } else if (TextUtils.equals((CharSequence) Object3, (CharSequence) "8000"))
                    Toast.makeText(a.a(a), (CharSequence) "\u652F\u4ED8\u7ED3\u679C\u786E\u8BA4\u4E2D", 0).show();
                else if (TextUtils.equals((CharSequence) Object3, (CharSequence) "6001"))
                    com.umeng.a.b.a(a.a(a), "charge_money_cancel", "alipay");
                else {
                    Toast.makeText(a.a(a), (CharSequence) "\u652F\u4ED8\u5931\u8D25", 0).show();
                    com.umeng.a.b.a(a.a(a), "charge_money_failed", "alipay");
                }
                return;
            case 2:
                Toast.makeText(a.a(a), (CharSequence) new StringBuilder("\u68C0\u67E5\u7ED3\u679C\u4E3A\uFF1A").append(Message1.obj).toString(), 0).show();
                return;
        }
        Toast.makeText(a.a(a), (CharSequence) "\u652F\u4ED8\u6210\u529F", 0).show();
        com.umeng.a.b.a(a.a(a), "charge_complete", "alipay");
    }
}
