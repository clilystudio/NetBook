package com.clilystudio.netbook.ui.game;

import android.view.View;

final class o
        implements View.OnClickListener {
    private /* synthetic */ View a;
    private /* synthetic */ String b;
    private /* synthetic */ n c;

    o(n n2, View view, String string) {
        this.c = n2;
        this.a = view;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        GameDetailActivity.a(this.c.a, this.a, this.b);
    }
}
