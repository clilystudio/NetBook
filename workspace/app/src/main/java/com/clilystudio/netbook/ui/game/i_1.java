package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.support.design.widget.am;
import android.view.View;

final class i implements View.OnClickListener {
    private /* synthetic */ GameDetailActivity a;

    i(GameDetailActivity gameDetailActivity) {
        this.a = gameDetailActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        if (GameDetailActivity.h(this.a)) {
            b.a(this.a, "micro_game_continue_click", GameDetailActivity.e(this.a).getName());
        } else {
            b.a(this.a, "micro_game_play_click", GameDetailActivity.e(this.a).getName());
        }
        am.a((Context) this.a, GameDetailActivity.e(this.a));
    }
}
