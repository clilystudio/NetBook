package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.model.GameGift;

final class B
        implements View.OnClickListener {
    B(y paramy, GameGift paramGameGift) {
    }

    public final void onClick(View paramView) {
        GameGiftListActivity.a(this.b.a, this.a);
        this.b.a.b();
    }
}

