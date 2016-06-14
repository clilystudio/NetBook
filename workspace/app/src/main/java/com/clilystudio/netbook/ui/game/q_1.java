package com.clilystudio.netbook.ui.game;

import android.app.Activity;

import com.clilystudio.netbook.model.GameDetail;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class q extends com.clilystudio.netbook.a_pack.e<String, Void, GameDetail> {
    private /* synthetic */ GameDetailActivity a;

    private q(GameDetailActivity gameDetailActivity) {
        this.a = gameDetailActivity;
    }

    /* synthetic */ q(GameDetailActivity gameDetailActivity, byte by) {
        this(gameDetailActivity);
    }

    private /* varargs */ GameDetail a(String... arrstring) {
        try {
            GameDetail gameDetail = com.clilystudio.netbook.api.b.b().Y(arrstring[0]);
            return gameDetail;
        } catch (IOException var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        GameDetail gameDetail = (GameDetail) object;
        super.onPostExecute(gameDetail);
        if (gameDetail != null && gameDetail.isOk() && gameDetail.getGame() != null) {
            this.a.f();
            GameDetailActivity.a(this.a, gameDetail.getGame());
            GameDetailActivity.f(this.a);
            GameDetailActivity.b(this.a, GameDetailActivity.e(this.a));
            GameDetailActivity.g(this.a);
            b.a(this.a, "game_detail_opened", GameDetailActivity.e(this.a).getName());
            if (GameDetailActivity.h(this.a)) {
                b.a(this.a, "micro_game_continue_detail", GameDetailActivity.e(this.a).getName());
                return;
            }
            b.a(this.a, "micro_game_play_detail", GameDetailActivity.e(this.a).getName());
            return;
        }
        this.a.h();
        e.a((Activity) this.a, "\u8f7d\u5165\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5");
    }
}
