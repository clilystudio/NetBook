package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.game.GameDetailActivity;

final class M
        implements View.OnClickListener {
    M(GameLayoutItemView paramGameLayoutItemView, Game paramGame) {
    }

    public final void onClick(View paramView) {
        this.b.getContext().startActivity(GameDetailActivity.a(this.b.getContext(), this.a.get_id()));
    }
}

