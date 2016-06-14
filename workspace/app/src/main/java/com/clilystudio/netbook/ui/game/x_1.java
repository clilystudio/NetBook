package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.view.a;

final class x implements View.OnClickListener {
    private /* synthetic */ a a;
    private /* synthetic */ String b;
    private /* synthetic */ GameGiftListActivity c;

    x(GameGiftListActivity gameGiftListActivity, a a2, String string) {
        this.c = gameGiftListActivity;
        this.a = a2;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        am.a((Context) this.c, this.b);
        e.a((Activity) this.c, "\u5df2\u590d\u5236");
        if (GameGiftListActivity.b(this.c)) {
            am.a((Context) this.c, GameGiftListActivity.c((GameGiftListActivity) this.c).game);
            b.a(this.c, "micro_game_play_click", GameGiftListActivity.c((GameGiftListActivity) this.c).game.getName());
            return;
        }
        am.d(this.c, GameGiftListActivity.c((GameGiftListActivity) this.c).game.getAndroidPackageName());
    }
}
