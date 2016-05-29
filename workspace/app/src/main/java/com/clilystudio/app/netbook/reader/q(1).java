package com.clilystudio.app.netbook.reader;

import android.view.View;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.util.e;

final class q
        implements View.OnClickListener {
    q(o paramo) {
    }

    public final void onClick(View paramView) {
        if (a.t(o.a(this.a))) {
            o.c(this.a).setVisibility(8);
            if (o.e(this.a) != null)
                o.e(this.a).a();
            return;
        }
        e.a(o.a(this.a), 2131034418);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.q
 * JD-Core Version:    0.6.2
 */