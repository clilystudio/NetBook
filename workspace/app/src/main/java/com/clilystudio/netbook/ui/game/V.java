package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.model.Game;

final class V implements View.OnClickListener {
    private /* synthetic */ Game a;
    private /* synthetic */ T b;

    V(T t, Game game) {
        this.b = t;
        this.a = game;
    }

    @Override
    public final void onClick(View view) {
        this.b.a.startActivity(GameDetailActivity.a(this.b.a, this.a.get_id(), true, true));
    }
}
