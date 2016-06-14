package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.model.Game;

final class R implements View.OnClickListener {
    private /* synthetic */ Game a;
    private /* synthetic */ Q b;

    R(Q q, Game game) {
        this.b = q;
        this.a = game;
    }

    @Override
    public final void onClick(View view) {
        am.a((Context) this.b.a, (Game) this.a);
    }
}
