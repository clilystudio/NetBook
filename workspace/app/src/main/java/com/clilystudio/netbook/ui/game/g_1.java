package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;

final class g implements View$OnClickListener {

    private GameDetailActivity a;

    g(GameDetailActivity GameDetailActivity1) {
        a = GameDetailActivity1;
    }

    public final void onClick(View View1) {
        GameDetailActivity.d(a);
    }
}
