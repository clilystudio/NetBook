package com.clilystudio.netbook.ui.game;

import android.view.LayoutInflater;

final class T extends ah<GameLocalListActivity.GameViewHolder> {
    private LayoutInflater b;

    public T(GameLocalListActivity paramGameLocalListActivity, LayoutInflater paramLayoutInflater) {
        this.b = paramLayoutInflater;
    }

    public final int a() {
        return GameLocalListActivity.a(this.a).size();
    }
}

