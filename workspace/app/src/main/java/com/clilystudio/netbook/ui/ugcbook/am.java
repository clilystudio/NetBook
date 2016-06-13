package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class am
        implements View.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ al b;

    am(al al2, String string) {
        this.b = al2;
        this.a = string;
    }

    @Override
    public final void onClick(View view) {
        this.b.k.a = true;
        UGCMainActivity.a(this.b.k.c, this.a);
        this.b.k.b(0);
    }
}
