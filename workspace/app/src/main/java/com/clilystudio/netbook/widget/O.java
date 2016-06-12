package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.Game;

final class O implements View$OnClickListener {

    private Game a;
    private GameLayoutItemView b;
    O(GameLayoutItemView GameLayoutItemView1, Game Game2) {
        b = GameLayoutItemView1;
        a = Game2;
    }

    public final void onClick(View View1) {
        GameLayoutItemView.a(b, b.getContext(), a);
    }
}
