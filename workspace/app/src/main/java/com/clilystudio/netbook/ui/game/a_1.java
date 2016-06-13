package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.GameCat;

final class a
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ GameCatListFragment a;

    a(GameCatListFragment gameCatListFragment) {
        this.a = gameCatListFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        int n2 = n - GameCatListFragment.a(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < GameCatListFragment.b(this.a).getCount()) {
            GameCat gameCat = (GameCat) GameCatListFragment.b(this.a).getItem(n2);
            Intent intent = GameListActivity.a(this.a.getActivity(), gameCat);
            this.a.startActivity(intent);
        }
    }
}
