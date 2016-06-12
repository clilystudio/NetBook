package com.clilystudio.netbook.ui.game;

import android.view.LayoutInflater;

import com.clilystudio.netbook.util.W;

final class Q extends W {

    GameListActivity a;     // final access specifier removed

    public Q(GameListActivity GameListActivity1, LayoutInflater LayoutInflater2) {
        super(LayoutInflater2, 2130903277);
        a = GameListActivity1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    protected final void a(int int1, Object Object2) {
    }

    protected final int[] a() {
        return new int[]{2131493655, 2131493659, 2131493657, 2131493660, 2131493658};
    }
}
