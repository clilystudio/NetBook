package com.clilystudio.netbook.ui.game;

import android.view.View;

final class I
        implements View.OnClickListener {
    I(GameLayoutFragment.LayoutAdapter paramLayoutAdapter) {
    }

    public final void onClick(View paramView) {
        this.a.a.startActivity(GameDetailActivity.a(this.a.a.getActivity(), GameLayoutFragment.b(this.a.a).get_id()));
        b.a(this.a.a.getActivity(), "game_center_layout_promotion", GameLayoutFragment.b(this.a.a).getName());
    }
}

