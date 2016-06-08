package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.model.Game;

final class N
        implements View.OnClickListener {
    N(GameLayoutItemView paramGameLayoutItemView, Game paramGame) {
    }

    public final void onClick(View paramView) {
        GameLayoutItemView.a(this.b, this.b.getContext(), this.a);
    }
}

