package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.util.e;

final class x implements View$OnClickListener {

    private com.clilystudio.netbook.view.a a;
    private String b;
    private GameGiftListActivity c;
    x(GameGiftListActivity GameGiftListActivity1, com.clilystudio.netbook.view.a a2, String String3) {
        c = GameGiftListActivity1;
        a = a2;
        b = String3;
    }

    public final void onClick(View View1) {
        a.dismiss();
        am.a((Context) c, b);
        e.a((Activity) c, "\u5DF2\u590D\u5236");
        if (GameGiftListActivity.b(c)) {
            am.a((Context) c, GameGiftListActivity.c(c).game);
            com.clilystudio.netbook.umeng.a.b.a((Context) c, "micro_game_play_click", GameGiftListActivity.c(c).game.getName());
        } else
            am.d((Context) c, GameGiftListActivity.c(c).game.getAndroidPackageName());
    }
}
