package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

import com.clilystudio.netbook.model.Game;

final class O implements AdapterView$OnItemClickListener {

    private GameListActivity a;

    O(GameListActivity GameListActivity1) {
        a = GameListActivity1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        Game Game6 = (Game) GameListActivity.a(a).get(int3);
        Intent Intent7 = GameDetailActivity.a((Context) a, Game6.get_id(), GameListActivity.b(a), false);

        a.startActivity(Intent7);
        com.umeng.a.b.a((Context) a, "game_pasted_item_click", Game6.getName());
    }
}
