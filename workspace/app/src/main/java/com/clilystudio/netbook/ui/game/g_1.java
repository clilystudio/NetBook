package com.clilystudio.netbook.ui.game;

import android.view.View;

final class g
        implements View.OnClickListener {
    private /* synthetic */ GameDetailActivity a;

    g(GameDetailActivity gameDetailActivity) {
        this.a = gameDetailActivity;
    }

    @Override
    public final void onClick(View view) {
        GameDetailActivity.d(this.a);
    }
}
