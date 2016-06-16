package com.clilystudio.netbook.reader;

import android.view.View;

import com.clilystudio.netbook.util.e;

final class q implements View.OnClickListener {
    private /* synthetic */ o a;

    q(o o2) {
        this.a = o2;
    }

    @Override
    public final void onClick(View view) {
        if (a.t(o.a(this.a))) {
            o.c(this.a).setVisibility(View.GONE);
            if (o.e(this.a) != null) {
                o.e(this.a).a();
            }
            return;
        }
        e.a(o.a(this.a), R.string.network_unconnected);
    }
}
