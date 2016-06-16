package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.Intent;

import com.clilystudio.netbook.model.ChargeType;
import com.clilystudio.netbook.model.PaySheetItem;
import com.clilystudio.netbook.ui.user.ChargeActivity;
import com.clilystudio.netbook.widget.ak;

import java.util.List;

public final class p {
    private Activity a;

    public p(Activity activity) {
        this.a = activity;
    }

    static /* synthetic */ Activity a(p p2) {
        return p2.a;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static /* synthetic */ void a(p p2, PaySheetItem paySheetItem) {
        if (paySheetItem == null) return;
        if ("weixinpay".equals(paySheetItem.getChargeType().getType()) && !a.a(p2.a)) {
            e.a(p2.a, R.string.alarm_no_install_weixin);
            return;
        }
        Intent intent = ChargeActivity.a(p2.a, paySheetItem.getChargeType());
        p2.a.startActivity(intent);
        b.a(p2.a, "enter_charge_channel", paySheetItem.getChargeType().getType());
    }

    static /* synthetic */ void a(p p2, ChargeType[] arrchargeType) {
        List<PaySheetItem> list = PaySheetItem.getItems(p2.a, arrchargeType);
        if (!list.isEmpty()) {
            for (int i = 0; i < list.size(); ++i) {
                list.get(i).setId(i);
            }
            new ak(p2.a, new q(p2), list).a().show();
            return;
        }
        e.a(p2.a, "\u6ca1\u6709\u652f\u4ed8\u65b9\u5f0f\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d");
    }

    public final void a() {
        new r(this, this.a).b(new Void[0]);
    }
}
