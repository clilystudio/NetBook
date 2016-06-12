package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class I implements View$OnClickListener {

    private GameLayoutFragment$LayoutAdapter a;

    I(GameLayoutFragment$LayoutAdapter LayoutAdapter1) {
        a = LayoutAdapter1;
    }

    public final void onClick(View View1) {
        a.a.startActivity(GameDetailActivity.a((Context) a.a.getActivity(), GameLayoutFragment.b(a.a).get_id()));
        com.clilystudio.netbook.umeng.a.b.a((Context) a.a.getActivity(), "game_center_layout_promotion", GameLayoutFragment.b(a.a).getName());
    }
}
