package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;

final class J implements View.OnClickListener {
    private /* synthetic */ GameLayoutRoot$ModuleLayout a;
    private /* synthetic */ GameLayoutFragment$LayoutAdapter b;

    J(GameLayoutFragment$LayoutAdapter layoutAdapter, GameLayoutRoot$ModuleLayout moduleLayout) {
        this.b = layoutAdapter;
        this.a = moduleLayout;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.b.a.getActivity(), GameListActivity.class);
        intent.putExtra("game_list_title", this.a.getGameGroup().getName());
        intent.putExtra("game_list_id", this.a.getGameGroup().get_id());
        this.b.a.startActivity(intent);
    }
}
