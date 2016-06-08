package com.clilystudio.netbook.ui.game;

import android.view.View;

final class i
        implements View.OnClickListener {
    i(GameDetailActivity paramGameDetailActivity) {
    }

    public final void onClick(View paramView) {
        if (GameDetailActivity.h(this.a))
            b.a(this.a, "micro_game_continue_click", GameDetailActivity.e(this.a).getName());
        while (true) {
            am.a(this.a, GameDetailActivity.e(this.a));
            return;
            b.a(this.a, "micro_game_play_click", GameDetailActivity.e(this.a).getName());
        }
    }
}

