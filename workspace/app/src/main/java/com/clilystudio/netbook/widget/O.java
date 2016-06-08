package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.model.Game;

final class O
        implements View.OnClickListener {
    O(GameLayoutItemView paramGameLayoutItemView, Game paramGame) {
    }

    public final void onClick(View paramView) {
        GameLayoutItemView.a(this.b, this.b.getContext(), this.a);
    }
}

