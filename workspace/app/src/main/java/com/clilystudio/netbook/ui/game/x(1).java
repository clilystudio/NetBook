package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.view.a;
import com.umeng.a.b;

final class x
        implements View.OnClickListener {
    x(GameGiftListActivity paramGameGiftListActivity, a parama, String paramString) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        am.a(this.c, this.b);
        e.a(this.c, "已复制");
        if (GameGiftListActivity.b(this.c)) {
            am.a(this.c, GameGiftListActivity.c(this.c).game);
            b.a(this.c, "micro_game_play_click", GameGiftListActivity.c(this.c).game.getName());
            return;
        }
        am.d(this.c, GameGiftListActivity.c(this.c).game.getAndroidPackageName());
    }
}

