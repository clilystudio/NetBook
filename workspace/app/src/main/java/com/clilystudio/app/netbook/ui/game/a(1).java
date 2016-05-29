package com.clilystudio.app.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.model.GameCat;

final class a
        implements AdapterView.OnItemClickListener {
    a(GameCatListFragment paramGameCatListFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - GameCatListFragment.a(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < GameCatListFragment.b(this.a).getCount())) {
            GameCat localGameCat = (GameCat) GameCatListFragment.b(this.a).getItem(i);
            Intent localIntent = GameListActivity.a(this.a.getActivity(), localGameCat);
            this.a.startActivity(localIntent);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.a
 * JD-Core Version:    0.6.2
 */