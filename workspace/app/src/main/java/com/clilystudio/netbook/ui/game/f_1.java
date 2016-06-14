package com.clilystudio.netbook.ui.game;

import android.view.View;

final class f implements View.OnClickListener {
    private /* synthetic */ GameDetailActivity a;

    f(GameDetailActivity gameDetailActivity) {
        this.a = gameDetailActivity;
    }

    @Override
    public final void onClick(View view) {
        GameDetailActivity.d(this.a);
    }
}
