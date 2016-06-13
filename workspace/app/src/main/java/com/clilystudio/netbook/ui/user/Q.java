package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.widget.av;

final class Q
        implements av {
    private /* synthetic */ PayConsumeActivity a;

    Q(PayConsumeActivity payConsumeActivity) {
        this.a = payConsumeActivity;
    }

    @Override
    public final void a() {
        PayConsumeActivity.d(this.a).setVisibility(0);
        Z z = new Z(this.a, 0);
        String[] arrstring = new String[]{PayConsumeActivity.g(this.a)};
        z.b(arrstring);
    }
}
