package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.Game;

final class O
        implements AdapterView.OnItemClickListener {
    O(GameListActivity paramGameListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        Game localGame = (Game) GameListActivity.a(this.a).get(paramInt);
        Intent localIntent = GameDetailActivity.a(this.a, localGame.get_id(), GameListActivity.b(this.a), false);
        this.a.startActivity(localIntent);
        b.a(this.a, "game_pasted_item_click", localGame.getName());
    }
}

