package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.model.GameGift;

final class z
        implements View.OnClickListener {
    private /* synthetic */ GameGift a;
    private /* synthetic */ String b;
    private /* synthetic */ y c;

    z(y y2, GameGift gameGift, String string) {
        this.c = y2;
        this.a = gameGift;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        GameGiftListActivity.a(this.c.a, this.a);
        GameGiftListActivity.a(this.c.a, this.b);
    }
}
