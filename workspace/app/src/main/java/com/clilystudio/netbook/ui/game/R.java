package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.Game;

final class R implements View$OnClickListener {

    private Game a;
    private Q b;
    R(Q Q1, Game Game2) {
        b = Q1;
        a = Game2;
    }

    public final void onClick(View View1) {
        am.a((Context) b.a, a);
    }
}
