package com.clilystudio.netbook.reader;

import android.view.View;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.util.e;

final class B
        implements View.OnClickListener {
    B(o paramo) {
    }

    public final void onClick(View paramView) {
        if (a.t(o.a(this.a))) {
            o.c(this.a).setVisibility(8);
            if (o.d(this.a) != null)
                o.d(this.a).a(o.b(this.a).l());
            return;
        }
        e.a(o.a(this.a), 2131034418);
    }
}

