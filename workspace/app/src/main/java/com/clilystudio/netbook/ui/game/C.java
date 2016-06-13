package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.model.GameGift;

final class C
        implements View.OnClickListener {
    private /* synthetic */ GameGift a;
    private /* synthetic */ y b;

    C(y y2, GameGift gameGift) {
        this.b = y2;
        this.a = gameGift;
    }

    @Override
    public final void onClick(View view) {
        GameGiftListActivity.a((GameGiftListActivity) ((Object) this.b.a), this.a);
        this.b.a.b();
    }
}
