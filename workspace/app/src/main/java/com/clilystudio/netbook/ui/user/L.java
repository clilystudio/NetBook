package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.widget.av;

final class L
        implements av {
    private /* synthetic */ PayChargeActivity a;

    L(PayChargeActivity payChargeActivity) {
        this.a = payChargeActivity;
    }

    @Override
    public final void a() {
        PayChargeActivity.b(this.a).setVisibility(0);
        O o = new O(this.a, 0);
        String[] arrstring = new String[]{PayChargeActivity.h(this.a)};
        o.b(arrstring);
    }
}
