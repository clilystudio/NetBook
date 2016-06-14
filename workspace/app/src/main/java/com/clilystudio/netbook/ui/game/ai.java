package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.Game;

final class ai implements AdapterView.OnItemClickListener {
    private /* synthetic */ GameRankListFragment a;

    ai(GameRankListFragment gameRankListFragment) {
        this.a = gameRankListFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n2, long l) {
        int n3 = n2 - GameRankListFragment.a(this.a).getHeaderViewsCount();
        if (n3 >= 0 && n3 < GameRankListFragment.b(this.a).size()) {
            Game game = (Game) GameRankListFragment.b(this.a).get(n3);
            Intent intent = GameDetailActivity.a(this.a.getActivity(), game.get_id());
            this.a.startActivity(intent);
        }
    }
}
