package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.umeng.a_Pack.b;

final class Q
        implements View.OnClickListener {
    Q(GameMicroLayoutItemView paramGameMicroLayoutItemView, Game paramGame) {
    }

    public final void onClick(View paramView) {
        if (this.b.a)
            b.a(this.b.getContext(), "micro_game_continue_click", this.a.getName());
        while (true) {
            am.a(this.b.getContext(), this.a);
            return;
            b.a(this.b.getContext(), "micro_game_play_click", this.a.getName());
        }
    }
}

