package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.Game;

final class O implements AdapterView.OnItemClickListener {
    private /* synthetic */ GameListActivity a;

    O(GameListActivity gameListActivity) {
        this.a = gameListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
        Game game = (Game) GameListActivity.a(this.a).get(n2);
        Intent intent = GameDetailActivity.a(this.a, game.get_id(), GameListActivity.b(this.a), false);
        this.a.startActivity(intent);
        b.a(this.a, "game_pasted_item_click", game.getName());
    }
}
