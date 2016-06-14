package com.clilystudio.netbook.widget;

import android.content.Context;
import com.clilystudio.netbook.am;
import android.view.View;

import com.clilystudio.netbook.model.Game;

final class Q implements View.OnClickListener {
    private /* synthetic */ Game a;
    private /* synthetic */ GameMicroLayoutItemView b;

    Q(GameMicroLayoutItemView gameMicroLayoutItemView, Game game) {
        this.b = gameMicroLayoutItemView;
        this.a = game;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        if (this.b.a) {
            b.a(this.b.getContext(), "micro_game_continue_click", this.a.getName());
        } else {
            b.a(this.b.getContext(), "micro_game_play_click", this.a.getName());
        }
        am.a((Context) this.b.getContext(), (Game) this.a);
    }
}
