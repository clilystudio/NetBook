package com.clilystudio.app.netbook.ui.game;

import android.view.View;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class i
        implements View.OnClickListener {
    i(GameDetailActivity paramGameDetailActivity) {
    }

    public final void onClick(View paramView) {
        if (GameDetailActivity.h(this.a))
            b.a(this.a, "micro_game_continue_click", GameDetailActivity.d_setRight(this.a).getName());
        while (true) {
            am_CommonUtils.a_isSameString(this.a, GameDetailActivity.d_setRight(this.a));
            return;
            b.a(this.a, "micro_game_play_click", GameDetailActivity.d_setRight(this.a).getName());
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.i
 * JD-Core Version:    0.6.2
 */