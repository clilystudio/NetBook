package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.GameGiftGroup;

final class n implements View$OnClickListener {

    private GameGiftGroup a;
    private GameGiftGroupAdapter b;
    n(GameGiftGroupAdapter GameGiftGroupAdapter1, GameGiftGroup GameGiftGroup2) {
        b = GameGiftGroupAdapter1;
        a = GameGiftGroup2;
    }

    public final void onClick(View View1) {
        GameGiftGroupAdapter.a(b, a.getGame());
    }
}
