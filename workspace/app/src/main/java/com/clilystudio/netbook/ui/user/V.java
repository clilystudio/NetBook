package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

import com.clilystudio.netbook.model.PayConsumeRecord$Order;
import com.clilystudio.netbook.util.e;

final class V implements View$OnClickListener {

    private PayConsumeRecord$Order a;
    private PopupWindow b;
    private S c;
    V(S S1, PayConsumeRecord$Order Order2, PopupWindow PopupWindow3) {
        c = S1;
        a = Order2;
        b = PopupWindow3;
    }

    public final void onClick(View View1) {
        PayConsumeActivity.a(c.a, a);
        e.a((Activity) c.a, "\u5DF2\u590D\u5236\u5230\u7C98\u8D34\u677F");
        b.dismiss();
    }
}
