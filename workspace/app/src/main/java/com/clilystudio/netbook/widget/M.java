package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.game.GameDetailActivity;

final class M implements View.OnClickListener {
    private /* synthetic */ Game a;
    private /* synthetic */ GameLayoutItemView b;

    M(GameLayoutItemView gameLayoutItemView, Game game) {
        this.b = gameLayoutItemView;
        this.a = game;
    }

    @Override
    public final void onClick(View view) {
        this.b.getContext().startActivity(GameDetailActivity.a(this.b.getContext(), this.a.get_id()));
    }
}
