package com.clilystudio.netbook.ui.game;

import android.view.View;

final class E
        implements View.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ D b;

    E(D d, String string) {
        this.b = d;
        this.a = string;
    }

    @Override
    public final void onClick(View view) {
        GameGiftListActivity.a(this.b.a, this.a);
    }
}
