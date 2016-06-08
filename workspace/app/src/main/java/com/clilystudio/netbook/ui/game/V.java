package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.model.Game;

final class V
        implements View.OnClickListener {
    V(T paramT, Game paramGame) {
    }

    public final void onClick(View paramView) {
        this.b.a.startActivity(GameDetailActivity.a(this.b.a, this.a.get_id(), true, true));
    }
}

