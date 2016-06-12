package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.game.GameDetailActivity;

final class P implements View$OnClickListener {

    private Game a;
    private GameMicroLayoutItemView b;
    P(GameMicroLayoutItemView GameMicroLayoutItemView1, Game Game2) {
        b = GameMicroLayoutItemView1;
        a = Game2;
    }

    public final void onClick(View View1) {
        b.getContext().startActivity(GameDetailActivity.a(b.getContext(), a.get_id(), true, b.a));
    }
}
