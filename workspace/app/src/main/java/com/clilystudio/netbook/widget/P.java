package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.game.GameDetailActivity;

final class P
        implements View.OnClickListener {
    P(GameMicroLayoutItemView paramGameMicroLayoutItemView, Game paramGame) {
    }

    public final void onClick(View paramView) {
        this.b.getContext().startActivity(GameDetailActivity.a(this.b.getContext(), this.a.get_id(), true, this.b.a));
    }
}

