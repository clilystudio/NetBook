package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.GameGiftGroup;

final class n
        implements View.OnClickListener {
    private /* synthetic */ GameGiftGroup a;
    private /* synthetic */ GameGiftGroupAdapter b;

    n(GameGiftGroupAdapter gameGiftGroupAdapter, GameGiftGroup gameGiftGroup) {
        this.b = gameGiftGroupAdapter;
        this.a = gameGiftGroup;
    }

    @Override
    public final void onClick(View view) {
        GameGiftGroupAdapter.a(this.b, this.a.getGame());
    }
}
