package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.view.View;

import com.clilystudio.netbook.util.e;

final class B
        implements View.OnClickListener {
    private /* synthetic */ o a;

    B(o o2) {
        this.a = o2;
    }

    @Override
    public final void onClick(View view) {
        if (a.t(o.a((o) this.a))) {
            o.c((o) this.a).setVisibility(8);
            if (o.d((o) this.a) != null) {
                o.d((o) this.a).a(o.b((o) this.a).l());
            }
            return;
        }
        e.a((Activity) o.a((o) this.a), (int) 2131034418);
    }
}
