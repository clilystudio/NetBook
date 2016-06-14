package com.clilystudio.netbook.ui.game;

import android.view.View;

final class I implements View.OnClickListener {
    private /* synthetic */ GameLayoutFragment$LayoutAdapter a;

    I(GameLayoutFragment$LayoutAdapter layoutAdapter) {
        this.a = layoutAdapter;
    }

    @Override
    public final void onClick(View view) {
        this.a.a.startActivity(GameDetailActivity.a(this.a.a.getActivity(), GameLayoutFragment.b(this.a.a).get_id()));
        b.a(this.a.a.getActivity(), "game_center_layout_promotion", GameLayoutFragment.b(this.a.a).getName());
    }
}
