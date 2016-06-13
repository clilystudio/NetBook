package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.User;

final class M
        implements View.OnClickListener {
    private /* synthetic */ R a;
    private /* synthetic */ User b;
    private /* synthetic */ G c;

    M(G g, R r, User user) {
        this.c = g;
        this.a = r;
        this.b = user;
    }

    @Override
    public final void onClick(View view) {
        G.a(this.c, this.a, this.b);
    }
}
