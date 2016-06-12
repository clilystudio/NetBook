package com.clilystudio.netbook.reader;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.util.e;

final class B implements View$OnClickListener {

    private o a;

    B(o o1) {
        a = o1;
    }

    public final void onClick(View View1) {
        if (com.clilystudio.netbook.hpay100.a.a.t((Context) o.a(a))) {
            o.c(a).setVisibility(8);
            if (o.d(a) != null)
                o.d(a).a(o.b(a).l());
        } else
            e.a(o.a(a), 2131034418);
    }
}
