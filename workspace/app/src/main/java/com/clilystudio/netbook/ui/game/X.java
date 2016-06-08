package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.GameLayoutRoot.ModuleLayout;

final class X
        implements View.OnClickListener {
    X(GameMicroFragment.LayoutAdapter paramLayoutAdapter, GameLayoutRoot.ModuleLayout paramModuleLayout) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.b.a.getActivity(), GameListActivity.class);
        localIntent.putExtra("game_list_title", this.a.getGameGroup().getName());
        localIntent.putExtra("game_list_id", this.a.getGameGroup().get_id());
        localIntent.putExtra("micro_game", true);
        this.b.a.startActivity(localIntent);
    }
}

