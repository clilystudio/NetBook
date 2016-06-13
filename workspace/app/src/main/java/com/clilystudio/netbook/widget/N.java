package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.model.Game;

final class N
        implements View.OnClickListener {
    private /* synthetic */ Game a;
    private /* synthetic */ GameLayoutItemView b;

    N(GameLayoutItemView gameLayoutItemView, Game game) {
        this.b = gameLayoutItemView;
        this.a = game;
    }

    @Override
    public final void onClick(View view) {
        GameLayoutItemView.a(this.b, this.b.getContext(), this.a);
    }
}
