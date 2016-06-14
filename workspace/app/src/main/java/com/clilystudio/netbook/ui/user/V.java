package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.view.View;
import android.widget.PopupWindow;

import com.clilystudio.netbook.model.PayConsumeRecord;
import com.clilystudio.netbook.util.e;

final class V implements View.OnClickListener {
    private /* synthetic */ PayConsumeRecord.Order a;
    private /* synthetic */ PopupWindow b;
    private /* synthetic */ S c;

    V(S s, PayConsumeRecord.Order order, PopupWindow popupWindow) {
        this.c = s;
        this.a = order;
        this.b = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        PayConsumeActivity.a(this.c.a, this.a);
        e.a((Activity) this.c.a, (String) "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f");
        this.b.dismiss();
    }
}
