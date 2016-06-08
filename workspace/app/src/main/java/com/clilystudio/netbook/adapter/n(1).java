package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.GameGiftGroup;

final class n
        implements View.OnClickListener {
    n(GameGiftGroupAdapter paramGameGiftGroupAdapter, GameGiftGroup paramGameGiftGroup) {
    }

    public final void onClick(View paramView) {
        GameGiftGroupAdapter.a(this.b, this.a.getGame());
    }
}

