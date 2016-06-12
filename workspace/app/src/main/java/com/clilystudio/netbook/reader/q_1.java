package com.clilystudio.netbook.reader;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class q implements View$OnClickListener {

    private o a;

    q(o o1) {
        a = o1;
    }

    public final void onClick(View View1) {
        if (com.clilystudio.netbook.hpay100.a.a.t((Context) o.a(a))) {
            o.c(a).setVisibility(8);
            if (o.e(a) != null)
                o.e(a).a();
        } else
            com.clilystudio.netbook.util.e.a(o.a(a), 2131034418);
    }
}
