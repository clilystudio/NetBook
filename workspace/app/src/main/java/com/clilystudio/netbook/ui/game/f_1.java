package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;

final class f implements View$OnClickListener {

    private GameDetailActivity a;

    f(GameDetailActivity GameDetailActivity1) {
        a = GameDetailActivity1;
    }

    public final void onClick(View View1) {
        GameDetailActivity.d(a);
    }
}
