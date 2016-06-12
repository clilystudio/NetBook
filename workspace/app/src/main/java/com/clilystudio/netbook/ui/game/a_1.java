package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

import com.clilystudio.netbook.model.GameCat;

final class a implements AdapterView$OnItemClickListener {

    private GameCatListFragment a;

    a(GameCatListFragment GameCatListFragment1) {
        a = GameCatListFragment1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        int int6 = int3 - GameCatListFragment.a(a).getHeaderViewsCount();

        if (int6 >= 0 && int6 < GameCatListFragment.b(a).getCount()) {
            GameCat GameCat7 = (GameCat) GameCatListFragment.b(a).getItem(int6);
            Intent Intent8 = GameListActivity.a((Context) a.getActivity(), GameCat7);

            a.startActivity(Intent8);
        }
    }
}
