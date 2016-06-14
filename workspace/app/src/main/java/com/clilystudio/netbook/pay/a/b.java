package com.clilystudio.netbook.pay.a;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import org.json.JSONException;

final class b extends Handler {
    private /* synthetic */ a a;

    b(a a2) {
        this.a = a2;
    }

    @Override
    public final void handleMessage(Message message) {
        switch (message.what) {
            default: {
                return;
            }
            case 1: {
                e e2 = new e((String) message.obj);
                String string = e2.a();
                i.a().c(new y(TextUtils.equals(string, "9000")));
                if (TextUtils.equals(string, "9000")) {
                    try {
                        String string2 = e2.b();
                        if (!com.clilystudio.netbook.hpay100.a.a.a(string2.substring(0, string2.indexOf("&sign_type=")), com.clilystudio.netbook.hpay100.a.a.i(string2, "&").getString("sign").replace("\"", ""), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB")) {
                            Toast.makeText(a.a(this.a), "\u60a8\u7684\u8ba2\u5355\u4fe1\u606f\u5df2\u88ab\u975e\u6cd5\u7be1\u6539", 0).show();
                            return;
                        }
                    } catch (JSONException var4_5) {
                        var4_5.printStackTrace();
                        Toast.makeText(a.a(this.a), "\u60a8\u7684\u8ba2\u5355\u4fe1\u606f\u5df2\u88ab\u975e\u6cd5\u7be1\u6539", 0).show();
                        return;
                    }
                    Toast.makeText(a.a(this.a), "\u652f\u4ed8\u6210\u529f", 0).show();
                    MiStatInterface.recordCountEvent("charge_complete", "alipay");
                    return;
                }
                if (TextUtils.equals(string, "8000")) {
                    Toast.makeText(a.a(this.a), "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d", 0).show();
                    return;
                }
                if (TextUtils.equals(string, "6001")) {
                    MiStatInterface.recordCountEvent("charge_money_cancel", "alipay");
                    return;
                }
                Toast.makeText(a.a(this.a), "\u652f\u4ed8\u5931\u8d25", 0).show();
                MiStatInterface.recordCountEvent("charge_money_failed", "alipay");
                return;
            }
            case 2:
        }
        Toast.makeText(a.a(this.a), "\u68c0\u67e5\u7ed3\u679c\u4e3a\uff1a" + message.obj, 0).show();
    }
}
