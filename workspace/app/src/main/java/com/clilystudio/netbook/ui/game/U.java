package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.model.Game;

final class U
        implements View.OnClickListener {
    private /* synthetic */ Game a;
    private /* synthetic */ T b;

    U(T t, Game game) {
        this.b = t;
        this.a = game;
    }

    @Override
    public final void onClick(View view) {
        am.b((Context) this.b.a, (Game) this.a);
    }
}
