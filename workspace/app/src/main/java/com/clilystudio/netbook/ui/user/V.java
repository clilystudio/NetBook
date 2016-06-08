package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.PopupWindow;

import com.clilystudio.netbook.model.PayConsumeRecord.Order;
import com.clilystudio.netbook.util.e;

final class V
        implements View.OnClickListener {
    V(S paramS, PayConsumeRecord.Order paramOrder, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        PayConsumeActivity.a(this.c.a, this.a);
        e.a(this.c.a, "已复制到粘贴板");
        this.b.dismiss();
    }
}

