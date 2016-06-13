package com.clilystudio.netbook.ui.game;

import android.view.View;

final class F
        implements View.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ D b;

    F(D d, String string) {
        this.b = d;
        this.a = string;
    }

    @Override
    public final void onClick(View view) {
        GameGiftListActivity.a(this.b.a, this.a);
    }
}
