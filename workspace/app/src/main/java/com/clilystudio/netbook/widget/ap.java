package com.clilystudio.netbook.widget;

import android.content.Context;

import com.clilystudio.netbook.ui.cd;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class ap implements cd {
    private /* synthetic */ AbsPostActivity a;

    ap(ao ao2, AbsPostActivity absPostActivity) {
        this.a = absPostActivity;
    }

    @Override
    public final void a(int n) {
        this.a.f(n);
        a.a((Context) this.a, n, 2);
    }
}
