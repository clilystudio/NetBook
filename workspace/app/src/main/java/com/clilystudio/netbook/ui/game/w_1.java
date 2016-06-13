package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.view.a;

final class w
        implements View.OnClickListener {
    private /* synthetic */ a a;
    private /* synthetic */ GameGiftListActivity b;

    w(GameGiftListActivity gameGiftListActivity, a a2) {
        this.b = gameGiftListActivity;
        this.a = a2;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        GameGiftListActivity.a(this.b);
    }
}
