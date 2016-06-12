package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.model.GameDetail;

import java.io.IOException;

final class q extends com.clilystudio.netbook.a.e {

    private GameDetailActivity a;

    q(GameDetailActivity GameDetailActivity1, byte byte2) {
        this(GameDetailActivity1);
    }

    private q(GameDetailActivity GameDetailActivity1) {
        a = GameDetailActivity1;
    }

    private transient GameDetail a(String[] String_1darray1) {
        GameDetail GameDetail3;

        try {
            GameDetail3 = com.clilystudio.netbook.api.b.b().Y(String_1darray1[0]);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
            return null;
        }
        return GameDetail3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (GameDetail) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((GameDetail) Object2).isOk() && ((GameDetail) Object2).getGame() != null) {
            a.f();
            GameDetailActivity.a(a, ((GameDetail) Object2).getGame());
            GameDetailActivity.f(a);
            GameDetailActivity.b(a, GameDetailActivity.e(a));
            GameDetailActivity.g(a);
            com.clilystudio.netbook.umeng.a.b.a((Context) a, "game_detail_opened", GameDetailActivity.e(a).getName());
            if (GameDetailActivity.h(a))
                com.clilystudio.netbook.umeng.a.b.a((Context) a, "micro_game_continue_detail", GameDetailActivity.e(a).getName());
            else
                com.clilystudio.netbook.umeng.a.b.a((Context) a, "micro_game_play_detail", GameDetailActivity.e(a).getName());
        } else {
            a.h();
            com.clilystudio.netbook.util.e.a((Activity) a, "\u8F7D\u5165\u5931\u8D25\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5");
        }
    }
}
