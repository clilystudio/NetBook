package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.model.GameGift;

final class A implements View.OnClickListener {
    private /* synthetic */ GameGift a;
    private /* synthetic */ String b;
    private /* synthetic */ y c;

    A(y y2, GameGift gameGift, String string) {
        this.c = y2;
        this.a = gameGift;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        GameGiftListActivity.a((GameGiftListActivity) ((Object) this.c.a), this.a);
        GameGiftListActivity.a((GameGiftListActivity) ((Object) this.c.a), this.b);
    }
}
